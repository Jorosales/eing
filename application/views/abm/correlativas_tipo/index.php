<div class="clearfix">
	<div class="float-right">
		<a href="<?php echo site_url('correlativas_tipo/add'); ?>" class="btn btn-success">Nuevo Tipo</a> 
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
		<th>Descripcion</th>
		<th>Acciones</th>
    </tr>
	<?php foreach($correlativas_tipo as $c){ ?>
    <tr>
		<td><?php echo $c['id']; ?></td>
		<td><?php echo $c['descripcion']; ?></td>
		<td>
            <a href="<?php echo site_url('correlativas_tipo/edit/'.$c['id']); ?>" class="btn btn-info btn-xs">Editar</a> 
            <a href="<?php echo site_url('correlativas_tipo/remove/'.$c['id']); ?>" class="btn btn-danger btn-xs">Eliminar</a>
        </td>
    </tr>
	<?php } ?>
</table>

<div class="clearfix">
	<div class="float-right">
	    <?php echo $this->pagination->create_links(); ?>    
	</div>
</div>
