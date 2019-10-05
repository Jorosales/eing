<?php
 
class Tutor_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get tutor by id
     */
    function get_tutor($id)
    {
        return $this->db->get_where('tutor',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all tutor count
     */
    function get_all_tutor_count()
    {
        $this->db->from('tutor');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all tutor
     */
    function get_all_tutores($params = array())
    {
        $this->db->select('docentes.id, CONCAT(persona.apellido, ", ",  persona.nombre) as docente, docente_categoria.nombre AS categoria, COUNT(proyectos.id) AS proyectos');
        $this->db->from('docentes'); 

        $this->db->join('persona', 'docentes.persona_id = persona.id');
        $this->db->join('docente_categoria', 'docentes.id_docente_categoria = docente_categoria.id', 'left');
        $this->db->join('proyectos', 'proyectos.id_tutor = docentes.id');
        $this->db->where('proyectos.activo','1');
        $this->db->order_by('id', 'desc');
        $this->db->group_by('docentes.id');
        return $this->db->get()->result();
    }

    function get_proyectos_by_tutor($id_docente, $tipo_proyecto, $activo)
    {
        $this->db->select('proyectos.id, proyectos.id_tipo, tipo_proyecto.nombre AS tipo , proyectos.titulo, institucion.razon_social, institucion.cuit, institucion.direccion, estudiantes.legajo, CONCAT(persona.apellido, ", ", persona.nombre) as estudiante, persona.dni');
        $this->db->from('proyectos');

        $this->db->join('tipo_proyecto', 'tipo_proyecto.id = proyectos.id_tipo');
        $this->db->join('institucion', 'institucion.id = proyectos.id_institucion');
        $this->db->join('proyecto_estudiante', 'proyecto_estudiante.id_proyecto = proyectos.id');
        $this->db->join('estudiantes', 'estudiantes.id = proyecto_estudiante.id_estudiante');
        $this->db->join('persona', 'persona.id = estudiantes.persona_id');
        $this->db->where('proyectos.id_tutor',$id_docente);
        $this->db->where('proyectos.id_tipo',$tipo_proyecto);
        $this->db->where('proyectos.activo',$activo);

        return $this->db->get()->result();
    }

    function get_tipos_proyectos()
    {
        $this->db->from('tipo_proyecto');
        return $this->db->get()->result();
    }
        
    /*
     * function to add new tutor
     */
    function add_tutor($params)
    {
        $this->db->insert('tutor',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update tutor
     */
    function update_tutor($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('tutor',$params);
    }
    
    /*
     * function to delete tutor
     */
    function delete_tutor($id)
    {
        return $this->db->delete('tutor',array('id'=>$id));
    }
}
