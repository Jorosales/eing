<?php if(isset($alerta))  {  
	echo $alerta;
	} 
?>

<div class="clearfix">
	<div class="float-right">
		<a href="<?php echo site_url('abm/materia/add'); ?>" class="btn btn-success">Nueva Materia</a> 
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
		<th>Nombre</th>
		<th>Tipo</th>
		<th>Acciones</th>
    </tr>
	<?php foreach($materias as $m){ ?>
    <tr>
		<td><?php echo $m['id']; ?></td>
		<td><?php echo $m['nombre']; ?></td>
		<td><?php echo $m['tipo']; ?></td>
		<td>
            <a href="<?php echo site_url('abm/materia/edit/'.$m['id']); ?>" class="btn btn-info btn-xs">Editar</a> 
            <a href="<?php echo site_url('abm/materia/remove/'.$m['id']); ?>" class="btn btn-danger btn-xs">Eliminar</a>
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