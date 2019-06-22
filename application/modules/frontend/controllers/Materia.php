<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Materia extends CI_Controller {

	function __construct(){
		parent::__construct();
        $this->load->helper('url');
		$this->load->model('Materia_model');
    }


	public function verMateria($idMateria)
	{
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

		$data['_view'] = 'pages/materiaView';
		$this->load->view('layouts/main',$data);
	}
	
}

?>
