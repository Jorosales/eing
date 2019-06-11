<?php echo $this->template->get_perfil_docente($docente['id']); ?>

<?php echo form_open('abm/docente/asignar_materia/'.$docente['id'],array("class"=>"form-horizontal")); ?>
	
	<?php echo $this->template->cargar_select(lang('form_cycle_course'), 'id_ciclo_materia', '*', form_error('id_ciclo_materia'), $ciclos_materias, $this->input->post('id_ciclo_materia')); ?>	
	
	<?php echo $this->template->cargar_submit(); ?>
	
<?php echo form_close(); ?>

<div class="col-xs-12">
	<div class="box">

		<div class="box-header">
			<h3 class="box-title">Materias asignadas</h3>
		</div>

		<div class="box-body">
			<table id="example2" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th><?php echo lang('table_career_th');?></th>
						<th><?php echo lang('table_plan_th');?></th>
						<th><?php echo lang('table_cicle_th');?></th>
						<th><?php echo lang('table_orientation_th');?></th>
						<th><?php echo lang('table_course_th');?></th>
						<th colspan="2"><?php echo lang('table_actions_th');?></th>
					</tr>
				</thead>
				<tbody>
					<?php foreach($materias_asignadas as $m):?>
					<tr>
						<td><?php echo htmlspecialchars($m->carrera,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($m->plan,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($m->ciclo,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($m->orientacion,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($m->materia,ENT_QUOTES,'UTF-8');?></td>

					 	<td><?php echo anchor("abm/docente/remove_materia_docente/".$m->id, '<span class="btn btn-danger btn-xs">Eliminar</span>') ;?></td>
					 </tr>
					 <?php endforeach;?>
				</tbody>
				<tfoot>
					<tr>
						<th><?php echo lang('table_career_th');?></th>
						<th><?php echo lang('table_plan_th');?></th>
						<th><?php echo lang('table_cicle_th');?></th>
						<th><?php echo lang('table_orientation_th');?></th>
						<th><?php echo lang('table_course_th');?></th>
						<th colspan="2"><?php echo lang('table_actions_th');?></th>
					</tr>
				</tfoot>
			</table>

		</div>

	</div>
	<!-- /.box -->
</div>
<!-- /.col -->

