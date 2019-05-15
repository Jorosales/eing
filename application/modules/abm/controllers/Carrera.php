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
                

                $config['upload_path'] = './uploads';
                $config['allowed_types'] = '*';
                $this->load->library('upload', $config);

                $this->upload->do_upload('plan_pdf');
                $pdf = $this->upload->data();
                $this->upload->do_upload('imagen');
                $imagen = $this->upload->data();

                $params = array(
                    'nombre' => $this->input->post('nombre'),
                    'plan_pdf' => 'uploads/'.$pdf['file_name'],
                    'imagen' => 'uploads/'.$imagen['file_name'],
                    'presentacion' => $this->input->post('presentacion'),
                    'perfil' => $this->input->post('perfil'),
                );
                
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
                    //var_dump($_FILES['plan_pdf']);
                    $config['upload_path'] = CARRERAS_UPLOAD;
                    $config['allowed_types'] = '*';
                    $this->load->library('upload', $config);
                    
                    if(!empty($_FILES['plan_pdf']['name']))
                    {   
                        $this->upload->do_upload('plan_pdf');
                        $pdf = $this->upload->data();
                    }

                    if(!empty($_FILES['imagen']['name']))
                    {
                        $this->upload->do_upload('imagen');
                        $imagen = $this->upload->data();
                    } 

                    $params = array(
                        'nombre' => $this->input->post('nombre'),
                        'presentacion' => $this->input->post('presentacion'),
                        'perfil' => $this->input->post('perfil'),
                    );

                    if(!empty($_FILES['plan_pdf']['name']))
                    {
                        $params['plan_pdf']= $pdf['file_name'];
                    }

                    if(!empty($_FILES['imagen']['name']))
                    {
                        $params['imagen']= $imagen['file_name'];
                    }   

                    $this->Carrera_model->update_carrera($id,$params);            
                    redirect('abm/carrera/');
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
    
}

?>
