<?php echo form_open('abm/ciclo/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="id_plan" class="col-md-4 control-label"><span class="text-danger">*</span>Plan</label>
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
			<span class="text-danger"><?php echo form_error('id_plan');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="id_orientacion" class="col-md-4 control-label">Orientación</label>
		<div class="col-md-8">
			<select name="id_orientacion" class="form-control">
				<?php 
				echo '<option value="" selected="selected"></option>';
				foreach($orientaciones as $orientacion)
				{
					$selected = ($orientacion->id == $this->input->post('id_orientacion')) ? ' selected="selected"' : "";
					echo '<option value="'.$orientacion->id.'" '.$selected.'>'.$orientacion->nombre.'</option>';
				} 
				?>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="nombre" class="col-md-4 control-label"><span class="text-danger">*</span>Nombre</label>
		<div class="col-md-8">
			<input type="text" name="nombre" value="<?php echo $this->input->post('nombre'); ?>" class="form-control" id="nombre" />
			<span class="text-danger"><?php echo form_error('nombre');?></span>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Guardar</button>
        </div>
	</div>

<?php echo form_close(); ?>