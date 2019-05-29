<?php echo form_open('abm/titulo/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="id_plan" class="col-md-2 control-label">Plan</label>
		<div class="col-md-8">
			<select name="id_plan" class="form-control">
				
				<?php 
					foreach($planes as $plan)
					{
						$selected = ($plan->id == $this->input->post('id_plan')) ? ' selected="selected"' : "";
						echo '<option value="'.$plan->id.'" '.$selected.'>'.$plan->nombre.'</option>';
					} 
				?>
			</select>
		</div>
	</div>


	<div class="form-group">
		<label for="id_orientacion" class="col-md-2 control-label">Orientaciones</label>
		<div class="col-md-8">
			<select name="id_orientacion" class="form-control">
				<?php 
					foreach($orientaciones as $orientacion)
					{
						$selected = ($orientacion->id == $this->input->post('id_orientacion')) ? ' selected="selected"' : "";

						echo '<option value="'.$orientacion->id.'" '.$selected.'>'.$orientacion->nombre.'</option>';
					} 
				?>
			</select>
		</div>
	</div>

	<?php echo $this->template->cargar_input('Nombre', 'nombre', 'text', '*', form_error('nombre'), $this->input->post('nombre')); ?>

	<?php echo $this->template->cargar_submit(); ?>

<?php echo form_close(); ?>