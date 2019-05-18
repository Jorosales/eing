<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Planes extends MX_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->module('template');
        $this->load->model('Planes_model');
        $this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->library(array('ion_auth', 'form_validation'));
        $this->load->helper(array('language'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
    } 

    /*
     * Listing of planes
     */
    function index()
    {
        if (!$this->ion_auth->logged_in())
        {
            redirect('login', 'refresh');
        }else {
            $params = $this->template->get_params();
            $config = $this->template->get_config('abm/planes/index?', $this->Planes_model->get_all_planes_count());
            $this->pagination->initialize($config);

            $data['planes'] = $this->Planes_model->get_all_planes($params);
            $data['user'] = $this->ion_auth->user()->row();
            
            $this->template->cargar_vista('abm/planes/index', $data);
        }
    }

    /*
     * Adding a new planes
     */
    function add()
    {   
        $this->load->library('form_validation');
		$this->form_validation->set_rules('nombre','Nombre','required');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'id_carrera' => $this->input->post('id_carrera'),
				'nombre' => $this->input->post('nombre'),
            );
            $plane_id = $this->Planes_model->add_planes($params);
            redirect('abm/planes/');
        }
        else
        {
			$this->load->model('Carrera_model');
			$data['all_carrera'] = $this->Carrera_model->get_all_carrera();
            
            $this->template->cargar_vista('abm/planes/add', $data);
        }
    }  

    /*
     * Editing a planes
     */
    function edit($id)
    {   
        // check if the plane exists before trying to edit it
        $data['planes'] = $this->Planes_model->get_planes($id);
        
        if(isset($data['planes']['id']))
        {
            $this->load->library('form_validation');

			$this->form_validation->set_rules('nombre','Nombre','required');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'id_carrera' => $this->input->post('id_carrera'),
					'nombre' => $this->input->post('nombre'),
                    'duracion' => $this->input->post('duracion'),
                );

                $this->Planes_model->update_planes($id,$params);            
                redirect('abm/planes/');
            }
            else
            {
				$this->load->model('Carrera_model');
				$data['all_carrera'] = $this->Carrera_model->get_all_carrera();
                $this->template->cargar_vista('abm/planes/edit', $data);
            }
        }
        else
            show_error('The plane you are trying to edit does not exist.');
    } 

    /*
     * Deleting planes
     */
    function remove($id)
    {
        $plane = $this->Planes_model->get_planes($id);

        // check if the plane exists before trying to delete it
        if(isset($plane['id']))
        {
            $this->Planes_model->delete_planes($id);
            redirect('abm/planes/');
        }
        else
            show_error('The plane you are trying to delete does not exist.');
    }

    public function activate($id, $code = FALSE)
    {
        if ($this->ion_auth->is_admin())
        {
            $cantidad = $this->Planes_model->existe_plan_carrera($id);
            if($cantidad[0]->cantidad == 1){
                $data['alerta'] = $this->template->cargar_alerta('danger', 'Error', 'El plan no se pudo activar, debido a que la carrera ya posee un plan activo.');
            }else{
                $update['vigente']= true;
                $this->Planes_model->change_status($id, $update);
                $data['alerta'] = $this->template->cargar_alerta('success', 'Plan Activo', 'El plan se actualizó correctamente.');
            }

            $params = $this->template->get_params();
            $config = $this->template->get_config('abm/planes/index?', $this->Planes_model->get_all_planes_count());
            $this->pagination->initialize($config);

            $data['planes'] = $this->Planes_model->get_all_planes($params);
            $data['user'] = $this->ion_auth->user()->row();
            
            $this->template->cargar_vista('abm/planes/index', $data);   
        }
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
            $data['planes'] = $this->Planes_model->get_planes($id);
            $data['user'] = $this->ion_auth->user()->row();
            $this->template->cargar_vista('abm/planes/deactivate_plan', $data);
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
                    $params['vigente']= false;
                    $this->Planes_model->change_status($id, $params);
                }
            }

            // redirect them back to the auth page
            redirect('abm/planes/', 'refresh');
        }
    }
    
}
