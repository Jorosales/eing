<?php if(isset($alerta))  {  
	echo $alerta;
	} 
?>

<?php echo $this->template->boton_nuevo('abm/ciclo/add', 'Nuevo Ciclo'); ?>

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
						<th><?php echo lang('table_name_th');?></th>
						<th><?php echo lang('table_plan_th');?></th>
						<th><?php echo lang('table_orientation_th');?></th>
						<th colspan="2"><?php echo lang('table_actions_th');?></th>
					</tr>
				</thead>
				<tbody>
					<?php foreach($ciclos as $c):?>
					<tr>
						<td><?php echo htmlspecialchars($c->id,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($c->nombre,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($c->plan,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($c->orientacion,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo anchor("abm/ciclo/edit/".$c->id, '<span class="btn btn-primary btn-xs">Editar</span>') ;?>
					 	<?php echo anchor("abm/ciclo/remove/".$c->id, '<span class="btn btn-danger btn-xs">Eliminar</span>') ;?></td>
					 </tr>
					 <?php endforeach;?>
				</tbody>
				<tfoot>
					<tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_name_th');?></th>
						<th><?php echo lang('table_plan_th');?></th>
						<th><?php echo lang('table_orientation_th');?></th>
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
