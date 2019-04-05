<div class="clearfix">
	<div class="float-right">
		<a href="<?php echo site_url('carrera/add'); ?>" class="btn btn-success">Nueva Carrera</a> 
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
		<?php 
		//<th>Presentacion</th>
		//<th>Perfil</th> 
		?>
		<th>Acciones</th>
    </tr>
	<?php foreach($carrera as $c){ ?>
    <tr>
		<td><?php echo $c['id']; ?></td>
		<td><?php echo $c['nombre']; ?></td>
		<td><?php echo $c['plan_pdf']; ?></td>
		<td><?php echo $c['imagen']; ?></td>
		<?php //<td><?php echo $c['presentacion']; </td> ?>
		<?php //<td><?php echo $c['perfil']; </td> ?>
		<td>
            <a href="<?php echo site_url('carrera/edit/'.$c['id']); ?>" class="btn btn-info btn-xs">Editar</a> 
            <a href="<?php echo site_url('carrera/remove/'.$c['id']); ?>" class="btn btn-danger btn-xs">Eliminar</a>
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
