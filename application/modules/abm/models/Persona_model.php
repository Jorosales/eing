<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */
 
class Persona_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get persona by id
     */
    function get_persona($id)
    {
        return $this->db->get_where('persona',array('id'=>$id))->row_array();
    }
        
    /*
     * Get all persona
     */
    function get_all_persona()
    {
        $this->db->order_by('id', 'desc');
        return $this->db->get('persona')->result_array();
    }
        
    /*
     * function to add new persona
     */
    function add_persona($params)
    {
        $this->db->insert('persona',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update persona
     */
    function update_persona($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('persona',$params);
    }
    
    /*
     * function to delete persona
     */
    function delete_persona($id)
    {
        return $this->db->delete('persona',array('id'=>$id));
    }
}