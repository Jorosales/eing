<div class="clearfix">
	<div class="float-right">
		<a href="<?php echo site_url('ciclo/add'); ?>" class="btn btn-success">Nuevo Ciclo</a> 
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
		<th>Plan</th>
		<th>Orientación</th>
		<th>Acciones</th>
    </tr>
	<?php foreach($ciclos as $c){ ?> 
    <tr>
		<td><?php echo $c['id']; ?></td>
		<td><?php echo $c['nombre']; ?></td>
		<td><?php echo $c['plan']; ?></td>
		<td><?php if(isset($c['orientacion'])) {echo $c['orientacion'];} else {echo 'Sin Orientación';} ?></td>
		
		<td>
            <a href="<?php echo site_url('ciclo/edit/'.$c['id']); ?>" class="btn btn-info btn-xs">Editar</a> 
            <a href="<?php echo site_url('ciclo/remove/'.$c['id']); ?>" class="btn btn-danger btn-xs">Eliminar</a>
        </td>
    </tr>
	<?php } ?>
</table>

<div class="clearfix">
	<div class="float-right">
	    <?php echo $this->pagination->create_links(); ?>    
	</div>
</div>
