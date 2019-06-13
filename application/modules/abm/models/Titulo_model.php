<?php

class Titulo_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get titulo by id
     */
    function get_titulo($id)
    {
        return $this->db->get_where('titulos',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all titulos count
     */
    function get_all_titulos_count()
    {
        $this->db->from('titulos');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all titulos
     */
    function get_all_titulos($params = array())
    {
        $this->db->select('titulos.*, planes.nombre as plan, orientaciones.nombre as orientacion');    
        $this->db->from('titulos');
        $this->db->join('planes', 'planes.id = titulos.id_plan');
        $this->db->join('orientaciones', 'orientaciones.id = titulos.id_orientacion', 'LEFT');
        if(isset($params) && !empty($params))
            $this->db->limit($params['limit'], $params['offset']);
        $this->db->order_by('titulos.id', 'desc');

        return $this->db->get()->result();
    }
        
    /*
     * function to add new titulo
     */
    function add_titulo($params)
    {
        $this->db->insert('titulos',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update titulo
     */
    function update_titulo($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('titulos',$params);
    }
    
    /*
     * function to delete titulo
     */
    function delete_titulo($id)
    {
        return $this->db->delete('titulos',array('id'=>$id));
    }
}
