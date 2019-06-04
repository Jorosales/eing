<?php echo form_open('abm/categoria/add',array("class"=>"form-horizontal")); ?>

	<?php echo $this->template->cargar_input(lang('form_name'), 'nombre', 'text', '*', form_error('nombre'), $this->input->post('nombre')); ?>

	<?php echo $this->template->cargar_submit(); ?>

<?php echo form_close(); ?>