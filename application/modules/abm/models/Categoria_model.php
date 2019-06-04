<?php
 
class Categoria_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get categoria by id
     */
    function get_categoria($id)
    {
        return $this->db->get_where('docente_categoria',array('id'=>$id))->row_array();
    }

     /*
     * Get all categoria count
     */
    function get_all_categoria_count()
    {
        $this->db->from('docente_categoria');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all categoria
     */
    function get_all_categoria()
    {
        $this->db->order_by('id', 'desc');
        return $this->db->get('docente_categoria')->result();
    }
        
    /*
     * function to add new categoria
     */
    function add_categoria($params)
    {
        $this->db->insert('docente_categoria',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update categoria
     */
    function update_categoria($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('docente_categoria',$params);
    }
    
    /*
     * function to delete categoria
     */
    function delete_categoria($id)
    {
        return $this->db->delete('docente_categoria',array('id'=>$id));
    }
}
