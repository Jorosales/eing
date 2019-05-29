<?php echo form_open('abm/orientaciones/edit/'.$orientaciones['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="id_plan" class="col-md-2 control-label"><span class="text-danger">*</span>Plan</label>
		<div class="col-md-8">
			<select name="id_plan" class="form-control">
				<?php
				foreach($planes as $plan)
				{
					$selected = ($plan->id == $orientaciones['id_plan']) ? ' selected="selected"' : "";

					echo '<option value="'.$plan->id.'" '.$selected.'>'.$plan->nombre.'</option>';
				} 
				?>
			</select>
			<span class="text-danger"><?php echo form_error('id_plan');?></span>
		</div>
	</div>

	<?php echo $this->template->cargar_input('Nombre', 'nombre', 'text', '*', form_error('nombre'), ($this->input->post('nombre') ? $this->input->post('nombre') : $orientaciones['nombre'])); ?>

	<?php echo $this->template->cargar_submit(); ?>
	
<?php echo form_close(); ?>