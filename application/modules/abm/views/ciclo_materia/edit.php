<?php echo form_open('ciclo_materia/edit/'.$ciclo_materia['id'],array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="id_ciclo" class="col-md-4 control-label"><span class="text-danger">*</span>Ciclo</label>
		<div class="col-md-8">
			<select name="id_ciclo" class="form-control">
				<?php 
				foreach($all_ciclos as $ciclo)
				{
					$selected = ($ciclo['id'] == $ciclo_materia['id_ciclo']) ? ' selected="selected"' : "";

					echo '<option value="'.$ciclo['id'].'" '.$selected.'>'.$ciclo['nombre'].'</option>';
				} 
				?>
			</select>
			<span class="text-danger"><?php echo form_error('id_ciclo');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="id_materia" class="col-md-4 control-label"><span class="text-danger">*</span>Materia</label>
		<div class="col-md-8">
			<select name="id_materia" class="form-control">
				<?php 
				foreach($all_materias as $materia)
				{
					$selected = ($materia['id'] == $ciclo_materia['id_materia']) ? ' selected="selected"' : "";

					echo '<option value="'.$materia['id'].'" '.$selected.'>'.$materia['id_ciclo'].' - '.$materia['nombre'].'</option>';
				} 
				?>
			</select>
			<span class="text-danger"><?php echo form_error('id_materia');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="id_regimen" class="col-md-4 control-label"><span class="text-danger">*</span>Regimén</label>
		<div class="col-md-8">
			<select name="id_regimen" class="form-control">
				<?php 
				foreach($all_regimen as $regiman)
				{
					$selected = ($regiman['id'] == $ciclo_materia['id_regimen']) ? ' selected="selected"' : "";

					echo '<option value="'.$regiman['id'].'" '.$selected.'>'.$regiman['nombre'].'</option>';
				} 
				?>
			</select>
			<span class="text-danger"><?php echo form_error('id_regimen');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="horas" class="col-md-4 control-label">Horas</label>
		<div class="col-md-8">
			<input type="text" name="horas" value="<?php echo ($this->input->post('horas') ? $this->input->post('horas') : $ciclo_materia['horas']); ?>" class="form-control" id="horas" />
			<span class="text-danger"><?php echo form_error('horas');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="hs_total" class="col-md-4 control-label">Total Hs</label>
		<div class="col-md-8">
			<input type="text" name="hs_total" value="<?php echo ($this->input->post('hs_total') ? $this->input->post('hs_total') : $ciclo_materia['hs_total']); ?>" class="form-control" id="hs_total" />
			<span class="text-danger"><?php echo form_error('hs_total');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="programa" class="col-md-4 control-label">Programa</label>
		<div class="col-md-8">
			<!--<input type="file" name="programa" value="<?php echo ($this->input->post('programa') ? $this->input->post('programa') : $ciclo_materia['programa']); ?>" class="form-control file" id="programa" /> -->
			<input type="file" name="programa" value="
							<?php echo ($ciclo_materia['programa'] ? 
											$ciclo_materia['programa'] : 
											$this->input->post('programa')); ?>" 
							class="form-control file" id="programa" />
			<span class="text-danger"><?php echo form_error('programa');?><?php echo $ciclo_materia['programa']; ?></span>
		</div>
	</div>

	<div class="form-group">
		<label for="anio" class="col-md-4 control-label"><span class="text-danger">*</span>Año</label>
		<div class="col-md-8">
			<input type="text" name="anio" value="<?php echo ($this->input->post('anio') ? $this->input->post('anio') : $ciclo_materia['anio']); ?>" class="form-control" id="anio" />
			<span class="text-danger"><?php echo form_error('anio');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="codigo" class="col-md-4 control-label">Codigo</label>
		<div class="col-md-8">
			<input type="text" name="codigo" value="<?php echo ($this->input->post('codigo') ? $this->input->post('codigo') : $ciclo_materia['codigo']); ?>" class="form-control" id="codigo" />
			<span class="text-danger"><?php echo form_error('codigo');?></span>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Guardar</button>
        </div>
	</div>
	
<?php echo form_close(); ?>