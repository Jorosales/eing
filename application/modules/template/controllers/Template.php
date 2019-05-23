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
        $this->_render_page('../../abm/views/layouts/main', $data);
        $this->footer();
        $this->commonFooter();
	}

	public function _render_page($view, $data = NULL, $returnhtml = FALSE)//I think this makes more sense
	{

		$this->viewdata = (empty($data)) ? $this->data : $data;

		$view_html = $this->load->view($view, $this->viewdata, $returnhtml);

		// This will return html on 3rd argument being true
		if ($returnhtml)
		{
			return $view_html;
		}
	}


	//Links

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

	public function get_links()
	{
		$links = '<div class="clearfix">
					<div class="float-right">
					    '.$this->pagination->create_links().'    
					</div>
				</div>';
        
        return $links;
	}

	//Fin Links


	public function subir_archivo($path, $type, $name)
	{
		$config['upload_path'] = $path;
        $config['allowed_types'] = $type;
        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if (!$this->upload->do_upload($name))
        {
            $archivo = array('error' => $this->upload->display_errors());
        }
        else
        {
            $archivo = $this->upload->data();
        }
        
        return $archivo;
	}

	public function cargar_alerta($tipo, $titulo, $mensaje)
	{
		$data['titulo'] = $titulo;
		$data['tipo'] = $tipo;
		$data['mensaje'] = $mensaje;
		return $this->load->view('../../abm/views/layouts/alerta',$data, true);
	}


	public function boton_nuevo($url, $titulo)
	{
		$boton = '<div class="clearfix">
					<div class="float-right">
						<a href='.site_url($url).' class="btn btn-success">'.$titulo.'</a> 
					</div>
				</div>';
		return $boton;
	}	
}