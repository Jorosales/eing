<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Publicaciones extends MX_Controller{
    
    public $name = 'La publicación';
    function __construct()
    {
        parent::__construct();    
        $this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->library(array('ion_auth', 'form_validation'));
        
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            $this->load->module('template');
            $this->load->model('Publicaciones_model');
            $this->load->helper(array('language'));
            $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
            $this->lang->load('auth');
        }
    } 

    /*
     * Listing of publicaciones
     */
    public function index($mensaje=null)
    {
        $data['publicaciones'] = $this->Publicaciones_model->get_all_publicaciones();
        
        if (isset($mensaje)) {
            $data['alerta'] = $mensaje;
        }

        $this->template->cargar_vista('abm/publicaciones/index', $data);
    }

    /*
     * Adding a new publicaciones
     */
    function add()
    {   
        $this->load->library('form_validation');

		$this->form_validation->set_rules('esta_publicado','Publicado','required');
		$this->form_validation->set_rules('titulo','Titulo','required|max_length[100]');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'esta_publicado' => $this->input->post('esta_publicado'),
				'creador_id' => $this->input->post('creador_id'),
				'modificador_id' => $this->input->post('modificador_id'),
				'titulo' => $this->input->post('titulo'),
				'fecha_creacion' => $this->input->post('fecha_creacion'),
				'ultima_modificacion' => $this->input->post('ultima_modificacion'),
				'contenido' => $this->input->post('contenido'),
            );
            
            if ($this->Publicaciones_model->add_publicaciones($params))
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
            $this->template->cargar_vista('abm/publicaciones/add', $data);
        }
    }  

    /*
     * Editing a publicaciones
     */
    function edit($id)
    {   
        // check if the publicaciones exists before trying to edit it
        $data['publicacion'] = $this->Publicaciones_model->get_publicaciones($id);
        
        if(isset($data['publicacion']['id']))
        {
            $this->load->library('form_validation');

			$this->form_validation->set_rules('esta_publicado','Esta Publicado','required');
			$this->form_validation->set_rules('titulo','Titulo','required|max_length[100]');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'esta_publicado' => $this->input->post('esta_publicado'),
					'creador_id' => $this->input->post('creador_id'),
					'modificador_id' => $this->input->post('modificador_id'),
					'titulo' => $this->input->post('titulo'),
					'fecha_creacion' => $this->input->post('fecha_creacion'),
					'ultima_modificacion' => $this->input->post('ultima_modificacion'),
					'contenido' => $this->input->post('contenido'),
                );

                if ($this->Publicaciones_model->update_publicaciones($id,$params))
                    $mensaje =  $this->template->cargar_alerta('success', lang('record_success'), 
                                    sprintf(lang('record_edit_success_text'), $this->name));    
                else   
                        $mensaje = $this->template->cargar_alerta('danger', lang('record_error'),
                                    sprintf(lang('record_edit_error_text'), $this->name));    
                    
                $this->index($mensaje);
            }
            else
            {
                $data['all_users'] = $this->Publicaciones_model->get_users_by_publicacion($id);
				$data['publicacion'] = $this->Publicaciones_model->get_publicaciones($id);

                $this->template->cargar_vista('abm/publicaciones/edit', $data);
            }
        }
        else
            show_error(sprintf(lang('no_existe'), $this->name));
    } 

    /*
     * Deleting publicaciones
     */
    function remove($id)
    {
        $publicaciones = $this->Publicaciones_model->get_publicaciones($id);

        if(isset($publicaciones['id']))
        {
            if ($this->Publicaciones_model->delete_publicaciones($id))
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
    
}
