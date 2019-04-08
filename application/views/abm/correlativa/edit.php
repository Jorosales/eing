<?php echo form_open('correlativa/edit/'.$correlativa['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="id_ciclo_materia" class="col-md-4 control-label"><span class="text-danger">*</span>Ciclo Materia</label>
		<div class="col-md-8">
			<select name="id_ciclo_materia" class="form-control">
				<option value="">select ciclo_materia</option>
				<?php 
				foreach($all_ciclo_materia as $ciclo_materia)
				{
					$selected = ($ciclo_materia['id'] == $correlativa['id_ciclo_materia']) ? ' selected="selected"' : "";

					echo '<option value="'.$ciclo_materia['id'].'" '.$selected.'>'.$ciclo_materia['id'].'</option>';
				} 
				?>
			</select>
			<span class="text-danger"><?php echo form_error('id_ciclo_materia');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="id_correlativa" class="col-md-4 control-label"><span class="text-danger">*</span>Correlativa</label>
		<div class="col-md-8">
			<select name="id_correlativa" class="form-control">
				<option value="">select correlativa</option>
				<?php 
				foreach($all_correlativas as $correlativa)
				{
					$selected = ($correlativa['id'] == $correlativa['id_correlativa']) ? ' selected="selected"' : "";

					echo '<option value="'.$correlativa['id'].'" '.$selected.'>'.$correlativa['id'].'</option>';
				} 
				?>
			</select>
			<span class="text-danger"><?php echo form_error('id_correlativa');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="id_correlativa_tipo" class="col-md-4 control-label"><span class="text-danger">*</span>Correlativas Tipo</label>
		<div class="col-md-8">
			<select name="id_correlativa_tipo" class="form-control">
				<option value="">select correlativas_tipo</option>
				<?php 
				foreach($all_correlativas_tipo as $correlativas_tipo)
				{
					$selected = ($correlativas_tipo['id'] == $correlativa['id_correlativa_tipo']) ? ' selected="selected"' : "";

					echo '<option value="'.$correlativas_tipo['id'].'" '.$selected.'>'.$correlativas_tipo['descripcion'].'</option>';
				} 
				?>
			</select>
			<span class="text-danger"><?php echo form_error('id_correlativa_tipo');?></span>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>
	
<?php echo form_close(); ?>