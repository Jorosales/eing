<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Template extends MX_Controller
{
	function __construct() {
		parent::__construct();
		$this->load->add_package_path(APPPATH.'third_party/ion_auth/');
        $this->load->library(array('ion_auth', 'form_validation'));
        $this->load->helper(array('language'));
        $this->form_validation->set_error_delimiters($this->config->item('error_start_delimiter', 'ion_auth'), $this->config->item('error_end_delimiter', 'ion_auth'));
	}
	
	public function commonHeader()
	{
		$this->load->view('template/common-header');
	}
	
	public function adminHeader()
	{
		$this->load->view('template/header');
		if ($this->ion_auth->is_admin()){
			$data['abm'] = $this->load->view('template/navbar_abm', NULL, TRUE);
			$data['usuarios'] = $this->load->view('template/navbar_usuarios', NULL, TRUE);
		}
		else{
			$data['abm'] = $data['usuarios'] = '';
		}
		$this->load->view('template/navbar', $data);
	}

	public function footer()
	{
		$this->load->view('template/footer');
	}

	public function commonFooter()
	{
		$this->load->view('template/common-footer');
	}

	public function cargar_vista($vista, $data)
	{
		$this->commonHeader();
        $this->adminHeader();
        if ($this->ion_auth->is_admin())
            $data['_view'] = $vista;
        else
            $data['_view'] = 'sin-permiso';
        $this->load->view('../../abm/views/layouts/main',$data);
        $this->footer();
        $this->commonFooter();
	}

	public function get_params()
	{
		$params['limit'] = RECORDS_PER_PAGE; 
        $params['offset'] = ($this->input->get('per_page')) ? $this->input->get('per_page') : 0;
        return $params;
	}

	public function get_config($pag, $count)
	{
		$config = $this->config->item('pagination');
        $config['base_url'] = site_url($pag);
        $config['total_rows'] = $count;
        $config['attributes'] = array('class' => 'page-link');
        
        return $config;
	}
}