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

    function get_carrera_by_plan($id_plan)
    {
        $this->db->select('planes.id_carrera');
        $this->db->from('planes');
        $this->db->where('planes.id', $id_plan);
        $this->db->limit(1);
        return $this->db->get()->row();
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
    function get_all_planes()
    {    
        $this->db->select('planes.*, carrera.nombre as carrera');    
        $this->db->from('planes');
        $this->db->join('carrera', 'carrera.id = planes.id_carrera', 'LEFT');
        $this->db->order_by('planes.id', 'desc');
        return $this->db->get()->result();
    }

    function get_all_planes_by_carrera($id_carrera)
    {    
        $this->db->select('planes.*, carrera.nombre as carrera');    
        $this->db->from('planes');
        $this->db->join('carrera', 'carrera.id = planes.id_carrera', 'LEFT');
        $this->db->where('planes.id_carrera', $id_carrera);
        $this->db->order_by('planes.id', 'desc');
        return $this->db->get()->result();
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
        $subQuery = $this->db->get_where('planes', array('id' => $plan))->result();

        $this->db->select('COUNT(id) as cantidad');    
        $this->db->from('planes');
        $this->db->where('planes.id_carrera', $subQuery[0]->id_carrera); 
        $this->db->where('planes.vigente', 1); 

        return $this->db->get()->result();
    }
}
