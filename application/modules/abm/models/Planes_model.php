<?php
 
class Planes_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get planes by id
     */
    function get_planes($id)
    {
        return $this->db->get_where('planes',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all planes count
     */
    function get_all_planes_count()
    {
        $this->db->from('planes');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all planes
     */
    function get_all_planes($params = array())
    {
        $query = "SELECT p.*, c.nombre as carrera
                  FROM planes p
                  LEFT JOIN carrera c on p.id_carrera = c.id
                  ORDER BY id desc ";

        if(isset($params) && !empty($params))
        {
            $query.="LIMIT ".$params['limit']." OFFSET ".$params['offset']."";
        }
                
        return $this->db->query($query)->result_array();
    }
        
    /*
     * function to add new planes
     */
    function add_planes($params)
    {
        $this->db->insert('planes',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update planes
     */
    function update_planes($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('planes',$params);
    }
    
    /*
     * function to delete planes
     */
    function delete_planes($id)
    {
        return $this->db->delete('planes',array('id'=>$id));
    }

    function change_status($id, $params)
    {
        $this->db->where('id',$id);
        return $this->db->update('planes',$params);
    } 

    function existe_plan_carrera($plan)
    {
        $query = $this->db->query('
            SELECT COUNT(id) as cantidad
            FROM planes
            WHERE id_carrera = (SELECT id_carrera FROM planes WHERE id = '.$plan.') AND vigente = 1'
        );
          return $query->result();
    }
}
