<?php
 
class Docente_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get docente by id
     */
    function get_docente($id)
    {
        return $this->db->get_where('docentes',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all docente count
     */
    function get_all_docente_count()
    {
        $this->db->from('docentes');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all docente
     */
    function get_all_docente($params = array())
    {
        $this->db->order_by('id', 'desc');
        if(isset($params) && !empty($params))
        {
            $this->db->limit($params['limit'], $params['offset']);
        }
        $this->db->select('docentes.id, CONCAT(persona.apellido, ", ",  persona.nombre) as docente, docente_categoria.nombre AS categoria, docentes.descripcion');    
        $this->db->from('docentes');
        $this->db->join('persona', 'docentes.persona_id = persona.id');
        $this->db->join('docente_categoria', 'docentes.id_docente_categoria = docente_categoria.id', 'left');
        return $this->db->get()->result();
    }
        
    /*
     * function to add new docente
     */
    function add_docente($params)
    {
        $this->db->insert('docentes',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update docente
     */
    function update_docente($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('docentes',$params);
    }
    
    /*
     * function to delete docente
     */
    function delete_docente($id)
    {
        return $this->db->delete('docentes',array('id'=>$id));
    }






    //CVAR

    /*
     * Get docente by id
     */
    function get_cvar_by_docente($id)
    {
        return $this->db->get_where('cvar',array('id_docente'=>$id))->row_array();
    }


    /*
     * Get all cvar docente
     */
    function get_all_cvar_docente($params = array())
    {
        $this->db->order_by('id', 'desc');
        if(isset($params) && !empty($params))
        {
            $this->db->limit($params['limit'], $params['offset']);
        }
        $this->db->select('docentes.id, CONCAT(persona.apellido, ", ",  persona.nombre) as docente, docente_categoria.nombre AS categoria, cvar.areas');    
        $this->db->from('docentes');
        $this->db->join('persona', 'docentes.persona_id = persona.id');
        $this->db->join('docente_categoria', 'docentes.id_docente_categoria = docente_categoria.id', 'left');
        $this->db->join('cvar', 'docentes.id = cvar.id_docente');
        return $this->db->get()->result();
    }

    /*
     * function to update cvar
     */
    function update_cvar($id,$params)
    {
        $this->db->where('id_docente',$id);
        return $this->db->update('cvar',$params);
    }
}
