<?php echo form_open('abm/categoria/edit/'.$categoria['id'],array("class"=>"form-horizontal")); ?>
	
	<?php echo $this->template->cargar_input(lang('form_name'), 'nombre', 'text', '*', form_error('nombre'), ($this->input->post('nombre') ? $this->input->post('nombre') : $categoria['nombre'])); ?>
	
	<?php echo $this->template->cargar_submit(); ?>
	
<?php echo form_close(); ?>