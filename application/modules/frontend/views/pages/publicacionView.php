<main>
	<div class="row col align-self-center" >
		<div class="col-sm-3"></div>
		<div class="jumbotron col-sm-12 align-center sombreado" style="border-radius: 20px; text-align: justify;">
			<h1 style="text-align: center;"><?php echo $publicacion[0]->titulo;?></h1>	
			<hr>
			
			<?php if($publicacion[0]->fecha!=0){ ?>
                    <p style='margin-left:10px' class="fecha">Fecha: <b><?= date("d-m-Y", strtotime($publicacion[0]->fecha)); ?></b></p>
            <?php } ?>
            <?php if($publicacion[0]->comienzo!=0){ ?>
                    <p style='margin-left:10px'>Inicio:&nbsp <b><?=date("H:i", strtotime($publicacion[0]->comienzo));?></b></p>
            <?php } ?>
            <?php if($publicacion[0]->fin!=0){ ?>
                    <p style='margin-left:10px'>Fin:&nbsp&nbsp&nbsp&nbsp <b><?=date("H:i", strtotime($publicacion[0]->fin));?></b></p>
            <?php } ?>
			
			<br>
			<?php echo $publicacion[0]->contenido;?>	
			<hr>
			<p style="text-align: right;">Autor: <?php echo $publicacion[0]->creador;?></p>
		</div>
		<div class="col-sm-3"></div>
	</div>

	<hr class="extra-margins">
</main>
