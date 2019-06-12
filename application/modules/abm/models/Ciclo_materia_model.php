<?php
 
class Ciclo_materia_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get ciclo_materia by id
     */
    function get_ciclo_materia($id)
    {
        return $this->db->get_where('ciclo_materia',array('id'=>$id))->row_array();
    }
    
    /*
     * Get all ciclo_materia count
     */
    function get_all_ciclo_materia_count()
    {
        $this->db->from('ciclo_materia');
        return $this->db->count_all_results();
    }
        
    /*
     * Get all ciclo_materia
     */
    function get_all_ciclo_materia($params = array())
    {
        $query = "SELECT cm.*, c.nombre as nombre_ciclo, m.nombre as nombre_materia, r.nombre as nombre_regimen, m.id_tipo as tipo
                                  FROM ciclo_materia cm
                                  INNER JOIN ciclos c ON cm.id_ciclo = c.id
                                  INNER JOIN materias m ON cm.id_materia = m.id
                                  INNER JOIN regimen r ON cm.id_regimen = r.id
                                  ORDER BY id desc ";

        if(isset($params) && !empty($params))
        {
            $query.="LIMIT ".$params['limit']." OFFSET ".$params['offset']."";
        }
        
        return $this->db->query($query)->result();
    }
        
    /*
     * function to add new ciclo_materia
     */
    function add_ciclo_materia($params)
    {
        $this->db->insert('ciclo_materia',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update ciclo_materia
     */
    function update_ciclo_materia($id,$params)
    {
        $this->db->where('id',$id);
        return $this->db->update('ciclo_materia',$params);
    }
    
    /*
     * function to delete ciclo_materia
     */
    function delete_ciclo_materia($id)
    {
        return $this->db->delete('ciclo_materia',array('id'=>$id));
    }


    function get_ciclos_materias($params = array())
    {
        $query = "SELECT cm.id as id, CONCAT(c.nombre, ' - ' , m.nombre) as nombre
                                  FROM ciclo_materia cm
                                  INNER JOIN ciclos c ON cm.id_ciclo = c.id
                                  INNER JOIN materias m ON cm.id_materia = m.id
                                  INNER JOIN regimen r ON cm.id_regimen = r.id
                                  ORDER BY id desc ";

        if(isset($params) && !empty($params))
        {
            $query.="LIMIT ".$params['limit']." OFFSET ".$params['offset']."";
        }
        
        return $this->db->query($query)->result();
    }


    //CORRELATIVAS

    function get_correlativas($id)
    {
        $this->db->select('correlativas.id as id, materias.nombre as materia, correlativas_tipo.descripcion as descripcion');    
        $this->db->from('correlativas');
        $this->db->join('ciclo_materia', 'ciclo_materia.id = correlativas.id_correlativa');
        $this->db->join('materias', 'materias.id = ciclo_materia.id_materia');
        $this->db->join('correlativas_tipo', 'correlativas_tipo.id = correlativas.id_correlativa_tipo');
        $this->db->where('correlativas.id_ciclo_materia', $id); 

        $this->db->order_by('descripcion, id', 'desc');

        return $this->db->get()->result();
    }


    function get_all_correlativas_tipo()
    {
        $this->db->select('correlativas_tipo.id as id, correlativas_tipo.descripcion as nombre');
        return $this->db->get('correlativas_tipo')->result();
    }

    function add_correlativa($params)
    {
        $this->db->insert('correlativas',$params);
        return $this->db->insert_id();
    }

    function delete_correlativa($id)
    {
        return $this->db->delete('correlativas',array('id'=>$id));
    }

    function get_correlativa($id)
    {
        return $this->db->get_where('correlativas',array('id'=>$id))->row_array();
    }


    //OPTATIVAS

    function get_optativas_by_materia($id)
    {
        $this->db->select('optativas.id as id, materias.nombre as nombre');    
        $this->db->from('optativas');
        $this->db->join('ciclo_materia', 'ciclo_materia.id = optativas.id_optativa');
        $this->db->join('materias', 'materias.id = ciclo_materia.id_materia');
        $this->db->where('optativas.id_origen', $id); 
        $this->db->order_by('nombre, id', 'desc');

        return $this->db->get()->result();
    }


    function get_all_genericas()
    {
        $this->db->select('ciclo_materia.id as id, materias.nombre as nombre');
        $this->db->from('ciclo_materia');
        $this->db->join('materias', 'materias.id = ciclo_materia.id_materia');
        $this->db->where('materias.id_tipo', 2); 
        return $this->db->get()->result();
    }

    function get_all_optativas()
    {
        $this->db->select('ciclo_materia.id as id, materias.nombre as nombre');
        $this->db->from('ciclo_materia');
        $this->db->join('materias', 'materias.id = ciclo_materia.id_materia');
        $this->db->where('materias.id_tipo', 3); 
        return $this->db->get()->result();
    }

    function add_optativa($params)
    {
        $this->db->insert('optativas',$params);
        return $this->db->insert_id();
    }

    function get_optativa($id)
    {
        return $this->db->get_where('optativas',array('id'=>$id))->row_array();
    }

    function delete_optativa($id)
    {
        return $this->db->delete('optativas',array('id'=>$id));
    }

}
