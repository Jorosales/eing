<?php echo form_open('abm/docente/add',array("class"=>"form-horizontal")); ?>

		
	<div class="form-group">
		<label for="persona_id" class="col-md-4 control-label">Apellido</label>
		<div class="col-md-8">
			<input type="text" name="apellido" class="form-control" id="apellido">
			<span class="text-danger"><?php echo form_error('apellido');?></span>
		</div>
	</div>
		

	<div class="form-group">
		<label class="col-md-4 control-label">1º Nombre</label>
		<div class="col-md-8">
			<input type="text" name="nombre" class="form-control" id="nombre">
			<span class="text-danger"><?php echo form_error('nombre');?></span>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-md-4 control-label">2º Nombre</label>
		<div class="col-md-8">
			<input type="text" name="nombre_2" class="form-control" id="nombre_2">
			<span class="text-danger"><?php echo form_error('nombre_2');?></span>
		</div>
	</div>

	<div class="form-group">
		<label class="col-md-4 control-label">DNI</label>
		<div class="col-md-8">
			<input type="text" name="dni" class="form-control" id="dni">
			<span class="text-danger"><?php echo form_error('dni');?></span>
		</div>
	</div>

	<div class="form-group">
		<label class="col-md-4 control-label">CUIT</label>
		<div class="col-md-8">
			<input type="text" name="cuit" class="form-control" id="cuit">
			<span class="text-danger"><?php echo form_error('dni');?></span>
		</div>
	</div>

	<div class="form-group">
		<label class="col-md-4 control-label">E-Mail 1</label>
		<div class="col-md-8">
			<input type="text" name="email1" class="form-control" id="email1">
			<span class="text-danger"><?php echo form_error('email1');?></span>
		</div>
	</div>
		
	<div class="form-group">
		<label class="col-md-4 control-label">E-Mail 2</label>
		<div class="col-md-8">
			<input type="text" name="email2" class="form-control" id="email2">
			<span class="text-danger"><?php echo form_error('email2');?></span>
		</div>
	</div>

	<div class="form-group">
		<label for="categoria" class="col-md-4 control-label">Categoría</label>
		<div class="col-md-8">
			<select name="categoria" class="form-control">
				<?php 
					foreach($categorias as $categoria)
					{
						$selected = ($categoria->id == $this->input->post('categoria')) ? ' selected="selected"' : "";

						echo '<option value="'.$categoria->id.'" '.$selected.'>'.$categoria->nombre.'</option>';
					}
				?>
			</select>
			<span class="text-danger"><?php echo form_error('categoria');?></span>
		</div>
	</div>

	<div class="form-group">
		<label for="descripcion" class="col-md-4 control-label">Descripción</label>
		<div class="col-md-8">
			<textarea name="descripcion" class="form-control" id="descripcion"><?php echo $this->input->post('descripcion'); ?></textarea>
			<span class="text-danger"><?php echo form_error('descripcion');?></span>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Registrar</button>
        </div>
	</div>

<?php echo form_close(); ?>