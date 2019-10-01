<div class="col-lg-12">
	<div class="box box-success">

		<div class="box-header with-border">
		  	<h3 class="box-title"><?php echo lang('edit_publication_heading');?></h3>
		</div>

		<?php echo form_open('abm/publicaciones/edit/'.$publicacion['id'],array("class"=>"form-horizontal")); ?>

			<?php echo $this->template->cargar_input(lang('form_title'), 'titulo', 'text', '*', form_error('titulo'), ($this->input->post('titulo') ? $this->input->post('titulo') : $publicacion['titulo'])); ?>
			
			<?php echo $this->template->cargar_textarea(lang('form_content'), 'contenido', '', form_error('contenido'), ($this->input->post('contenido') ? $this->input->post('contenido') : $publicacion['contenido'])); ?>

			<div class="form-group">
				<label for="esta_publicado" class="col-md-3 control-label"><span class="text-danger">*</span>Publicar</label>
				
					<input type="checkbox" name="esta_publicado" value="1" <?php echo ($publicacion['esta_publicado']==1 ? 'checked="checked"' : ''); ?> id='esta_publicado' />
					<span class="text-danger"><?php echo form_error('esta_publicado');?></span>
				
			</div>
			
			<?php echo $this->template->cargar_submit(); ?>
			
		<?php echo form_close(); ?>		

		<br><br>
	</div>
</div>

<script>
    CKEDITOR.replace( 'contenido' );
</script>