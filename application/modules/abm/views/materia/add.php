<?php echo form_open('abm/materia/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="id_tipo" class="col-md-4 control-label"><span class="text-danger">*</span>Materias Tipo</label>
		<div class="col-md-8">
			<select name="id_tipo" class="form-control">
				<?php 
				foreach($all_materias_tipo as $materias_tipo)
				{
					$selected = ($materias_tipo['id'] == $this->input->post('id_tipo')) ? ' selected="selected"' : "";

					echo '<option value="'.$materias_tipo['id'].'" '.$selected.'>'.$materias_tipo['nombre'].'</option>';
				} 
				?>
			</select>
			<span class="text-danger"><?php echo form_error('id_tipo');?></span>
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