<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Carrera extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->database(); 
		$this->load->model('Carrera_model');
    }

	public function index()
	{
		$data['carreras'] = $this->Carrera_model->getAll();
		
		$data['_view'] = 'pages/index_carrera';
		$this->load->view('layouts/main',$data);
	}

	public function verCarrera($idCarrera)
	{
		$data['carrera'] = $this->Carrera_model->getCarrera($idCarrera);
		$data['plan'] = $this->Carrera_model->getPlan($idCarrera);	
		$data['orientaciones'] = $this->Carrera_model->getOrientaciones($data['plan'][0]->id);
		
		if(!empty($data['orientaciones']))
		{
			foreach ($data['orientaciones'] as $orientacion)
			{
				$data['orientacion'][$orientacion->id] = $this->Carrera_model->getPlanPorOrientacion($orientacion->id);
			}
		}

		$data['_view'] = 'pages/carreraView';
		$this->load->view('layouts/main',$data);
	}


	function consultar_carrera()
    {
        $params['limit'] = RECORDS_PER_PAGE; 
        $params['offset'] = ($this->input->get('per_page')) ? $this->input->get('per_page') : 0;
        
        $config = $this->config->item('pagination');
        $config['base_url'] = site_url('carrera/index?');
        $config['total_rows'] = $this->Carrera_model->get_all_carrera_count();
        $this->pagination->initialize($config);

        $data['carrera'] = $this->Carrera_model->get_all_carrera($params);
        
        $data['_view'] = 'abm/carrera/index';
        $this->load->view('layouts/main',$data);
    }

    /*
     * Adding a new carrera
     */
    function add()
    {   
        $this->load->library('form_validation');

		$this->form_validation->set_rules('nombre','Nombre','required');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'nombre' => $this->input->post('nombre'),
				'plan_pdf' => $this->input->post('plan_pdf'),
				'imagen' => $this->input->post('imagen'),
				'presentacion' => $this->input->post('presentacion'),
				'perfil' => $this->input->post('perfil'),
            );
            
            $carrera_id = $this->Carrera_model->add_carrera($params);
            redirect('carrera/consultar_carrera');
        }
        else
        {            
            $data['_view'] = 'abm/carrera/add';
            $this->load->view('layouts/main',$data);
        }
    }  

    /*
     * Editing a carrera
     */
    function edit($id)
    {   
        // check if the carrera exists before trying to edit it
        $data['carrera'] = $this->Carrera_model->get_carrera($id);
        
        if(isset($data['carrera']['id']))
        {
            $this->load->library('form_validation');

			$this->form_validation->set_rules('nombre','Nombre','required');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'nombre' => $this->input->post('nombre'),
					'plan_pdf' => $this->input->post('plan_pdf'),
					'imagen' => $this->input->post('imagen'),
					'presentacion' => $this->input->post('presentacion'),
					'perfil' => $this->input->post('perfil'),
                );

                $this->Carrera_model->update_carrera($id,$params);            
                redirect('carrera/consultar_carrera');
            }
            else
            {
                $data['_view'] = 'abm/carrera/edit';
                $this->load->view('layouts/main',$data);
            }
        }
        else
            show_error('The carrera you are trying to edit does not exist.');
    } 

    /*
     * Deleting carrera
     */
    function remove($id)
    {
        $carrera = $this->Carrera_model->get_carrera($id);

        // check if the carrera exists before trying to delete it
        if(isset($carrera['id']))
        {
            $this->Carrera_model->delete_carrera($id);
            redirect('carrera/index');
        }
        else
            show_error('The carrera you are trying to delete does not exist.');
    }


}

?>
