<?php
 
class Ciclo_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get ciclo by id
     */
    function get_ciclo($id)
    {
        return $this->db->get_where('ciclos',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all ciclos count
     */
    function get_all_ciclos_count()
    {
        $this->db->from('ciclos');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all ciclos
     */
    function get_all_ciclos($params = array())
    {
        $this->db->select('ciclos.*, planes.nombre as plan, orientaciones.nombre as orientacion, carrera.nombre as carrera');   
        $this->db->from('ciclos');
        $this->db->join('planes', 'planes.id = ciclos.id_plan');
        $this->db->join('carrera', 'carrera.id = planes.id_carrera');
        $this->db->join('orientaciones', 'orientaciones.id = ciclos.id_orientacion', 'LEFT');
        $this->db->order_by('ciclos.id', 'desc');

        return $this->db->get()->result();
    }
        
    /*
     * function to add new ciclo
     */
    function add_ciclo($params)
    {
        if (empty($params['id_orientacion'])) {
            $params['id_orientacion'] = NULL;
        }
        $this->db->insert('ciclos',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update ciclo
     */
    function update_ciclo($id,$params)
    {   
        if (empty($params['id_orientacion'])) {
            $params['id_orientacion'] = NULL;
        }
        $this->db->where('id',$id);
        return $this->db->update('ciclos',$params);
    }
    
    /*
     * function to delete ciclo
     */
    function delete_ciclo($id)
    {
        return $this->db->delete('ciclos',array('id'=>$id));
    }
}
