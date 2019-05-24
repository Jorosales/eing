<?php
 
class Ciclo extends MX_Controller{
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
    function index()
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

            $this->template->cargar_vista('abm/ciclo/index', $data);
        }
    }

    /*
     * Adding a new ciclo
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
				'id_orientacion' => $this->input->post('id_orientacion'),
				'nombre' => $this->input->post('nombre'),
            );
            
            $ciclo_id = $this->Ciclo_model->add_ciclo($params);
            redirect('abm/ciclo/index');
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

			$this->form_validation->set_rules('nombre','Nombre','required');
			$this->form_validation->set_rules('id_plan','Id Plan','required');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'id_plan' => $this->input->post('id_plan'),
					'id_orientacion' => $this->input->post('id_orientacion'),
					'nombre' => $this->input->post('nombre'),
                );

                $this->Ciclo_model->update_ciclo($id,$params);            
                redirect('ciclo/index');
            }
            else
            {
				$this->load->model('Planes_model');
				$data['all_planes'] = $this->Planes_model->get_all_planes();

				$this->load->model('Orientaciones_model');
				$data['all_orientaciones'] = $this->Orientaciones_model->get_all_orientaciones();

                $data['_view'] = 'abm/ciclo/edit';
                $this->load->view('layouts/main',$data);
            }
        }
        else
            show_error('The ciclo you are trying to edit does not exist.');
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
            $this->Ciclo_model->delete_ciclo($id);
            redirect('abm/ciclo/index');
        }
        else
            show_error('The ciclo you are trying to delete does not exist.');
    }
    
}
