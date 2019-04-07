<?php echo form_open('planes/edit/'.$planes['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="id_carrera" class="col-md-4 control-label">Carrera</label>
		<div class="col-md-8">
			<select name="id_carrera" class="form-control">
				<?php 
				foreach($all_carrera as $carrera)
				{
					$selected = ($carrera['id'] == $planes['id_carrera']) ? ' selected="selected"' : "";

					echo '<option value="'.$carrera['id'].'" '.$selected.'>'.$carrera['nombre'].'</option>';
				} 
				?>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="nombre" class="col-md-4 control-label">Nombre</label>
		<div class="col-md-8">
			<input type="text" name="nombre" value="<?php echo ($this->input->post('nombre') ? $this->input->post('nombre') : $planes['nombre']); ?>" class="form-control" id="nombre" />
			<span class="text-danger"><?php echo form_error('nombre');?></span>
		</div>
	</div>

	<div class="form-group">
		<label for="duracion" class="col-md-4 control-label">Duración en años</label>
		<div class="col-md-8">
			<input type="text" name="duracion" value="<?php echo ($this->input->post('duracion') ? $this->input->post('duracion') : $planes['duracion']); ?>" class="form-control" id="duracion" />
			<span class="text-danger"><?php echo form_error('duracion');?></span>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Guardar</button>
        </div>
	</div>
	
<?php echo form_close(); ?>