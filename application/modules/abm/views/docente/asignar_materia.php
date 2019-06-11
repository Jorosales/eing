<?php echo form_open('abm/docente/asignar_materia/'.$docente['id'],array("class"=>"form-horizontal")); ?>


	<?php echo $this->template->cargar_select(lang('form_category'), 'id_docente_categoria', '*', form_error('id_docente_categoria'), $categorias, $docente['id_docente_categoria']); ?>

	<?php echo $this->template->cargar_input(lang('form_last_name'), 'apellido', 'text', '*', form_error('apellido'), ($this->input->post('apellido') ? $this->input->post('apellido') : $docente['apellido'])); ?>

	
	
	<?php echo $this->template->cargar_submit(); ?>
	
<?php echo form_close(); ?>