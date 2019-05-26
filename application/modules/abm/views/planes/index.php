<?php if(isset($alerta))  {  
	echo $alerta;
} 
?>
<?php echo $this->template->boton_nuevo('abm/planes/add', 'Nuevo Plan'); ?>
<hr>
<?php echo $this->template->get_links(); ?>

<div class="col-xs-12">
	<div class="box">

		<div class="box-header">
			<h3 class="box-title">Materias</h3>
		</div>

		<div class="box-body">
			<table id="example2" class="table table-bordered table-striped">
				<thead>
					<tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_career_th');?></th>
						<th><?php echo lang('table_name_th');?></th>
						<th><?php echo lang('table_duration_th');?></th>
						<th><?php echo lang('table_status_th');?></th>
						<th colspan="2"><?php echo lang('table_actions_th');?></th>
					</tr>
				</thead>
				<tbody>
					<?php foreach($planes as $p):?>
					<tr>
						<td><?php echo htmlspecialchars($p->id,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($p->carrera,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($p->nombre,ENT_QUOTES,'UTF-8');?></td>
						<td><?php echo htmlspecialchars($p->duracion,ENT_QUOTES,'UTF-8');?></td>
						<?php 	if($p->vigente == 1) { 
								echo '<td>
										<a href="'.site_url('abm/planes/deactivate/'.$p->id).'" class="btn btn-success btn-xs">Activo</a>
									</td>'; }
							else { 
								echo '<td>
										<a href="'.site_url('abm/planes/activate/'.$p->id).'" class="btn btn-danger btn-xs">Inactivo</a>
										</td>'; 
							} 
						?>
						<td><?php echo anchor("abm/planes/edit/".$p->id, '<span class="btn btn-primary btn-xs">Editar</span>') ;?>
					 	<?php echo anchor("abm/planes/remove/".$p->id, '<span class="btn btn-danger btn-xs">Eliminar</span>') ;?></td>
					 </tr>
					 <?php endforeach;?>
				</tbody>
				<tfoot>
					<tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_career_th');?></th>
						<th><?php echo lang('table_name_th');?></th>
						<th><?php echo lang('table_duration_th');?></th>
						<th><?php echo lang('table_status_th');?></th>
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

