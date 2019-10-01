<?php echo form_open('publicacione/edit/'.$publicaciones['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="esta_publicado" class="col-md-4 control-label"><span class="text-danger">*</span>Esta Publicado</label>
		<div class="col-md-8">
			<input type="checkbox" name="esta_publicado" value="1" <?php echo ($publicaciones['esta_publicado']==1 ? 'checked="checked"' : ''); ?> id='esta_publicado' />
			<span class="text-danger"><?php echo form_error('esta_publicado');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="creador_id" class="col-md-4 control-label">User</label>
		<div class="col-md-8">
			<select name="creador_id" class="form-control">
				<option value="">select user</option>
				<?php 
				foreach($all_users as $user)
				{
					$selected = ($user['id'] == $publicaciones['creador_id']) ? ' selected="selected"' : "";

					echo '<option value="'.$user['id'].'" '.$selected.'>'.$user['id'].'</option>';
				} 
				?>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="modificador_id" class="col-md-4 control-label">User</label>
		<div class="col-md-8">
			<select name="modificador_id" class="form-control">
				<option value="">select user</option>
				<?php 
				foreach($all_users as $user)
				{
					$selected = ($user['id'] == $publicaciones['modificador_id']) ? ' selected="selected"' : "";

					echo '<option value="'.$user['id'].'" '.$selected.'>'.$user['id'].'</option>';
				} 
				?>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label for="titulo" class="col-md-4 control-label"><span class="text-danger">*</span>Titulo</label>
		<div class="col-md-8">
			<input type="text" name="titulo" value="<?php echo ($this->input->post('titulo') ? $this->input->post('titulo') : $publicaciones['titulo']); ?>" class="form-control" id="titulo" />
			<span class="text-danger"><?php echo form_error('titulo');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="fecha_creacion" class="col-md-4 control-label">Fecha Creacion</label>
		<div class="col-md-8">
			<input type="text" name="fecha_creacion" value="<?php echo ($this->input->post('fecha_creacion') ? $this->input->post('fecha_creacion') : $publicaciones['fecha_creacion']); ?>" class="form-control" id="fecha_creacion" />
		</div>
	</div>
	<div class="form-group">
		<label for="ultima_modificacion" class="col-md-4 control-label">Ultima Modificacion</label>
		<div class="col-md-8">
			<input type="text" name="ultima_modificacion" value="<?php echo ($this->input->post('ultima_modificacion') ? $this->input->post('ultima_modificacion') : $publicaciones['ultima_modificacion']); ?>" class="form-control" id="ultima_modificacion" />
		</div>
	</div>
	<div class="form-group">
		<label for="contenido" class="col-md-4 control-label">Contenido</label>
		<div class="col-md-8">
			<textarea name="contenido" class="form-control" id="contenido"><?php echo ($this->input->post('contenido') ? $this->input->post('contenido') : $publicaciones['contenido']); ?></textarea>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>
	
<?php echo form_close(); ?>