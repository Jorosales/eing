<div class="clearfix">
	<div class="float-right">
		<a href="<?php echo site_url('orientaciones/add'); ?>" class="btn btn-success">Nueva orientación</a> 
	</div>
</div>

<table class="table table-striped table-bordered">
    <tr>
		<th>ID</th>
		<th>Plan</th>
		<th>Nombre</th>
		<th>Acciones</th>
    </tr>
	<?php foreach($orientaciones as $o){ ?>
    <tr>
		<td><?php echo $o['id']; ?></td>
		<td><?php echo $o['plan']; ?></td>
		<td><?php echo $o['nombre']; ?></td>
		<td>
            <a href="<?php echo site_url('orientaciones/edit/'.$o['id']); ?>" class="btn btn-info btn-xs">Editar</a> 
            <a href="<?php echo site_url('orientaciones/remove/'.$o['id']); ?>" class="btn btn-danger btn-xs">Eliminar</a>
        </td>
    </tr>
	<?php } ?>
</table>
<div class="pull-right">
    <?php echo $this->pagination->create_links(); ?>    
</div>
