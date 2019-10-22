<?php if(isset($alerta))  {  
	echo $alerta;
} 
?>
<?php echo $this->template->boton_nuevo('abm/planes/add', 'Nuevo Plan'); ?>

<hr>

<div class="col-lg-11">
	<div class="box">
		<div class="box-header">
		  <h3 class="box-title"><?php echo lang('title_plan');?></h3>
		</div>

		<div class="box-title" style=" float: right !important;">
			<a href="<?= site_url('abm/titulo'); ?>"> 
				<button type="button" class="btn btn-success btn-md-3" style="border: 1px solid rgba(0,0,0,0.1); box-shadow: inset 0 1px 0 rgba(255,255,255,0.7);">Ver Títulos</button>
			</a>
			<a href="<?= site_url('abm/orientaciones'); ?>"> 
				<button type="button" class="btn btn-success btn-md-3" style="border: 1px solid rgba(0,0,0,0.1); box-shadow: inset 0 1px 0 rgba(255,255,255,0.7);">Ver Orientaciones</button>
			</a>			
        </div>

        <br><br>

		<!-- /.box-header -->
		<div class="box-body">
		  	<table id="tabla" class="table table-bordered table-striped">
			    <thead>
				    <tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_career_th');?></th>
						<th><?php echo lang('table_name_th');?></th>
						<th><?php echo lang('table_duration_th');?></th>
						<th><?php echo lang('table_status_th');?></th>
						<th><?php echo lang('table_actions_th');?></th>
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
						<th><?php echo lang('table_actions_th');?></th>
					</tr>
			    </tfoot>
		  	</table>
	   	</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->
</div>    

<hr>