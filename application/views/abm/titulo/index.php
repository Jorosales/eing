<div class="clearfix">
	<div class="float-right">
		<a href="<?php echo site_url('titulo/add'); ?>" class="btn btn-success">Nuevo Título</a> 
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
		<th>Plan</th>
		<th>Orientación</th>
		<th>Nombre</th>
		<th>Acciones</th>
    </tr>
	<?php foreach($titulos as $t){ ?>
    <tr>
		<td><?php echo $t['id']; ?></td>
		<td><?php echo $t['plan']; ?></td>
		<td><?php echo $t['orientacion']; ?></td>
		<td><?php echo $t['nombre']; ?></td>
		<td>
            <a href="<?php echo site_url('titulo/edit/'.$t['id']); ?>" class="btn btn-info btn-xs">Editar</a> 
            <a href="<?php echo site_url('titulo/remove/'.$t['id']); ?>" class="btn btn-danger btn-xs">Eliminar</a>
        </td>
    </tr>
	<?php } ?>
</table>

<div class="clearfix">
	<div class="float-right">
	    <?php echo $this->pagination->create_links(); ?>    
	</div>
</div>
