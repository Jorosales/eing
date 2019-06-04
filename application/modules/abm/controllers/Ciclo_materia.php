<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Ciclo_materia extends MX_Controller{

    public $name = 'El ciclo-materia';
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
    function index($mensaje=null)
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
            if (isset($mensaje)) {
                $data['alerta'] = $mensaje;
            }

            $this->template->cargar_vista('abm/ciclo_materia/index', $data);
        }
    }

    /*
     * Adding a new ciclo_materia
     */
    function add()
    {   
        $this->load->library('form_validation');

		$this->form_validation->set_rules('anio','Año','integer|required');
		$this->form_validation->set_rules('horas','Horas','integer');
		$this->form_validation->set_rules('hs_total','Horas Total','integer');
		$this->form_validation->set_rules('id_ciclo','Ciclo','required');
		$this->form_validation->set_rules('id_materia','Materia','required');
		$this->form_validation->set_rules('id_regimen','Regimén','required');
		
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
            
            if ($this->Ciclo_materia_model->add_ciclo_materia($params))
                    $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                sprintf(lang('record_add_success_text'), $this->name));    
            else   
                    $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                sprintf(lang('record_add_error_text'), $this->name)); 
                    
            $this->index($mensaje);
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

			$this->form_validation->set_rules('anio','Año','integer|required');
			$this->form_validation->set_rules('codigo','Codigo','alpha_numeric');
			$this->form_validation->set_rules('horas','Horas','numeric');
			$this->form_validation->set_rules('hs_total','Hs Total','numeric');
			$this->form_validation->set_rules('id_ciclo','Ciclo','required');
			$this->form_validation->set_rules('id_materia','Materia','required');
			$this->form_validation->set_rules('id_regimen','Regimen','required');
            $this->form_validation->set_rules('programa','Programa','callback_pdf_file_check[programa]');
		
			if($this->form_validation->run($this))     
            {   
                $params = array(
					'id_ciclo' => $this->input->post('id_ciclo'),
					'id_materia' => $this->input->post('id_materia'),
					'id_regimen' => $this->input->post('id_regimen'),
					'horas' => $this->input->post('horas'),
					'hs_total' => $this->input->post('hs_total'),
					//'programa' => $this->input->post('programa'),
					'anio' => $this->input->post('anio'),
					'codigo' => $this->input->post('codigo'),
                );

                if($_FILES['programa']['name'] != ''){
                    $pdf = $this->template->subir_archivo(PDFS_UPLOAD.'programas', 'pdf', 'programa');
                    $params['programa'] = $pdf['file_name'];
                }

                if ($this->Ciclo_materia_model->update_ciclo_materia($id,$params))
                    $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                    sprintf(lang('record_edit_success_text'), $this->name));    
                else   
                    $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                    sprintf(lang('record_edit_error_text'), $this->name));    
                    
                $this->index($mensaje);
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
            show_error(sprintf(lang('no_existe'), $this->name));
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
            if ($this->Ciclo_materia_model->delete_ciclo_materia($id))
                    $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                sprintf(lang('record_remove_success_text'), $this->name));    
            else   
                    $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                sprintf(lang('record_remove_error_text'), $this->name));    
                
            $this->index($mensaje);
        }
        else
            show_error(sprintf(lang('no_existe'), $this->name));
    }


    public function pdf_file_check($str, $nombre)
    {
        return $this->template->pdf_file_check($str, $nombre);
    }
    
}
