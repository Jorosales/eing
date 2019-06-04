<?php
 
class Ciclo extends MX_Controller{
    public $name = 'El ciclo';

    function __construct()
    {
        parent::__construct();
        $this->load->module('template');
        $this->load->model('Ciclo_model');
        $this->load->model('Planes_model');
        $this->load->model('Orientaciones_model');
        $this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->library(array('ion_auth', 'form_validation'));
        $this->load->helper(array('language'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
    } 

    /*
     * Listing of ciclos
     */
    function index($mensaje=null)
    {
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            $params = $this->template->get_params();
            $config = $this->template->get_config('abm/ciclo/index?', $this->Ciclo_model->get_all_ciclos_count($params));
            $this->pagination->initialize($config);

            $data['ciclos'] = $this->Ciclo_model->get_all_ciclos($params);
            $data['user'] = $this->ion_auth->user()->row();
            
            if (isset($mensaje)) {
                $data['alerta'] = $mensaje;
            }

            $this->template->cargar_vista('abm/ciclo/index', $data);
        }
    }

    /*
     * Adding a new ciclo
     */
    function add()
    {   
        $this->load->library('form_validation');

		$this->form_validation->set_rules('nombre',lang('form_name'),'required');
		$this->form_validation->set_rules('id_plan',lang('form_plan'),'required');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'id_plan' => $this->input->post('id_plan'),
				'id_orientacion' => $this->input->post('id_orientacion'),
				'nombre' => $this->input->post('nombre'),
            );
            
            if ($this->Ciclo_model->add_ciclo($params))
                    $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                sprintf(lang('record_add_success_text'), $this->name));    
            else   
                    $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                sprintf(lang('record_add_error_text'), $this->name)); 
                    
            $this->index($mensaje);
        }
        else
        {
            $data['user'] = $this->ion_auth->user()->row();
            $data['planes'] = $this->Planes_model->get_all_planes();
            $data['orientaciones'] = $this->Orientaciones_model->get_all_orientaciones();
            
            $this->template->cargar_vista('abm/ciclo/add', $data);
        } 
    }  

    /*
     * Editing a ciclo
     */
    function edit($id)
    {   
        // check if the ciclo exists before trying to edit it
        $data['ciclo'] = $this->Ciclo_model->get_ciclo($id);
        
        if(isset($data['ciclo']['id']))
        {
            $this->load->library('form_validation');

			$this->form_validation->set_rules('nombre',lang('form_name'),'required');
			$this->form_validation->set_rules('id_plan',lang('form_plan'),'required');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'id_plan' => $this->input->post('id_plan'),
					'id_orientacion' => $this->input->post('id_orientacion'),
					'nombre' => $this->input->post('nombre'),
                );

                if ($this->Ciclo_model->update_ciclo($id,$params))
                    $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                    sprintf(lang('record_edit_success_text'), $this->name));    
                else   
                        $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                    sprintf(lang('record_edit_error_text'), $this->name));    
                    
                $this->index($mensaje);
            }
            else
            {
                $data['user'] = $this->ion_auth->user()->row();
				$data['planes'] = $this->Planes_model->get_all_planes();
				$data['orientaciones'] = $this->Orientaciones_model->get_all_orientaciones(); 

                $this->template->cargar_vista('abm/ciclo/edit', $data);
            }
        }
        else
            show_error(sprintf(lang('no_existe'), $this->name));
    } 

    /*
     * Deleting ciclo
     */
    function remove($id)
    {
        $ciclo = $this->Ciclo_model->get_ciclo($id);

        // check if the ciclo exists before trying to delete it
        if(isset($ciclo['id']))
        {
            if ($this->Ciclo_model->delete_ciclo($id))
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
    
}
