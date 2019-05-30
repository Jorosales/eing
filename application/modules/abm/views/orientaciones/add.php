<?php echo form_open('abm/orientaciones/add',array("class"=>"form-horizontal")); ?>

	<?php echo $this->template->cargar_select(lang('form_plan'), 'id_plan', '*', form_error('plan'), $planes, $this->input->post('id_plan')); ?>

	<?php echo $this->template->cargar_input('Nombre', 'nombre', 'text', '*', form_error('nombre'), $this->input->post('nombre')); ?>

	<?php echo $this->template->cargar_submit(); ?>

<?php echo form_close(); ?>