<?php echo form_open('abm/planes/add',array("class"=>"form-horizontal")); ?>

	<?php echo $this->template->cargar_select(lang('form_career'), 'id_carrera', '*', form_error('carrera'), $carreras, $this->input->post('id_carrera')); ?>

	<?php echo $this->template->cargar_input(lang('form_name'), 'nombre', 'text', '*', form_error('nombre'), $this->input->post('nombre')); ?>

	<?php echo $this->template->cargar_input(lang('form_duration'), 'duracion', 'text', '*', form_error('duracion'), $this->input->post('duracion')); ?>
	
	<?php echo $this->template->cargar_submit(); ?>

<?php echo form_close(); ?>