<?php
 
class Ciclo_materia_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get ciclo_materia by id
     */
    function get_ciclo_materia($id)
    {
        return $this->db->get_where('ciclo_materia',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all ciclo_materia count
     */
    function get_all_ciclo_materia_count()
    {
        $this->db->from('ciclo_materia');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all ciclo_materia
     */
    function get_all_ciclo_materia($params = array())
    {
        $query = "SELECT cm.*, c.nombre as nombre_ciclo, m.nombre as nombre_materia, r.nombre as nombre_regimen
                                  FROM ciclo_materia cm
                                  INNER JOIN ciclos c ON cm.id_ciclo = c.id
                                  INNER JOIN materias m ON cm.id_materia = m.id
                                  INNER JOIN regimen r ON cm.id_regimen = r.id
                                  ORDER BY id desc ";

        if(isset($params) && !empty($params))
        {
            $query.="LIMIT ".$params['limit']." OFFSET ".$params['offset']."";
        }
        
        return $this->db->query($query)->result();
    }
        
    /*
     * function to add new ciclo_materia
     */
    function add_ciclo_materia($params)
    {
        $this->db->insert('ciclo_materia',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update ciclo_materia
     */
    function update_ciclo_materia($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('ciclo_materia',$params);
    }
    
    /*
     * function to delete ciclo_materia
     */
    function delete_ciclo_materia($id)
    {
        return $this->db->delete('ciclo_materia',array('id'=>$id));
    }


    function get_ciclos_materias($params = array())
    {
        $query = "SELECT cm.id as id, CONCAT(c.nombre, ' - ' , m.nombre) as nombre
                                  FROM ciclo_materia cm
                                  INNER JOIN ciclos c ON cm.id_ciclo = c.id
                                  INNER JOIN materias m ON cm.id_materia = m.id
                                  INNER JOIN regimen r ON cm.id_regimen = r.id
                                  ORDER BY id desc ";

        if(isset($params) && !empty($params))
        {
            $query.="LIMIT ".$params['limit']." OFFSET ".$params['offset']."";
        }
        
        return $this->db->query($query)->result();
    }

}
