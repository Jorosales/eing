<?php if(isset($alerta))  {  
	echo $alerta;
} 
?>
<?php echo $this->template->boton_nuevo('abm/regimen/add', 'Nuevo Regimen'); ?>
<hr>
<?php echo $this->template->get_links(); ?>


<div class="col-xs-12">
	<div class="box">

		<div class="box-header">
			<h3 class="box-title">Regimen</h3>
		</div>

		<div class="box-body">
			<table id="example2" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_name_th');?></th>
						<th colspan="2"><?php echo lang('table_actions_th');?></th>
					</tr>
				</thead>
				<tbody>
					<?php foreach($regimenes as $r):?>
					<tr>
						<td><?php echo htmlspecialchars($r->id,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($r->nombre,ENT_QUOTES,'UTF-8');?></td>

						<td><?php echo anchor("abm/regimen/edit/".$r->id, '<span class="btn btn-primary btn-xs">Editar</span>') ;?>
					 	<?php echo anchor("abm/regimen/remove/".$r->id, '<span class="btn btn-danger btn-xs">Eliminar</span>') ;?></td>
					 </tr>
					 <?php endforeach;?>
				</tbody>
				<tfoot>
					<tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_name_th');?></th>
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