<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Ciclo_materia extends MX_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->module('template');
        $this->load->model('Ciclo_materia_model');
        $this->load->model('Ciclo_model');
        $this->load->model('Materia_model');
        $this->load->model('Regimen_model');
        $this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->library(array('ion_auth', 'form_validation'));
        $this->load->helper(array('language'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
    } 

    /*
     * Listing of ciclo_materia
     */
    function index()
    {
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            $params = $this->template->get_params();
            $config = $this->template->get_config('abm/ciclo_materia/index?', $this->Ciclo_materia_model->get_all_ciclo_materia_count($params));
            $this->pagination->initialize($config);

            $data['ciclo_materia'] = $this->Ciclo_materia_model->get_all_ciclo_materia($params);
            $data['user'] = $this->ion_auth->user()->row();

            $this->template->cargar_vista('abm/ciclo_materia/index', $data);
        }
    }

    /*
     * Adding a new ciclo_materia
     */
    function add()
    {   
        $this->load->library('form_validation');

		$this->form_validation->set_rules('anio','Anio','integer|required');
		$this->form_validation->set_rules('horas','Horas','numeric');
		$this->form_validation->set_rules('hs_total','Hs Total','numeric');
		$this->form_validation->set_rules('id_ciclo','Id Ciclo','required');
		$this->form_validation->set_rules('id_materia','Id Materia','required');
		$this->form_validation->set_rules('id_regimen','Id Regimen','required');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'id_ciclo' => $this->input->post('id_ciclo'),
				'id_materia' => $this->input->post('id_materia'),
				'id_regimen' => $this->input->post('id_regimen'),
				'horas' => $this->input->post('horas'),
				'hs_total' => $this->input->post('hs_total'),
				'programa' => $this->input->post('programa'),
				'anio' => $this->input->post('anio'),
				'codigo' => $this->input->post('codigo'),
            );
            
            $ciclo_materia_id = $this->Ciclo_materia_model->add_ciclo_materia($params);
            redirect('abm/ciclo_materia/index');
        }
        else
        {
            $data['user'] = $this->ion_auth->user()->row();
            $data['ciclos'] = $this->Ciclo_model->get_all_ciclos();
            $data['materias'] = $this->Materia_model->get_all_materias_en_ciclos();
            $data['regimenes'] = $this->Regimen_model->get_all_regimen();
            
            $this->template->cargar_vista('abm/ciclo_materia/add', $data);
        }

    }  

    /*
     * Editing a ciclo_materia
     */
    function edit($id)
    {   
        // check if the ciclo_materia exists before trying to edit it
        $data['ciclo_materia'] = $this->Ciclo_materia_model->get_ciclo_materia($id);
        
        if(isset($data['ciclo_materia']['id']))
        {
            $this->load->library('form_validation');

			$this->form_validation->set_rules('anio','Anio','integer|required');
			$this->form_validation->set_rules('codigo','Codigo','alpha_numeric');
			$this->form_validation->set_rules('horas','Horas','numeric');
			$this->form_validation->set_rules('hs_total','Hs Total','numeric');
			$this->form_validation->set_rules('id_ciclo','Id Ciclo','required');
			$this->form_validation->set_rules('id_materia','Id Materia','required');
			$this->form_validation->set_rules('id_regimen','Id Regimen','required');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'id_ciclo' => $this->input->post('id_ciclo'),
					'id_materia' => $this->input->post('id_materia'),
					'id_regimen' => $this->input->post('id_regimen'),
					'horas' => $this->input->post('horas'),
					'hs_total' => $this->input->post('hs_total'),
					'programa' => $this->input->post('programa'),
					'anio' => $this->input->post('anio'),
					'codigo' => $this->input->post('codigo'),
                );

                $this->Ciclo_materia_model->update_ciclo_materia($id,$params);            
                redirect('abm/ciclo_materia/index');
            }
            else
            {
                $data['user'] = $this->ion_auth->user()->row();
				$data['ciclos'] = $this->Ciclo_model->get_all_ciclos();
				$data['materias'] = $this->Materia_model->get_all_materias();
				$data['regimenes'] = $this->Regimen_model->get_all_regimen();

                $this->template->cargar_vista('abm/ciclo_materia/edit', $data);
            }
        }
        else
            show_error('El ciclo_materia que está tratando de editar no existe.');
    } 

    /*
     * Deleting ciclo_materia
     */
    function remove($id)
    {
        $ciclo_materia = $this->Ciclo_materia_model->get_ciclo_materia($id);

        // check if the ciclo_materia exists before trying to delete it
        if(isset($ciclo_materia['id']))
        {
            $this->Ciclo_materia_model->delete_ciclo_materia($id);
            redirect('abm/ciclo_materia/index');
        }
        else
            show_error('El ciclo_materia que está tratando de eliminar no existe.');
    }
    
}
