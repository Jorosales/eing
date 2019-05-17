<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Carrera extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('Carrera_model');
    }

	public function index()
	{
		$data['carreras'] = $this->Carrera_model->getAllActivates();
		
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

}

?>
