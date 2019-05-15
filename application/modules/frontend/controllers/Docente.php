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
		//Se carga el head y barra
		$this->load->view('head');
		$this->load->view('nav');

		//Se obtienen datos del modelo
		$data['listado'] = $this->Docente_model->datosLista();

		//Se cargan datos en la vista
		$this->load->view('pages/docentesList', $data);
		$this->load->view('footer');
	}

	public function verDocente($idDocente)
	{
		$this->load->helper('html');
		$this->load->view('head');
		$this->load->view('nav');
		
		//Se obtienen datos del modelo
		$data['docente'] = $this->Docente_model->getPerfil($idDocente);

		//Se cargan datos en la vista
		$this->load->view('pages/docenteView', $data);
		$this->load->view('footer');
	}

}

?>
