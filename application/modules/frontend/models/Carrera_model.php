<?php

class Carrera_model  extends CI_Model  {
	
	public function getCarrera($idCarrera) 
	{
		$query = $this->db->query('	SELECT c.*, p.nombre AS plan 
									FROM carrera c
									INNER JOIN planes p ON p.id_carrera = c.id
									WHERE c.id = '.$idCarrera.' LIMIT 1');
		return $query->result();
	}

	public function getPlan($idCarrera) 
	{
		$query = $this->db->query(
				'SELECT m.id, cm.codigo, m.nombre as nombre, r.id as regid, r.nombre as regimen, cm.horas, cm.hs_total, cm.anio, cm.id_materia
				FROM ciclos c
				INNER JOIN ciclo_materia cm ON id_ciclo = c.id
				INNER JOIN materias m ON m.id = cm.id_materia
				LEFT JOIN orientaciones o ON o.id = c.id_orientacion
				INNER JOIN planes p ON p.id = c.id_plan
				INNER JOIN carrera ca ON ca.id = p.id_carrera
				INNER JOIN regimen r ON r.id = cm.id_regimen
				INNER JOIN materias_tipo mt ON mt.id = m.id_tipo
				WHERE ca.id = '. $idCarrera .' AND ISNULL(c.id_orientacion)
				ORDER BY m.id, cm.anio, cm.id_regimen');
		return $query->result();
	}

	public function getOrientaciones($idPlan) 
	{
		$query = $this->db->query('SELECT o.id, o.nombre FROM orientaciones o WHERE id_plan = '.$idPlan);
		return $query->result();
	}

	public function getPlanPorOrientacion($idOrientacion) 
	{
		$query = $this->db->query(
				'SELECT m.id, cm.codigo, m.nombre as nombre, r.id as regid, r.nombre as regimen, cm.horas, cm.hs_total, cm.anio, cm.id_materia
				FROM ciclos c
				INNER JOIN ciclo_materia cm ON id_ciclo = c.id
				INNER JOIN materias m ON m.id = cm.id_materia
				LEFT JOIN orientaciones o ON o.id = c.id_orientacion
				INNER JOIN planes p ON p.id = c.id_plan
				INNER JOIN carrera ca ON ca.id = p.id_carrera
				INNER JOIN regimen r ON r.id = cm.id_regimen
				INNER JOIN materias_tipo mt ON mt.id = m.id_tipo
				WHERE o.id = '. $idOrientacion .' AND NOT ISNULL(c.id_orientacion)
				ORDER BY cm.anio, cm.codigo, cm.id_regimen');
		return $query->result();
	}

	public function getAllActivates() 
	{
		$query = $this->db->query('SELECT * FROM carrera where activo = 1');
		return $query->result();
	}

	function get_carrera($id)
    {
        return $this->db->get_where('carrera',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all carrera count
     */
    function get_all_carrera_count()
    {
        $this->db->from('carrera');
        return $this->db->count_all_results();
    }
        
            	
}

?>
