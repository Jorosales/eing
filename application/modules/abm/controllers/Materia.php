<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Materia extends MX_Controller {

	function __construct(){
		parent::__construct();
        $this->load->module('template');
        $this->load->model('Materia_model');
        $this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->library(array('ion_auth', 'form_validation'));
        $this->load->helper(array('language'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
        $this->lang->load('auth');
    }

    function index()
    {
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            $params = $this->template->get_params();
            $config = $this->template->get_config('abm/materia/index?', $this->Materia_model->get_all_materias_count());
            $this->pagination->initialize($config);

            $data['materias'] = $this->Materia_model->get_all_materias($params); 
            $data['user'] = $this->ion_auth->user()->row();

            $this->template->cargar_vista('abm/materia/index', $data);
        }

    }

    /*
     * Adding a new materia
     */
    function add()
    {   
        $this->load->library('form_validation');

		$this->form_validation->set_rules('id_tipo','Id Tipo','required');
		$this->form_validation->set_rules('nombre','Nombre','required');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'id_tipo' => $this->input->post('id_tipo'),
				'nombre' => $this->input->post('nombre'),
            );
            
            $materia_id = $this->Materia_model->add_materia($params);
            redirect('abm/materia/index');
        }
        else
        {
			$this->load->model('Materias_tipo_model');
			$data['all_materias_tipo'] = $this->Materias_tipo_model->get_all_materias_tipo();
            $data['user'] = $this->ion_auth->user()->row();
        
            $this->template->cargar_vista('abm/materia/add', $data);
        }
    }  

    /*
     * Editing a materia
     */
    function edit($id)
    {   
        // check if the materia exists before trying to edit it
        $data['materia'] = $this->Materia_model->get_materia($id);
        
        if(isset($data['materia']['id']))
        {
            $this->load->library('form_validation');

			$this->form_validation->set_rules('id_tipo','Id Tipo','required');
			$this->form_validation->set_rules('nombre','Nombre','required');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'id_tipo' => $this->input->post('id_tipo'),
					'nombre' => $this->input->post('nombre'),
                );

                $this->Materia_model->update_materia($id,$params);            
                redirect('abm/materia/index');
            }
            else
            {
				$this->load->model('Materias_tipo_model');
				$data['all_materias_tipo'] = $this->Materias_tipo_model->get_all_materias_tipo();
                $data['user'] = $this->ion_auth->user()->row();
        
                $this->template->cargar_vista('abm/materia/edit', $data);
            }
        }
        else
            show_error('The materia you are trying to edit does not exist.');
    } 

    /*
     * Deleting materia
     */
    function remove($id)
    {
        $materia = $this->Materia_model->get_materia($id);

        // check if the materia exists before trying to delete it
        if(isset($materia['id']))
        {
            $this->Materia_model->delete_materia($id);
            redirect('abm/materia/index');
        }
        else
            show_error('The materia you are trying to delete does not exist.');
    }
	
}

?>
