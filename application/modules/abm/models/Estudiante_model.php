<?php
 
class Estudiante_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get estudiante by id
     */
    function get_estudiante($id)
    {
        return $this->db->get_where('estudiantes',array('id'=>$id))->row_array();
    }
    
    function get_estudiante_by_legajo($legajo)
    {
        $query = $this->db->get_where('estudiantes',array('legajo'=>$legajo))->row_array();
        return $query['id'];
    }

    /*
     * Get all estudiantes count
     */
    function get_all_estudiantes_count()
    {
        $this->db->from('estudiantes');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all estudiantes
     */
    function get_all_estudiantes($params = array())
    {
        /*$this->db->order_by('id', 'desc');
        if(isset($params) && !empty($params))
        {
            $this->db->limit($params['limit'], $params['offset']);
        }
        return $this->db->get('estudiantes')->result_array();*/

        $this->db->select('estudiantes.*, persona.apellido, persona.nombre, persona.dni, persona.email1, carrera.nombre AS carrera ');    
        $this->db->from('estudiantes');
        $this->db->join('persona', 'persona.id = estudiantes.persona_id');
        $this->db->join('planes', 'planes.id = estudiantes.id_plan');
        $this->db->join('carrera', 'carrera.id = planes.id_carrera ');
  
        $this->db->order_by('persona.apellido', 'asc');

        return $this->db->get()->result();
    }
        
    /*
     * function to add new estudiante
     */
    function add_estudiante($params)
    {
        $this->db->insert('estudiantes',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update estudiante
     */
    function update_estudiante($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('estudiantes',$params);
    }
    
    /*
     * function to delete estudiante
     */
    function delete_estudiante($id)
    {
        return $this->db->delete('estudiantes',array('id'=>$id));
    }
}
