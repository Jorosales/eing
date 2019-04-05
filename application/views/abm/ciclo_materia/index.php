<div class="clearfix">
	<div class="float-right">
		<a href="<?php echo site_url('ciclo_materia/add'); ?>" class="btn btn-success">Agregar</a> 
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
		<th>id</th>
		<th>Ciclo</th>
		<th>Materia</th>
		<th>Regimén</th>
		<th>Horas</th>
		<th>Hs Total</th>
		<th>Programa</th>
		<th>Anio</th>
		<th>Codigo</th>
		<th>Actions</th>
    </tr>
	<?php foreach($ciclo_materia as $c){ ?>
    <tr>
		<td><?php echo $c['id']; ?></td>
		<td><?php echo $c['nombre_ciclo']; ?></td>
		<td><?php echo $c['nombre_materia']; ?></td>
		<td><?php echo $c['nombre_regimen']; ?></td>
		<td><?php echo $c['horas']; ?></td>
		<td><?php echo $c['hs_total']; ?></td>
		<td><?php echo $c['programa']; ?></td>
		<td><?php echo $c['anio']; ?></td>
		<td><?php echo $c['codigo']; ?></td>
		<td>
            <a href="<?php echo site_url('ciclo_materia/edit/'.$c['id']); ?>" class="btn btn-info btn-xs">Editar</a> 
            <a href="<?php echo site_url('ciclo_materia/remove/'.$c['id']); ?>" class="btn btn-danger btn-xs">Eliminar</a>
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
