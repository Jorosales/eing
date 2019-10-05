<?php
 
class Tutor extends MX_Controller{
    
    public $name = 'El tutor';
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
            $this->load->model('Tutor_model');
            $this->load->helper(array('language'));
            $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
            $this->lang->load('auth');
        }
    }

    /*
     * Listing of tutor
     */
    function index($mensaje=null)
    {
        $data['tutores'] = $this->Tutor_model->get_all_tutores();
        $data['user'] = $this->ion_auth->user()->row();

        if (isset($mensaje)) {
            $data['alerta'] = $mensaje;
        }

        $this->template->cargar_vista('abm/tutor/index', $data);
    }

    function detalle($id)
    {
        $data['user'] = $this->ion_auth->user()->row();
        $data['tipos_proyecto'] =$this->Tutor_model->get_tipos_proyectos();
        
        foreach ($data['tipos_proyecto'] as $key => $tipos) {
            $data['proyectos'][] = $this->Tutor_model->get_proyectos_by_tutor($id, $tipos->id, 1);
            $data['proyectos'][$key]['tipo'] = new stdClass();;
            $data['proyectos'][$key]['tipo']->titulo = $tipos->nombre;
        }

        $data['id_docente'] = $id;

        $this->template->cargar_vista('abm/tutor/detalle', $data);
    }

    /*
     * Adding a new tutor
     */
    function add()
    {   
        if(isset($_POST) && count($_POST) > 0)     
        {   
            $params = array(
				'id_docente' => $this->input->post('id_docente'),
            );
            
            $tutor_id = $this->Tutor_model->add_tutor($params);
            redirect('tutor/index');
        }
        else
        {            
            $data['_view'] = 'tutor/add';
            $this->load->view('layouts/main',$data);
        }
    }  

    /*
     * Editing a tutor
     */
    function edit($id)
    {   
        // check if the tutor exists before trying to edit it
        $data['tutor'] = $this->Tutor_model->get_tutor($id);
        
        if(isset($data['tutor']['id']))
        {
            if(isset($_POST) && count($_POST) > 0)     
            {   
                $params = array(
					'id_docente' => $this->input->post('id_docente'),
                );

                $this->Tutor_model->update_tutor($id,$params);            
                redirect('tutor/index');
            }
            else
            {
                $data['_view'] = 'tutor/edit';
                $this->load->view('layouts/main',$data);
            }
        }
        else
            show_error('The tutor you are trying to edit does not exist.');
    } 

    /*
     * Deleting tutor
     */
    function remove($id)
    {
        $tutor = $this->Tutor_model->get_tutor($id);

        // check if the tutor exists before trying to delete it
        if(isset($tutor['id']))
        {
            $this->Tutor_model->delete_tutor($id);
            redirect('tutor/index');
        }
        else
            show_error('The tutor you are trying to delete does not exist.');
    }
    
}
