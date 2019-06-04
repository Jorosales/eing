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

        $query = "SELECT t.*, p.nombre as plan, o.nombre as orientacion
                  FROM titulos t
                  INNER JOIN planes p on p.id = t.id_plan
                  INNER JOIN orientaciones o on o.id = t.id_orientacion
                  ORDER BY id desc ";

        if(isset($params) && !empty($params))
        {
            $query.="LIMIT ".$params['limit']." OFFSET ".$params['offset']."";
        }
                
        return $this->db->query($query)->result();
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
