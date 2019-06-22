<?php

class Escuela_model  extends CI_Model  {
	
	function get_escuela($id)
    {
        return $this->db->get_where('escuela',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all escuela count
     */
    function get_all_escuela_count()
    {
        $this->db->from('escuela');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all escuela
     */
    function get_all_escuela($params = array())
    {
        $this->db->order_by('id', 'desc');
        if(isset($params) && !empty($params))
        {
            $this->db->limit($params['limit'], $params['offset']);
        }
        return $this->db->get('escuela')->result();
    }
        
    /*
     * function to add new escuela
     */
    function add_escuela($params)
    {
        $this->db->insert('escuela',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update escuela
     */
    function update_escuela($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('escuela',$params);
    }
    
    /*
     * function to delete escuela
     */
    function delete_escuela($id)
    {
        return $this->db->delete('escuela',array('id'=>$id));
    }	

}

?>
