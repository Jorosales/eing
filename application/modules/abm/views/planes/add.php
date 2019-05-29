<?php echo form_open('abm/planes/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="id_carrera" class="col-md-2 control-label">Carrera</label>
		<div class="col-md-8">
			<select name="id_carrera" class="form-control">
				<?php 
				foreach($carreras as $carrera)
				{
					$selected = ($carrera->id == $this->input->post('id_carrera')) ? ' selected="selected"' : "";

					echo '<option value="'.$carrera->id.'" '.$selected.'>'.$carrera->nombre.'</option>';
				} 
				?>
			</select>
		</div>
	</div>

	<?php echo $this->template->cargar_input('Nombre', 'nombre', 'text', '*', form_error('nombre'), $this->input->post('nombre')); ?>
	
	<?php echo $this->template->cargar_submit(); ?>

<?php echo form_close(); ?>