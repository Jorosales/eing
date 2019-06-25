<?php
 
class Orientaciones_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get orientaciones by id
     */
    function get_orientaciones($id)
    {
        return $this->db->get_where('orientaciones',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all orientaciones count
     */
    function get_all_orientaciones_count()
    {
        $this->db->from('orientaciones');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all orientaciones
     */
    function get_all_orientaciones()
    {
        $this->db->select('orientaciones.*, planes.nombre as plan');    
        $this->db->from('orientaciones');
        $this->db->join('planes', 'planes.id = orientaciones.id_plan', 'LEFT');

        $this->db->order_by('orientaciones.id', 'desc');

        return $this->db->get()->result();
    }
        
    /*
     * function to add new orientaciones
     */
    function add_orientaciones($params)
    {
        $this->db->insert('orientaciones',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update orientaciones
     */
    function update_orientaciones($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('orientaciones',$params);
    }
    
    /*
     * function to delete orientaciones
     */
    function delete_orientaciones($id)
    {
        return $this->db->delete('orientaciones',array('id'=>$id));
    }
}
