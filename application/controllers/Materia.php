<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Materia extends CI_Controller {

	function __construct(){
		parent::__construct();
        $this->load->helper('url');
		$this->load->model('Materia_model');
    }


	public function verMateria($idMateria)
	{
		$this->load->view('head');
		$this->load->view('nav');
		
		//Se obtienen datos del modelo
		$data['materia'] = $this->Materia_model->getMateria($idMateria);
		
		if($data['materia'][0]->id_tipo == '2')
		{
			$data['optativas'] = $this->Materia_model->getOptativas($idMateria);
		}
		else
		{
			$data['pr'] = $this->Materia_model->getProgramaResumido($idMateria);
			$data['equipo'] = $this->Materia_model->getEquipo($idMateria);

			$data['regulCursar'] = $this->Materia_model->getCorrelatividades($idMateria, 1);
			$data['aprobadaCursar'] = $this->Materia_model->getCorrelatividades($idMateria, 2);
			$data['aprobadaRendir'] = $this->Materia_model->getCorrelatividades($idMateria, 3);	
		}

		//Se cargan datos en la vista
		$this->load->view('pages/materiaView', $data);
		$this->load->view('footer');
	}

	function index()
    {
        $params['limit'] = RECORDS_PER_PAGE; 
        $params['offset'] = ($this->input->get('per_page')) ? $this->input->get('per_page') : 0;
        
        $config = $this->config->item('pagination');
        $config['base_url'] = site_url('materia/index?');
        $config['total_rows'] = $this->Materia_model->get_all_materias_count();
        $config['attributes'] = array('class' => 'page-link');
        $this->pagination->initialize($config);

        $data['materias'] = $this->Materia_model->get_all_materias($params);
        
        $data['_view'] = 'abm/materia/index';
        $this->load->view('layouts/main',$data);
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
            redirect('materia/index');
        }
        else
        {
			$this->load->model('Materias_tipo_model');
			$data['all_materias_tipo'] = $this->Materias_tipo_model->get_all_materias_tipo();
            
            $data['_view'] = 'abm/materia/add';
            $this->load->view('layouts/main',$data);
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
                redirect('materia/index');
            }
            else
            {
				$this->load->model('Materias_tipo_model');
				$data['all_materias_tipo'] = $this->Materias_tipo_model->get_all_materias_tipo();

                $data['_view'] = 'abm/materia/edit';
                $this->load->view('layouts/main',$data);
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
            redirect('materia/index');
        }
        else
            show_error('The materia you are trying to delete does not exist.');
    }
	
}

?>
