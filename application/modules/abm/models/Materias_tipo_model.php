<?php
 
class Materias_tipo_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get materias_tipo by id
     */
    function get_materias_tipo($id)
    {
        return $this->db->get_where('materias_tipo',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all materias_tipo count
     */
    function get_all_materias_tipo_count()
    {
        $this->db->from('materias_tipo');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all materias_tipo
     */
    function get_all_materias_tipo()
    {
        $this->db->order_by('id', 'asc');
        return $this->db->get('materias_tipo')->result();
    }

    function get_all_tipos()
    {
        $this->db->select(' materias_tipo.id as id, materias_tipo.nombre as nombre');  
        $this->db->from('materias_tipo');
        $this->db->order_by('id', 'asc');
        return $this->db->get()->result();
    }
        
    /*
     * function to add new materias_tipo
     */
    function add_materias_tipo($params)
    {
        $this->db->insert('materias_tipo',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update materias_tipo
     */
    function update_materias_tipo($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('materias_tipo',$params);
    }
    
    /*
     * function to delete materias_tipo
     */
    function delete_materias_tipo($id)
    {
        return $this->db->delete('materias_tipo',array('id'=>$id));
    }
}
