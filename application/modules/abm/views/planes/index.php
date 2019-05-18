<?php if(isset($alerta))  {  
	echo $alerta;
	} 
?>

<div class="clearfix">
	<div class="float-right">
		<a href="<?php echo site_url('abm/planes/add'); ?>" class="btn btn-success">Nuevo Plan</a> 
	</div>
</div>

<hr>

<div class="clearfix">
	<div class="float-right">
	    <?php echo $this->pagination->create_links(); ?>    
	</div>
</div>

<table class="table table-striped table-bordered">
    <tr>
		<th>ID</th>
		<th>Carrera</th>
		<th>Nombre</th>
		<th>Duración</th>
		<th>Vigente</th>
		<th>Acciones</th>
    </tr>
	<?php foreach($planes as $p){ ?>
    <tr>
		<td><?php echo $p['id']; ?></td>
		<td><?php echo $p['carrera']; ?></td>
		<td><?php echo $p['nombre']; ?></td>
		<td><?php echo $p['duracion']; ?></td>
		<?php if($p['vigente'] == 1) { echo '<td><a href="'.site_url('abm/planes/deactivate/'.$p['id']).'" class="btn btn-success btn-xs">Activo</a></td>'; }
			else { echo '<td><a href="'.site_url('abm/planes/activate/'.$p['id']).'" class="btn btn-danger btn-xs">Inactivo</a></td>'; } ?>
		
		<td>
            <a href="<?php echo site_url('abm/planes/edit/'.$p['id']); ?>" class="btn btn-info btn-xs">Editar</a> 
            <a href="<?php echo site_url('abm/planes/remove/'.$p['id']); ?>" class="btn btn-danger btn-xs">Eliminar</a>
        </td>
    </tr>
	<?php } ?>
</table>

<div class="clearfix">
	<div class="float-right">
	    <?php echo $this->pagination->create_links(); ?>    
	</div>
</div>

<hr>
