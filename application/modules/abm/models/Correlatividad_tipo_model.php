<?php
 
class Correlatividad_tipo_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get correlativas_tipo by id
     */
    function get_correlativas_tipo($id)
    {
        $this->db->select('correlativas_tipo.id as id, correlativas_tipo.descripcion as nombre');
        return $this->db->get_where('correlativas_tipo',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all correlativas_tipo count
     */
    function get_all_correlativas_tipo_count()
    {
        $this->db->from('correlativas_tipo');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all correlativas_tipo
     */
    function get_all_correlativas_tipo($params = array())
    {
        $this->db->select('correlativas_tipo.id as id, correlativas_tipo.descripcion as nombre');
        $this->db->order_by('id', 'desc');
        if(isset($params) && !empty($params))
        {
            $this->db->limit($params['limit'], $params['offset']);
        }
        return $this->db->get('correlativas_tipo')->result();
    }
        
    /*
     * function to add new correlativas_tipo
     */
    function add_correlativas_tipo($params)
    {
        $this->db->insert('correlativas_tipo',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update correlativas_tipo
     */
    function update_correlativas_tipo($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('correlativas_tipo',$params);
    }
    
    /*
     * function to delete correlativas_tipo
     */
    function delete_correlativas_tipo($id)
    {
        return $this->db->delete('correlativas_tipo',array('id'=>$id));
    }
}
