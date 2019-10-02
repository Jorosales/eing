<main>
	<div class="row col align-self-center" >
		<div class="col-sm-3"></div>
		<div class="jumbotron col-sm-12 align-center sombreado" style="border-radius: 20px;">
			<h1><?php echo $publicacion[0]->titulo;?></h1>	
			<hr>
			<?php echo $publicacion[0]->fecha;?>	
			<?php echo $publicacion[0]->contenido;?>	
			<hr>
			Creador por: <?php echo $publicacion[0]->creador;?>	
		</div>
		<div class="col-sm-3"></div>
	</div>

	<hr class="extra-margins">
</main>
