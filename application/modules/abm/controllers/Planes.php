<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Planes extends MX_Controller{

    public $name = 'El plan';
    function __construct()
    {
        parent::__construct();
        $this->load->module('template');
        $this->load->model('Planes_model');
        $this->load->model('Carrera_model');
        $this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->library(array('ion_auth', 'form_validation'));
        $this->load->helper(array('language'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
    } 

    /*
     * Listing of planes
     */
    function index($mensaje=null)
    {
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            $data['planes'] = $this->Planes_model->get_all_planes();
            $data['user'] = $this->ion_auth->user()->row();
            
            if (isset($mensaje)) {
                $data['alerta'] = $mensaje;
            }
            
            $this->template->cargar_vista('abm/planes/index', $data);
        }
    }

    /*
     * Adding a new planes
     */
    function add()
    {   
        $this->form_validation->set_rules('nombre',lang('form_name'),'required');
		$this->form_validation->set_rules('duracion',lang('form_duration'),'required|integer');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'id_carrera' => $this->input->post('id_carrera'),
                'nombre' => $this->input->post('nombre'),
				'duracion' => $this->input->post('duracion'),
            );
            
            if ($this->Planes_model->add_planes($params))
                    $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                sprintf(lang('record_add_success_text'), $this->name));    
            else   
                    $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                sprintf(lang('record_add_error_text'), $this->name)); 
                    
            $this->index($mensaje);
        }
        else
        {
			$data['carreras'] = $this->Carrera_model->get_all_carrera();
            
            $this->template->cargar_vista('abm/planes/add', $data);
        }
    }  

    /*
     * Editing a planes
     */
    function edit($id)
    {   
        $data['plan'] = $this->Planes_model->get_planes($id);
        
        if(isset($data['plan']['id']))
        {

            $this->form_validation->set_rules('nombre',lang('form_name'),'required');
            $this->form_validation->set_rules('duracion',lang('form_duration'),'required|integer');

		
			if($this->form_validation->run())     
            {   
                $params = array(
					'id_carrera' => $this->input->post('id_carrera'),
					'nombre' => $this->input->post('nombre'),
                    'duracion' => $this->input->post('duracion'),
                );
            
                if ($this->Planes_model->update_planes($id,$params))
                    $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                    sprintf(lang('record_edit_success_text'), $this->name));    
                else   
                    $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                    sprintf(lang('record_edit_error_text'), $this->name));    
                    
                $this->index($mensaje);
            }
            else
            {
				$data['carreras'] = $this->Carrera_model->get_all_carrera();
                $this->template->cargar_vista('abm/planes/edit', $data);
            }
        }
        else
            show_error(sprintf(lang('no_existe'), $this->name));
    } 

    /*
     * Deleting planes
     */
    function remove($id)
    {
        $plane = $this->Planes_model->get_planes($id);

        if(isset($plane['id']))
        {
            if ($this->Planes_model->delete_planes($id))
                $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                sprintf(lang('record_remove_success_text'), $this->name));    
            else   
                $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                sprintf(lang('record_remove_error_text'), $this->name));    
                
            $this->index($mensaje);
        }
        else
            show_error(sprintf(lang('no_existe'), $this->name));
    }

    public function activate($id, $code = FALSE)
    {
        if ($this->ion_auth->is_admin())
        {
            $cantidad = $this->Planes_model->existe_plan_carrera($id);
            if($cantidad[0]->cantidad == 1){
                $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                sprintf(lang('plan_activate_error'), $this->name));
            }else{
                $update['vigente']= true;
                $this->Planes_model->change_status($id, $update);
                $mensaje = $this->template->cargar_alerta('success', lang('record_success'),
                                sprintf(lang('plan_activate_success'), $this->name));
            }

            $this->index($mensaje);   
        }
    }


    public function deactivate($id = NULL)
    {
        if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin())
            return show_error('You must be an administrator to view this page.');

        $id = (int)$id;

        $this->load->library('form_validation');
        $this->form_validation->set_rules('confirm', $this->lang->line('deactivate_validation_confirm_label'), 'required');
        $this->form_validation->set_rules('id', $this->lang->line('deactivate_validation_user_id_label'), 'required|alpha_numeric');

        if ($this->form_validation->run() === FALSE)
        {
            $data['planes'] = $this->Planes_model->get_planes($id);
            $data['user'] = $this->ion_auth->user()->row();
            $this->template->cargar_vista('abm/planes/deactivate_plan', $data);
        }
        else
        {
            // do we really want to deactivate?
            if ($this->input->post('confirm') == 'yes')
            {
                // do we have a valid request?
                if ($id != $this->input->post('id'))
                {
                    return show_error($this->lang->line('error_csrf'));
                }

                // do we have the right userlevel?
                if ($this->ion_auth->logged_in() && $this->ion_auth->is_admin())
                {
                    $params['vigente']= false; 
                    if ($this->Planes_model->change_status($id, $params))
                        $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                        sprintf(lang('plan_deactivate_success'), $this->name));    
                    else   
                        $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                        sprintf(lang('plan_deactivate__error'), $this->name));    

                    $this->index($mensaje);
                }
            }else{
                // redirect them back to the auth page
                redirect('abm/planes/', 'refresh');
            }
        }
    }
    
}
