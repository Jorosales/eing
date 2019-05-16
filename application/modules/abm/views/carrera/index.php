
<div class="clearfix">
	<div class="float-right">
		<a href="<?php echo site_url('abm/carrera/add'); ?>" class="btn btn-success">Nueva Carrera</a> 
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
		<th>Plan Pdf</th>
		<th>Imagen</th>
		<th>Activo</th>
		<th>Acciones</th>
    </tr>

	<?php foreach($carrera as $c){ ?>
    <tr>
		<td><?php echo $c['id']; ?></td>
		<td><?php echo $c['nombre']; ?></td>
		<td><?php echo $c['plan_pdf']; ?></td>
		<td>
			<img style="height: 140px; width: 140px;" src="<?=base_url(IMAGES_UPLOAD.$c['imagen']); ?>" alt="..." class="img-thumbnail">
		</td>
		<?php if($c['activo'] == 1) { echo '<td><a href="http://localhost/eing/abm/carrera/deactivate/'.$c['id'].'" class="btn btn-success btn-xs">Activo</a></td>'; }
			else { echo '<td><a href="http://localhost/eing/abm/carrera/activate/'.$c['id'].'" class="btn btn-danger btn-xs">Inactivo</a></td>'; } ?>
		<td>
            <a href="<?php echo site_url('abm/carrera/edit/'.$c['id']); ?>" class="btn btn-info btn-xs">Editar</a> 
            <a href="<?php echo site_url('abm/carrera/remove/'.$c['id']); ?>" class="btn btn-danger btn-xs">Eliminar</a>
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

							
