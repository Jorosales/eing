<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Docente extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library(array('session'));
        $this->load->helper('url');
		$this->load->library('table');
		$this->load->model('Docente_model');
	}

	public function index()
	{	
		$data['listado'] = $this->Docente_model->datosLista();

		$data['_view'] = 'pages/docentesList';
		$this->load->view('layouts/main',$data);
	}

	public function verDocente($idDocente)
	{
		$data['docente'] = $this->Docente_model->getPerfil($idDocente);

		$data['_view'] = 'pages/docenteView';
		$this->load->view('layouts/main',$data);
	}

}

?>
