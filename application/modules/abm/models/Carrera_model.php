<?php

class Carrera_model  extends CI_Model  {
	
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
        
    /*
     * Get all carrera
     */
    function get_all_carrera($params = array())
    {
        $this->db->order_by('id', 'desc');
        if(isset($params) && !empty($params))
        {
            $this->db->limit($params['limit'], $params['offset']);
        }
        return $this->db->get('carrera')->result_array();
    }
        
    /*
     * function to add new carrera
     */
    function add_carrera($params)
    {
        $this->db->insert('carrera',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update carrera
     */
    function update_carrera($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('carrera',$params);
    }
    
    /*
     * function to delete carrera
     */
    function delete_carrera($id)
    {
        return $this->db->delete('carrera',array('id'=>$id));
    }	

}

?>
