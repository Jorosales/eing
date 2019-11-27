<?php
 
class Regimen_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get regimen by id
     */
    function get_regimen($id)
    {
        return $this->db->get_where('regimen',array('id'=>$id))->row_array();
    }

     /*
     * Get all regimen count
     */
    function get_all_regimen_count()
    {
        $this->db->from('regimen');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all regimen
     */
    function get_all_regimen()
    {
        $this->db->order_by('id', 'asc');
        return $this->db->get('regimen')->result();
    }
        
    /*
     * function to add new regimen
     */
    function add_regimen($params)
    {
        $this->db->insert('regimen',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update regimen
     */
    function update_regimen($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('regimen',$params);
    }
    
    /*
     * function to delete regimen
     */
    function delete_regimen($id)
    {
        return $this->db->delete('regimen',array('id'=>$id));
    }
}
