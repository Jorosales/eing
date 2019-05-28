<?php echo form_open('abm/docente/edit/'.$docente['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="persona_id" class="col-md-4 control-label">Apellido</label>
		<div class="col-md-8">
			<input type="text" name="apellido" value="<?php echo ($this->input->post('apellido') ? $this->input->post('apellido') : $docente['apellido']); ?>" class="form-control" id="apellido">
		</div>
	</div>	

	<div class="form-group">
		<label class="col-md-4 control-label">Nombre</label>
		<div class="col-md-8">
			<input type="text" name="nombre" value="<?php echo ($this->input->post('nombre') ? $this->input->post('nombre') : $docente['nombre']); ?>" class="form-control" id="nombre">
		</div>
	</div>

	<div class="form-group">
		<label class="col-md-4 control-label">DNI</label>
		<div class="col-md-8">
			<input type="text" name="dni" value="<?php echo ($this->input->post('dni') ? $this->input->post('dni') : $docente['dni']); ?>" class="form-control" id="dni">
		</div>
	</div>

	<div class="form-group">
		<label class="col-md-4 control-label">E-Mail 1</label>
		<div class="col-md-8">
			<input type="text" name="email1" value="<?php echo ($this->input->post('email1') ? $this->input->post('email1') : $docente['email1']); ?>" class="form-control" id="email1">
		</div>
	</div>

	<div class="form-group">
		<label class="col-md-4 control-label">E-Mail 2</label>
		<div class="col-md-8">
			<input type="text" name="email2" value="<?php echo ($this->input->post('email2') ? $this->input->post('email2') : $docente['email2']); ?>" class="form-control" id="email2">
		</div>
	</div>

	<div class="form-group">
		<label for="categoria" class="col-md-4 control-label">Categoría</label>
		<div class="col-md-8">
			<select name="categoria" class="form-control">
				<?php 
					foreach($categorias as $categoria)
					{
						$selected = ($categoria->id == $docente['id_docente_categoria']) ? ' selected="selected"' : "";

						echo '<option value="'.$categoria->id.'" '.$selected.'>'.$categoria->nombre.'</option>';
					} 
				?>
			</select>
		</div>
	</div>

	<div class="form-group">
		<label for="descripcion" class="col-md-4 control-label">Descripción</label>
		<div class="col-md-8">
			<textarea name="descripcion" class="form-control" id="descripcion"><?php echo ($this->input->post('descripcion') ? $this->input->post('descripcion') : $docente['descripcion']); ?></textarea>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Guardar</button>
        </div>
	</div>
	
<?php echo form_close(); ?>