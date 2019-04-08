<div class="clearfix">
	<div class="float-right">
		<a href="<?php echo site_url('correlativa/add'); ?>" class="btn btn-success">Nueva Correlativa</a> 
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
		<th>Materia</th>
		<th>Correlativa</th>
		<th>Tipo Correlativad</th>
		<th>Acciones</th>
    </tr>
	<?php foreach($correlativas as $c){ ?>
    <tr>
		<td><?php echo $c['id']; ?></td>
		<td><?php echo $c['ciclo_materia']; ?></td>
		<td><?php echo $c['correlativa']; ?></td>
		<td><?php echo $c['tipo']; ?></td>
		<td>
            <a href="<?php echo site_url('correlativa/edit/'.$c['id']); ?>" class="btn btn-info btn-xs">Editar</a> 
            <a href="<?php echo site_url('correlativa/remove/'.$c['id']); ?>" class="btn btn-danger btn-xs">Eliminar</a>
        </td>
    </tr>
	<?php } ?>
</table>

<div class="clearfix">
	<div class="float-right">
	    <?php echo $this->pagination->create_links(); ?>    
	</div>
</div>
