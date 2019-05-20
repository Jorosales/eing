<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */
 
class Correlativa_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get correlativa by id
     */
    function get_correlativa($id)
    {
        return $this->db->get_where('correlativas',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all correlativas count
     */
    function get_all_correlativas_count()
    {
        $this->db->from('correlativas');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all correlativas
     */
    function get_all_correlativas($params = array())
    {
        $query = "SELECT c.*, m.nombre as ciclo_materia, com.nombre as correlativa, ct.descripcion as tipo
                  FROM correlativas c
                  INNER JOIN ciclo_materia cm ON cm.id = c.id_ciclo_materia
                  INNER JOIN materias m ON m.id = cm.id_materia
                  INNER JOIN correlativas co ON co.id = c.id_correlativa
                  INNER JOIN materias com ON com.id = c.id_correlativa
                  INNER JOIN correlativas_tipo ct ON ct.id = c.id_correlativa_tipo
                  ORDER BY id desc ";

        if(isset($params) && !empty($params))
        {
            $query.="LIMIT ".$params['limit']." OFFSET ".$params['offset']."";
        }
                
        return $this->db->query($query)->result_array();
    }
        
    /*
     * function to add new correlativa
     */
    function add_correlativa($params)
    {
        $this->db->insert('correlativas',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update correlativa
     */
    function update_correlativa($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('correlativas',$params);
    }
    
    /*
     * function to delete correlativa
     */
    function delete_correlativa($id)
    {
        return $this->db->delete('correlativas',array('id'=>$id));
    }
}