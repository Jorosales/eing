<?php

class Orientaciones extends MX_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->module('template');
        $this->load->model('Orientaciones_model');
        $this->load->model('Planes_model');
        $this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->library(array('ion_auth', 'form_validation'));
        $this->load->helper(array('language'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
    } 

    /*
     * Listing of orientaciones
     */
    function index()
    {
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            $params = $this->template->get_params();
            $config = $this->template->get_config('abm/orientaciones/index?', $this->Orientaciones_model->get_all_orientaciones_count($params));
            $this->pagination->initialize($config);

            $data['orientaciones'] = $this->Orientaciones_model->get_all_orientaciones($params);
            $data['user'] = $this->ion_auth->user()->row();

            $this->template->cargar_vista('abm/orientaciones/index', $data);
        }
    }

    /*
     * Adding a new orientacione
     */
    function add()
    {   
        $this->load->library('form_validation');

		$this->form_validation->set_rules('nombre','Nombre','required');
		$this->form_validation->set_rules('id_plan','Id Plan','required');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'id_plan' => $this->input->post('id_plan'),
				'nombre' => $this->input->post('nombre'),
            );
            
            $Orientaciones_id = $this->Orientaciones_model->add_orientaciones($params);
            redirect('abm/orientaciones/index');
        }
        else
        {
            $data['user'] = $this->ion_auth->user()->row();
            $data['planes'] = $this->Planes_model->get_all_planes();
            
            $this->template->cargar_vista('abm/orientaciones/add', $data);
        }
    }  

    /*
     * Editing a orientacione
     */
    function edit($id)
    {   
        // check if the orientacione exists before trying to edit it
        $data['orientaciones'] = $this->Orientaciones_model->get_orientaciones($id);
        
        if(isset($data['orientaciones']['id']))
        {
            $this->load->library('form_validation');

			$this->form_validation->set_rules('nombre','Nombre','required');
			$this->form_validation->set_rules('id_plan','Id Plan','required');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'id_plan' => $this->input->post('id_plan'),
					'nombre' => $this->input->post('nombre'),
                );

                $this->Orientaciones_model->update_orientaciones($id,$params);            
                redirect('abm/orientaciones/index');
            }
            else
            {
				$data['user'] = $this->ion_auth->user()->row();
                $data['planes'] = $this->Planes_model->get_all_planes(); 
                
                $this->template->cargar_vista('abm/orientaciones/edit', $data);
            }
        }
        else
            show_error('The orientaciones you are trying to edit does not exist.');
    } 

    /*
     * Deleting orientaciones
     */
    function remove($id)
    {
        $orientaciones = $this->Orientaciones_model->get_orientaciones($id);

        // check if the orientacione exists before trying to delete it
        if(isset($orientaciones['id']))
        {
            $this->Orientaciones_model->delete_orientaciones($id);
            redirect('abm/orientaciones/index');
        }
        else
            show_error('The orientaciones you are trying to delete does not exist.');
    }
    
}
