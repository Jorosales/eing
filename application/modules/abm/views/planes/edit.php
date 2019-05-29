<?php echo form_open('abm/planes/edit/'.$plan['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="id_carrera" class="col-md-2 control-label">Carrera</label>
		<div class="col-md-8">
			<select name="id_carrera" class="form-control">
				<?php 
				foreach($carreras as $carrera)
				{
					$selected = ($carrera->id == $plan['id_carrera']) ? ' selected="selected"' : "";

					echo '<option value="'.$carrera->id.'" '.$selected.'>'.$carrera->nombre.'</option>';
				} 
				?>
			</select>
		</div>
	</div>

	<?php echo $this->template->cargar_input('Nombre', 'nombre', 'text', '*', form_error('nombre'), ($this->input->post('nombre') ? $this->input->post('nombre') : $plan['nombre'])); ?>	

	<?php echo $this->template->cargar_input('Duración', 'duracion', 'text', '', form_error('duracion'), ($this->input->post('duracion') ? $this->input->post('duracion') : $plan['duracion'])); ?>
	
	<?php echo $this->template->cargar_submit(); ?>
	
<?php echo form_close(); ?>