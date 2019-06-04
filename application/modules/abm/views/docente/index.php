<?php if(isset($alerta))  {  
	echo $alerta;
	} 
?>

<?php echo $this->template->boton_nuevo('abm/docente/add', 'Nuevo Docente'); ?>

<hr>

<?php echo $this->template->get_links(); ?>

<div class="col-xs-12">
	<div class="box">

		<div class="box-header">
			<h3 class="box-title">Docentes</h3>
		</div>

		<div class="box-body">
			<table id="example2" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_teacher_th');?></th>
						<th><?php echo lang('table_category_th');?></th>
						<th><?php echo lang('table_cvar_th');?></th>
						<th colspan="2"><?php echo lang('table_actions_th');?></th>
					</tr>
				</thead>
				<tbody>
					<?php foreach($docentes as $d):?>
					<tr>
						<td><?php echo htmlspecialchars($d->id,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($d->docente,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($d->categoria,ENT_QUOTES,'UTF-8');?></td>
						
						<td>
							<?php echo anchor("abm/cvar/edit/".$d->id, '<span class="btn btn-secondary btn-xs">Editar CVAR</span>') ;?>
						</td>
						
						<td><?php echo anchor("abm/docente/edit/".$d->id, '<span class="btn btn-primary btn-xs">Editar</span>') ;?>
					 	<?php echo anchor("abm/docente/remove/".$d->id, '<span class="btn btn-danger btn-xs">Eliminar</span>') ;?></td>
					 </tr>
					 <?php endforeach;?>
				</tbody>
				<tfoot>
					<tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_teacher_th');?></th>
						<th><?php echo lang('table_category_th');?></th>
						<th><?php echo lang('table_cvar_th');?></th>
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