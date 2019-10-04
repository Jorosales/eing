<?php
 
class Institucion_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get institucion by id
     */
    function get_institucion($id)
    {
        return $this->db->get_where('institucion',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all institucion count
     */
    function get_all_institucion_count()
    {
        $this->db->from('institucion');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all institucion
     */
    function get_all_instituciones($params = array())
    {
        $this->db->order_by('id', 'desc');
        return $this->db->get('institucion')->result_array();
    }
        
    /*
     * function to add new institucion
     */
    function add_institucion($params)
    {
        $this->db->insert('institucion',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update institucion
     */
    function update_institucion($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('institucion',$params);
    }
    
    /*
     * function to delete institucion
     */
    function delete_institucion($id)
    {
        return $this->db->delete('institucion',array('id'=>$id));
    }
}
