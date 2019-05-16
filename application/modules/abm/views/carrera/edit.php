<?php echo form_open_multipart('abm/carrera/edit/'.$carrera['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="nombre" class="col-md-2 control-label"><span class="text-danger">*</span>Nombre</label>
		<div class="col-md-8">
			<input type="text" name="nombre" value="<?php echo ($this->input->post('nombre') ? $this->input->post('nombre') : $carrera['nombre']); ?>" class="form-control" id="nombre" />
			<span class="text-danger"><?php echo form_error('nombre');?></span>
		</div>
	</div>
	<div class="form-group">
			<label for="plan_pdf" class="col-md-2 control-label">Plan Pdf</label>
			<div class="col-md-8">
				<input type="file" name="plan_pdf" value="<?php echo ($this->input->post('plan_pdf') ? $this->input->post('plan_pdf') : $carrera['plan_pdf']); ?>" class="form-control" id="plan_pdf" />
				<span class="text-danger"><?php echo form_error('plan_pdf');?></span>
				 
				<?php if($carrera['plan_pdf'] != '') echo "<a target='_blank' href='".base_url(PDFS_UPLOAD.$carrera['plan_pdf'])."'/>"; ?>
						<p class="help-block"><?php echo ($carrera['plan_pdf'] ? $carrera['plan_pdf'] : '<b>* El archivo debe estar en formato PDF.</b>'); ?></p>
				<?php if($carrera['plan_pdf'] != '') echo "</a>"; ?>
			</div>
	</div>
	<div class="form-group">
			<label for="imagen" class="col-md-2 control-label">Imágen</label>
			<div class="col-md-6">
				<input type="file" name="imagen" value="<?php echo ($this->input->post('imagen') ? $this->input->post('imagen') : $carrera['imagen']); ?>" class="form-control" id="imagen" />
				<p class="help-block"> <?php echo ($carrera['imagen'] ? '' : '<b>* La imágen debe estar en formato JPG o PNG.</b>'); ?> </p>
					
			</div>
			<div class="col-md-3">
				<span class="text-danger"><?php echo form_error('imagen');?></span>
				
				<?php if($carrera['imagen'] != '') echo "<a target='_blank' href='".base_url(IMAGES_UPLOAD.$carrera['imagen'])."'/>"; ?>
					
					<img style="height: 140px; width: 140px;" src="<?=base_url(IMAGES_UPLOAD.$carrera['imagen']); ?>" alt="..." class="img-thumbnail">
					
					<p class="help-block"><?php echo ($carrera['imagen'] != '' ? $carrera['imagen'] : 'SIN IMAGEN'); ?></p>
				
				<?php if($carrera['imagen'] != '') echo "</a>"; ?>

			</div>
	</div>
	<div class="form-group">
			<label for="presentacion" class="col-md-2 control-label">Presentacion</label>
			<div class="col-md-8">
				<textarea name="presentacion" class="form-control" id="presentacion"><?php echo ($this->input->post('presentacion') ? $this->input->post('presentacion') : $carrera['presentacion']); ?></textarea>
				<span class="text-danger"><?php echo form_error('presentacion');?></span>
			</div>
	</div>
	<div class="form-group">
			<label for="perfil" class="col-md-2 control-label">Perfil</label>
			<div class="col-md-8">
				<textarea name="perfil" class="form-control" id="perfil"><?php echo ($this->input->post('perfil') ? $this->input->post('perfil') : $carrera['perfil']); ?></textarea>
				<span class="text-danger"><?php echo form_error('perfil');?></span>
			</div>
	</div>
			
	<div class="form-group">
			<div class="col-sm-offset-8 col-sm-8">
				<button type="submit" class="btn btn-success">Guardar</button>
		    </div>
	</div>
			
<?php echo form_close(); ?>



<script>
    CKEDITOR.replace( 'presentacion' );
    CKEDITOR.replace( 'perfil' );
</script>