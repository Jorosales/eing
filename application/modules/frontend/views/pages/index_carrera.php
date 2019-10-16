<div class="container-fluid text-center">    
  	<div class="row content">
    
	    <!-- Eventos -->
	    <div class="container col-lg-2 sidenav eventos" id="tourpackages-carousel">
        	<div class="row">
	        	<div class="container card border-primary mb-3 text-center" style="width: 250px;">
		                <?php echo $calendario ?>
	        	</div>

	        	<?php foreach ($prox_even as $e) { ?>
	        		<div class="card border-success mb-3 text-center" style="width: 250px;">
					  <div class="card-header">
					    <a class="collapsed card-link text-center" data-toggle="collapse" href="#<?= $e->id ?>">
							<h5 class="card-title text-dark"><?= $e->titulo ?></h5>
							<h6 class="card-subtitle mb-2 text-muted"><?= $e->fecha ?></h6>
						</a>
					  </div>
					  <div id="<?= $e->id ?>" class="collapse" data-parent="#accordion">
					    <div class="card-body text-left">
					    
						  <table class="table table-hover group table-striped">
						  	<tbody>   
						  	  <tr>
						  		<td>Inicio:</td>
						  		<td><?= $e->comienzo ?></td>
						  	 </tr>
						  			
						  		<tr>
						  		<td>Fin:</td>
						  		<td><?= $e->fin ?></td>
						  	 </tr>
						  
						  		<tr>
						  		<td>Lugar:</td>
						  		<td><?= $e->lugar ?></td>
						  	 </tr>
						  	</tbody>
						  	</table>
					    </div>
						
						<div class="card-footer text-muted">
							<a role="button" target="_BLANK" href="<?= base_url('publicacion/'.$e->id) ?>" class="btn btn-sm btn-info"><font style="font-size: 12px;">Ver Más</font></a>
						</div>
						
					   </div>
					</div>

	        	<?php } ?>
	        	
	    	</div>
	    </div>
	    <!-- Eventos -->

	    <!-- Carreras -->
	    <div class="container col-lg-8 row align-content-center"> 
	      <?php foreach ($carreras as $row) {?>
				<a href="<?= base_url("/carrera/".$row->id) ?>">
					<div class="card" style="width: 20rem; border-radius: 20px;">
						<?php if ($row->imagen <> ''){ ?>
							<img class="card-img-top" style="border-radius: 20px;" src="<?= base_url(IMAGES_UPLOAD.$row->imagen) ?>" alt="<?= $row->nombre?>">
						<?php }else { ?>
							<img class="card-img-top" src="<?= base_url('assets/images/default.jpg') ?>">
						<?php } ?>
						<div class="card-body">
							<a href="<?= base_url("/carrera/".$row->id) ?>" class="btn btn-primary float-right">Ver Carrera</a>
						</div>
					</div>
				</a>
			<?php } ?> 
	    </div>
	    <!-- Carreras -->
	    

	    <!-- Articulos -->
	    <div class="container col-lg-2 sidenav articulos" id="tourpackages-carousel">
        	<div class="row">

        		<?php foreach ($ult_art as $a) { ?>
        			<div class="thumbnail">
		             	<div class="caption">
			                <div class='col-lg-12'>
			                    <span class="glyphicon glyphicon-credit-card"></span>
			                    <span class="glyphicon glyphicon-trash pull-right text-primary"></span>
			                </div>
			                <div class='col-lg-12 well well-add-card'>
			                    <h4><?= $a->titulo ?></h4>
			                </div>
			                <div class='col-lg-12'>
			                    <p>4111xxxxxxxx3265</p>
			                    <p class= "text-muted">Exp: 12-08</p>
			                </div>
			                <a target="_BLANK" href="<?= base_url('publicacion/'.$a->id) ?>" type="button" class="btn btn-primary btn-xs btn-update btn-add-card">Ver Más</a>
		            	</div>
		        	</div>
        		<?php } ?>

	    	</div>
	    </div>
	    <!-- Articulos -->

  	</div>
</div>