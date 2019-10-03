<?php

class Publicaciones_model  extends CI_Model  {

	public function datosLista($tipo)
    {
		$this->db->select('publicaciones.*, CONCAT(users.last_name,", ", users.first_name) AS creador, tipo_publicacion.nombre as tipo_nombre');
      	$this->db->from('publicaciones');
      	$this->db->join('users', 'users.id = publicaciones.creador_id');
      	$this->db->join('tipo_publicacion', 'tipo_publicacion.id = publicaciones.tipo');
		$this->db->where('publicaciones.esta_publicado', '1');
		$this->db->where('publicaciones.tipo', $tipo);
        $this->db->order_by('publicaciones.fecha', 'desc');
		
	    return $this->db->get()->result();
	}
	
    public function getPublicacion($idPublicacion)
	{
		$this->db->select('publicaciones.*, CONCAT(users.first_name," ", users.last_name) AS creador');
      	$this->db->from('publicaciones');
        $this->db->join('users', 'users.id = publicaciones.creador_id');
        $this->db->where('publicaciones.id', $idPublicacion);
        $this->db->limit('1');
        
	    return $this->db->get()->result();
	}
	
	public function getTipos()
	{
		$this->db->select('*');
      	$this->db->from('tipo_publicacion');
	    return $this->db->get()->result();
    }
}

?>
