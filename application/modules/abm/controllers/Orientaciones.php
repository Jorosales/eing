<?php

class Orientaciones extends MX_Controller{
    public $name = 'La orientación';
    function __construct()
    {
        parent::__construct();    
        $this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->library(array('ion_auth', 'form_validation'));
        
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            $this->load->module('template');
            $this->load->model('Orientaciones_model');
            $this->load->model('Planes_model');
            $this->load->helper(array('language'));
            $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
            $this->lang->load('auth');
        }
    } 

    /*
     * Listing of orientaciones
     */
    function index($id_carrera, $mensaje=null)
    {
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            $data['orientaciones'] = $this->Orientaciones_model->get_all_orientaciones_by_carrera($id_carrera);
            $data['user'] = $this->ion_auth->user()->row();
            if (isset($mensaje)) {
                $data['alerta'] = $mensaje;
            }
            $this->template->cargar_vista('abm/orientaciones/index', $data);
        }
    }

    /*
     * Adding a new orientacione
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
				'nombre' => $this->input->post('nombre'),
            );

            if ($this->Orientaciones_model->add_orientaciones($params))
                    $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                sprintf(lang('record_add_success_text'), $this->name));    
            else   
                    $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                sprintf(lang('record_add_error_text'), $this->name)); 
                    
            //$this->index($mensaje);
            $c = $this->Planes_model->get_carrera_by_plan($this->input->post('id_plan'));
            $this->index($c->id_carrera, $mensaje);
        }
        else
        {
            $data['user'] = $this->ion_auth->user()->row();
            $data['planes'] = $this->Planes_model->get_all_planes();
            
            $this->template->cargar_vista('abm/orientaciones/add', $data);
        }
    }  

    /*
     * Editing a orientaciones
     */
    function edit($id)
    {   
        // check if the orientacione exists before trying to edit it
        $data['orientaciones'] = $this->Orientaciones_model->get_orientaciones($id);
        
        if(isset($data['orientaciones']['id']))
        {
            $this->form_validation->set_rules('nombre',lang('form_name'),'required');
            $this->form_validation->set_rules('id_plan',lang('form_plan'),'required');
        
			if($this->form_validation->run())     
            {   
                $params = array(
					'id_plan' => $this->input->post('id_plan'),
					'nombre' => $this->input->post('nombre'),
                );
   

                if ($this->Orientaciones_model->update_orientaciones($id,$params))
                    $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                    sprintf(lang('record_edit_success_text'), $this->name));    
                else   
                    $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                    sprintf(lang('record_edit_error_text'), $this->name));    
                    
                //$this->index($mensaje);
                $c = $this->Planes_model->get_carrera_by_plan($this->input->post('id_plan'));
                $this->index($c->id_carrera, $mensaje);
            }
            else
            {
				$data['user'] = $this->ion_auth->user()->row();
                $data['planes'] = $this->Planes_model->get_all_planes(); 
                
                $this->template->cargar_vista('abm/orientaciones/edit', $data);
            }
        }
        else
            show_error(sprintf(lang('no_existe'), $this->name));
    } 

    /*
     * Deleting orientaciones
     */
    function remove($id)
    {
        $orientaciones = $this->Orientaciones_model->get_orientaciones($id);

        if(isset($orientaciones['id']))
        {
            if ($this->Orientaciones_model->delete_orientaciones($id))
                $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                sprintf(lang('record_remove_success_text'), $this->name));    
            else   
                $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                sprintf(lang('record_remove_error_text'), $this->name));    
                
            $c = $this->Planes_model->get_carrera_by_plan($orientaciones['id_plan']);
            $this->index($c->id_carrera, $mensaje);
        }
        else
            show_error(sprintf(lang('no_existe'), $this->name));
    }

    function fetch_orientaciones()
    {
        if($this->input->post('plan_id'))
        {
            echo $this->Orientaciones_model->fetch_orientaciones_by_plan($this->input->post('plan_id'));
        }
    }
    
}
