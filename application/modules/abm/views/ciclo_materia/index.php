<?php if(isset($alerta))  {  
	echo $alerta;
	} 
?>

<?php echo $this->template->boton_nuevo('abm/ciclo_materia/add', 'Nuevo Ciclo Materia'); ?>

<hr>

<?php echo $this->template->get_links(); ?>


<div class="col-xs-12">
	<div class="box">

		<div class="box-header">
			<h3 class="box-title">Ciclos</h3>
		</div>

		<div class="box-body">
			<table id="example2" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_cicle_th');?></th>
						<th><?php echo lang('table_course_th');?></th>
						<th><?php echo lang('table_regimen_th');?></th>
						<th><?php echo lang('table_hours_th');?></th>
						<th><?php echo lang('table_total_hours_th');?></th>
						<th><?php echo lang('table_programa_th');?></th>
						<th><?php echo lang('table_year_th');?></th>
						<th><?php echo lang('table_code_th');?></th>
						<th colspan="2"><?php echo lang('table_actions_th');?></th>
					</tr>
				</thead>
				<tbody>
					<?php foreach($ciclo_materia as $cm):?>
					<tr>
						<td><?php echo htmlspecialchars($cm->id,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($cm->nombre_ciclo,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($cm->nombre_materia,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($cm->nombre_regimen,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($cm->horas,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($cm->hs_total,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($cm->programa,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($cm->anio,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($cm->codigo,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo anchor("abm/ciclo_materia/edit/".$cm->id, '<span class="btn btn-primary btn-xs">Editar</span>') ;?>
					 	<?php echo anchor("abm/ciclo_materia/remove/".$cm->id, '<span class="btn btn-danger btn-xs">Eliminar</span>') ;?></td>
					 </tr>
					 <?php endforeach;?>
				</tbody>
				<tfoot>
					<tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_cicle_th');?></th>
						<th><?php echo lang('table_course_th');?></th>
						<th><?php echo lang('table_regimen_th');?></th>
						<th><?php echo lang('table_hours_th');?></th>
						<th><?php echo lang('table_total_hours_th');?></th>
						<th><?php echo lang('table_programa_th');?></th>
						<th><?php echo lang('table_year_th');?></th>
						<th><?php echo lang('table_code_th');?></th>
						<th colspan="2"><?php echo lang('table_actions_th');?></th>
					</tr>
				</tfoot>
			</table>
		</div>

	</div>
	<!-- /.box -->
</div>
<!-- /.col -->


<?php echo $this->template->get_links(); ?>

<hr>
