<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Carrera extends MX_Controller {

	function __construct(){
		parent::__construct();
        $this->load->module('template');
        $this->load->model('Carrera_model');
        $this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->library(array('ion_auth', 'form_validation'));
        $this->load->helper(array('language'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
    }

	function index()
    {
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            $params = $this->template->get_params();
            $config = $this->template->get_config('abm/carrera/index?', $this->Carrera_model->get_all_carrera_count());
            $this->pagination->initialize($config);

            $data['carrera'] = $this->Carrera_model->get_all_carrera($params);
            $data['user'] = $this->ion_auth->user()->row();

            $this->template->cargar_vista('abm/carrera/index', $data);
        }
    }

    /*
     * Adding a new carrera
     */
    function add()
    {   
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {

            $this->load->library('form_validation');
            $this->form_validation->set_rules('nombre','Nombre','required');
            
            if($this->form_validation->run())     
            {   
                
                if(!empty($_FILES['plan_pdf']['name']))
                    $pdf = $this->template->subir_archivo(PDFS_UPLOAD, '*', 'plan_pdf');

                if(!empty($_FILES['imagen']['name']))
                    $imagen = $this->template->subir_archivo(IMAGES_UPLOAD, 'jpg|png', 'imagen');

                $params = array(
                    'nombre' => $this->input->post('nombre'),
                    'presentacion' => $this->input->post('presentacion'),
                    'perfil' => $this->input->post('perfil'),
                );

                if(!empty($_FILES['plan_pdf']['name']))
                        $params['plan_pdf']= $pdf['file_name'];

                if(!empty($_FILES['imagen']['name']))
                    $params['imagen']= $imagen['file_name'];
                
                $carrera_id = $this->Carrera_model->add_carrera($params);
                redirect('abm/carrera/');
            }
            else
            {            
                $data['user'] = $this->ion_auth->user()->row();

                $this->template->cargar_vista('abm/carrera/add', $data);
            }
        }
    }  

    /*
     * Editing a carrera
     */
    function edit($id)
    {   
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            // check if the carrera exists before trying to edit it
            $data['carrera'] = $this->Carrera_model->get_carrera($id);
            
            if(isset($data['carrera']['id']))
            {
                $this->load->library('form_validation');
                $this->form_validation->set_rules('nombre','Nombre','required');
                
                if($this->form_validation->run())     
                {                       
                    if(!empty($_FILES['plan_pdf']['name']))
                        $pdf = $this->template->subir_archivo(PDFS_UPLOAD, 'pdf', 'plan_pdf');

                    if(!empty($_FILES['imagen']['name']))
                        $imagen = $this->template->subir_archivo(IMAGES_UPLOAD, 'jpg|png', 'imagen');

                    $update = array(
                        'nombre' => $this->input->post('nombre'),
                        'presentacion' => $this->input->post('presentacion'),
                        'perfil' => $this->input->post('perfil'),
                    );

                    if(!empty($_FILES['plan_pdf']['name']) && !isset($pdf['error']))
                        $update['plan_pdf'] = $pdf['file_name'];

                    if(!empty($_FILES['imagen']['name']) && !isset($imagen['error']))
                        $update['imagen']= $imagen['file_name'];
                   

                    if (isset($imagen['error']) || isset($pdf['error'])){
                        $data['alerta'] = $this->template->cargar_alerta('danger', 'Error de formato', 'El archivo seleccionado no corresponde con el formato.');
                        $this->template->cargar_vista('abm/carrera/edit', $data);
                    }else{
                        $this->Carrera_model->update_carrera($id,$update);
                        $data['alerta'] = $this->template->cargar_alerta('success', 'Datos actualizados', 'La carrera se actualizo correctamente.');
                        
                        $params = $this->template->get_params();
                        $config = $this->template->get_config('abm/carrera/index?', $this->Carrera_model->get_all_carrera_count());
                        $this->pagination->initialize($config);

                        $data['carrera'] = $this->Carrera_model->get_all_carrera($params);

                        $this->template->cargar_vista('abm/carrera/index', $data);    
                    }
                    
                }
                else
                {
                    $data['user'] = $this->ion_auth->user()->row();
                    $this->template->cargar_vista('abm/carrera/edit', $data);
                }
            }
            else
                show_error('The carrera you are trying to edit does not exist.');
        }
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
            redirect('abm/carrera/');
        }
        else
            show_error('The carrera you are trying to delete does not exist.');
    }


    public function activate($id, $code = FALSE)
	{
		if ($this->ion_auth->is_admin())
		{
            $params['activo']= true;
            $this->Carrera_model->change_status($id, $params);
		}

		redirect('abm/carrera/', 'refresh');
	}


    public function deactivate($id = NULL)
	{
		if (!$this->ion_auth->logged_in() || !$this->ion_auth->is_admin())
		{
			// redirect them to the home page because they must be an administrator to view this
			return show_error('You must be an administrator to view this page.');
		}

        $id = (int)$id;

		$this->load->library('form_validation');
		$this->form_validation->set_rules('confirm', $this->lang->line('deactivate_validation_confirm_label'), 'required');
		$this->form_validation->set_rules('id', $this->lang->line('deactivate_validation_user_id_label'), 'required|alpha_numeric');

		if ($this->form_validation->run() === FALSE)
		{
			$data['carrera'] = $this->Carrera_model->get_carrera($id);
            $data['user'] = $this->ion_auth->user()->row();
            $this->template->cargar_vista('abm/carrera/deactivate_carrera', $data);
		}
		else
		{
			// do we really want to deactivate?
			if ($this->input->post('confirm') == 'yes')
			{
				// do we have a valid request?
				if ($id != $this->input->post('id'))
				{
					return show_error($this->lang->line('error_csrf'));
				}

				// do we have the right userlevel?
				if ($this->ion_auth->logged_in() && $this->ion_auth->is_admin())
				{
                    $params['activo']= false;
					$this->Carrera_model->change_status($id, $params);
				}
			}

			// redirect them back to the auth page
			redirect('abm/carrera/', 'refresh');
		}
	}

    
}

?>
