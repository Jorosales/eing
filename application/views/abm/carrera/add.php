<?php echo form_open('carrera/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="nombre" class="col-md-4 control-label"><span class="text-danger">*</span>Nombre</label>
		<div class="col-md-8">
			<input type="text" name="nombre" value="<?php echo $this->input->post('nombre'); ?>" class="form-control" id="nombre" />
			<span class="text-danger"><?php echo form_error('nombre');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="plan_pdf" class="col-md-4 control-label">Plan Pdf</label>
		<div class="col-md-8">
			<input type="text" name="plan_pdf" value="<?php echo $this->input->post('plan_pdf'); ?>" class="form-control" id="plan_pdf" />
			<span class="text-danger"><?php echo form_error('plan_pdf');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="imagen" class="col-md-4 control-label">Imagen</label>
		<div class="col-md-8">
			<input type="text" name="imagen" value="<?php echo $this->input->post('imagen'); ?>" class="form-control" id="imagen" />
			<span class="text-danger"><?php echo form_error('imagen');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="presentacion" class="col-md-4 control-label">Presentacion</label>
		<div class="col-md-8">
			<textarea name="presentacion" class="form-control" id="presentacion"><?php echo $this->input->post('presentacion'); ?></textarea>
			<span class="text-danger"><?php echo form_error('presentacion');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="perfil" class="col-md-4 control-label">Perfil</label>
		<div class="col-md-8">
			<textarea name="perfil" class="form-control" id="perfil"><?php echo $this->input->post('perfil'); ?></textarea>
			<span class="text-danger"><?php echo form_error('perfil');?></span>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Guardar</button>
        </div>
	</div>

<?php echo form_close(); ?>