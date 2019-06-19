<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Carrera extends MX_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('Carrera_model');
		$this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->helper(array('language'));
        $this->lang->load('auth');
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

		if (count($data['plan']) == 0){
            $data['alerta'] = lang('undefined_plan');
            $data['_view'] = '404';
			$this->load->view('layouts/main',$data);
        }
        else{
            if (isset($mensaje)) {
                $data['alerta'] = $mensaje;
            }
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


	public function carrera_completa($id_carrera)
    {        
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            
            $data['carrera'] = $this->Carrera_model->get_carrera_completa($id_carrera);
            $data['user'] = $this->ion_auth->user()->row();
            
            if (count($data['carrera']['data']) == 0){
                $data['alerta'] = lang('undefined_plan');
                $this->template->cargar_vista('abm/404', $data);
            }
            else{

                if (isset($mensaje)) {
                    $data['alerta'] = $mensaje;
                }
                $this->template->cargar_vista('abm/carrera/carrera_completa', $data);
            }            
        }
    }

}

?>
