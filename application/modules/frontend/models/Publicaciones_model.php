<?php

class Publicaciones_model  extends CI_Model  {

	public function datosLista()
    {
		    $this->db->select('publicaciones.*, CONCAT(users.last_name,", ", users.first_name) AS creador');
      	$this->db->from('publicaciones');
      	$this->db->join('users', 'users.id = publicaciones.creador_id');
      	$this->db->order_by('publicaciones.fecha_creacion', 'asc');
        $this->db->where('publicaciones.esta_publicado', '1');

	    return $this->db->get()->result();
	}
	
    public function getPublicacion($idPublicacion)
	{
		    $this->db->select('publicaciones.*, CONCAT(users.last_name,", ", users.first_name) AS creador');
      	$this->db->from('publicaciones');
        $this->db->join('users', 'users.id = publicaciones.creador_id');
        $this->db->where('publicaciones.id', $idPublicacion);
        $this->db->limit('1');
        
	    return $this->db->get()->result();
    }
}

?>
