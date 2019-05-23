<?php

class Materia_model  extends CI_Model  {

	public function getMateria($idMateria)
    {
		$query = $this->db->query('
					SELECT m.id, m.nombre, m.id_tipo, ca.id AS id_carrera, ca.nombre AS nom_carrera
					FROM carrera ca
					INNER JOIN planes p ON p.id_carrera = ca.id
					INNER JOIN ciclos ci ON ci.id_plan = p.id
					INNER JOIN ciclo_materia cm ON cm.id_ciclo = ci.id
					INNER JOIN materias m ON m.id = cm.id_materia
					WHERE cm.id = '.$idMateria.' LIMIT 1');
		return $query->result();
	}

	public function getProgramaResumido($idMateria)
	{
		$query = $this->db->query('
					SELECT p.id, ca.nombre AS carrera, ori.nombre AS orientacion, cm.codigo, m.nombre AS nombre, r.id, r.nombre AS regimen, cm.horas, cm.hs_total, cm.anio, cm.id_materia, cm.programa, p.nombre AS plan
					FROM ciclos c
					INNER JOIN ciclo_materia cm ON id_ciclo = c.id
					INNER JOIN materias m ON m.id = cm.id_materia
					INNER JOIN planes p ON p.id = c.id_plan
					INNER JOIN carrera ca ON ca.id = p.id_carrera
					INNER JOIN regimen r ON r.id = cm.id_regimen
					LEFT JOIN orientaciones ori ON ori.id = c.id_orientacion
					WHERE cm.id_materia =  '.$idMateria.'
					ORDER BY p.id');
		return $query->result();
	}


	public function getEquipo($idMateria)
	{
		$query = $this->db->query('	SELECT d.id as id_docente, p.nombre, p.nombre_2, p.apellido, d.descripcion, p.email1 
									FROM docentes d 
									INNER JOIN persona p ON d.persona_id = p.id
									INNER JOIN materia_docente md ON md.id_docente = d.id
									INNER JOIN ciclo_materia cm ON cm.id = md.id_ciclo_materia
									WHERE cm.id_materia = '.$idMateria);
		return $query->result();
	}

	public function getCorrelatividades($idMateria, $tipo)
	{
		$query = $this->db->query('

					SELECT cm.codigo, m.nombre AS correlativa, m.id as id_materia 
					FROM correlativas co
					INNER JOIN ciclo_materia cm ON cm.id = co.id_ciclo_materia
					INNER JOIN materias m ON m.id = co.id_correlativa
					INNER JOIN correlativas_tipo ct ON ct.id = co.id_correlativa_tipo
					WHERE cm.id_materia = '.$idMateria.' AND co.id_correlativa_tipo = '.$tipo.'');
		return $query->result();
	}


	public function getOptativas($idMateria)
	{
		$query = $this->db->query('

					SELECT m.id as id_materia, m.nombre as optativa, ori.nombre as orientacion
					FROM optativas o 
					INNER JOIN ciclo_materia co ON co.id = o.id_origen
					INNER JOIN ciclo_materia cd ON cd.id = o.id_optativa
					INNER JOIN materias m ON m.id = cd.id_materia
					INNER JOIN ciclos c ON c.id = cd.id_ciclo
					INNER JOIN orientaciones ori ON ori.id = c.id_orientacion
					WHERE co.id = '.$idMateria.' ORDER BY ori.id, m.id'.'');
		return $query->result();
	}


	//--- agregados
	function get_materia($id)
    {
        return $this->db->get_where('materias',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all materias count
     */
    function get_all_materias_count()
    {
        $this->db->from('materias');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all materias
     */
    function get_all_materias($params = array())
    {
    	$query = "SELECT m.*, mt.nombre as tipo
                  FROM materias m
                  INNER JOIN materias_tipo mt ON m.id_tipo = mt.id
                  ORDER BY id desc ";

        if(isset($params) && !empty($params))
        {
        	$query.="LIMIT ".$params['limit']." OFFSET ".$params['offset']."";
        }
                
        return $this->db->query($query)->result();
    }

    function get_all_materias_en_ciclos($params = array())
    {
    	$query = "SELECT m.*, mt.nombre as tipo, cm.id as id_ciclo
                  FROM materias m
                  INNER JOIN ciclo_materia cm ON cm.id_materia = m.id
                  INNER JOIN materias_tipo mt ON m.id_tipo = mt.id
                  ORDER BY id desc ";

        if(isset($params) && !empty($params))
        {
        	$query.="LIMIT ".$params['limit']." OFFSET ".$params['offset']."";
        }
                
        return $this->db->query($query)->result_array();
    }
        
    /*
     * function to add new materia
     */
    function add_materia($params)
    {
        $this->db->insert('materias',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update materia
     */
    function update_materia($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('materias',$params);
    }
    
    /*
     * function to delete materia
     */
    function delete_materia($id)
    {
        return $this->db->delete('materias',array('id'=>$id));
    }
}

?>
