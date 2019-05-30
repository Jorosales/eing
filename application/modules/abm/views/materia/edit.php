<?php echo form_open('abm/materia/edit/'.$materia['id'],array("class"=>"form-horizontal")); ?>

	<?php echo $this->template->cargar_select(lang('form_course_type'), 'id_tipo', '*', form_error('id_tipo'), $materias_tipo, $materia['id_tipo']); ?>

	<?php echo $this->template->cargar_input(lang('form_name'), 'nombre', 'text', '*', form_error('nombre'), ($this->input->post('nombre') ? $this->input->post('nombre') : $materia['nombre'])); ?>
	
	<?php echo $this->template->cargar_submit(); ?>
	
<?php echo form_close(); ?>