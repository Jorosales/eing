<?php echo form_open('planes/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="id_carrera" class="col-md-4 control-label">Carrera</label>
		<div class="col-md-8">
			<select name="id_carrera" class="form-control">
				<?php 
				foreach($all_carrera as $carrera)
				{
					$selected = ($carrera['id'] == $this->input->post('id_carrera')) ? ' selected="selected"' : "";

					echo '<option value="'.$carrera['id'].'" '.$selected.'>'.$carrera['nombre'].'</option>';
				} 
				?>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="nombre" class="col-md-4 control-label">Nombre</label>
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