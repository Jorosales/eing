<div class="container-fluid text-center">    
  	<div class="row content">
    
	    <!-- Eventos -->
	    <div class="container col-lg-2 sidenav eventos" id="tourpackages-carousel">
        	<div class="row">
	        	<div class="thumbnail">
	             	<div class="container" style="min-height: 250px;">
		                <?php echo $calendario ?>
		            </div>
	        	</div>
	        	

		      	<div class="thumbnail">
	             	<div class="caption">
		                <div class='col-lg-12'>
		                    <span class="glyphicon glyphicon-credit-card"></span>
		                    <span class="glyphicon glyphicon-trash pull-right text-primary"></span>
		                </div>
		                <div class='col-lg-12 well well-add-card'>
		                    <h4>John Deo Mobileldddd</h4>
		                </div>
		                <div class='col-lg-12'>
		                    <p>4111xxxxxxxx3265</p>
		                    <p class"text-muted">Exp: 12-08</p>
		                </div>
		                <button type="button" class="btn btn-primary btn-xs btn-update btn-add-card">Update</button>
		                <button type="button" class="btn btn-danger btn-xs btn-update btn-add-card">Vrify Now</button>
		                <span class='glyphicon glyphicon-exclamation-sign text-danger pull-right icon-style'></span>
	            	</div>
	        	</div>

	        	<div class="thumbnail">
	             	<div class="caption">
		                <div class='col-lg-12'>
		                    <span class="glyphicon glyphicon-credit-card"></span>
		                    <span class="glyphicon glyphicon-trash pull-right text-primary"></span>
		                </div>
		                <div class='col-lg-12 well well-add-card'>
		                    <h4>John Deo Mobileldddd</h4>
		                </div>
		                <div class='col-lg-12'>
		                    <p>4111xxxxxxxx3265</p>
		                    <p class"text-muted">Exp: 12-08</p>
		                </div>
		                <button type="button" class="btn btn-primary btn-xs btn-update btn-add-card">Update</button>
		                <button type="button" class="btn btn-danger btn-xs btn-update btn-add-card">Vrify Now</button>
		                <span class='glyphicon glyphicon-exclamation-sign text-danger pull-right icon-style'></span>
	            	</div>
	        	</div>
	    	</div>
	    </div>
	    <!-- Eventos -->

	    <!-- Carreras -->
	    <div class="col-lg-8 row align-content-center"> 
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
	        	<div class="thumbnail">
	             	<div class="caption">
		                <div class='col-lg-12'>
		                    <span class="glyphicon glyphicon-credit-card"></span>
		                    <span class="glyphicon glyphicon-trash pull-right text-primary"></span>
		                </div>
		                <div class='col-lg-12 well well-add-card'>
		                    <h4>Publicacion de articulo actualizada</h4>
		                </div>
		                <div class='col-lg-12'>
		                    <p>kjhkj/p>
		                    <p class"text-muted">Fecha: 12-08</p>
		                </div>
	            	</div>
	        	</div>
	        	

		      	<div class="thumbnail">
	             	<div class="caption">
		                <div class='col-lg-12'>
		                    <span class="glyphicon glyphicon-credit-card"></span>
		                    <span class="glyphicon glyphicon-trash pull-right text-primary"></span>
		                </div>
		                <div class='col-lg-12 well well-add-card'>
		                    <h4>John Deo Mobileldddd</h4>
		                </div>
		                <div class='col-lg-12'>
		                    <p>4111xxxxxxxx3265</p>
		                    <p class"text-muted">Exp: 12-08</p>
		                </div>
		                <button type="button" class="btn btn-primary btn-xs btn-update btn-add-card">Update</button>
		                <button type="button" class="btn btn-danger btn-xs btn-update btn-add-card">Vrify Now</button>
		                <span class='glyphicon glyphicon-exclamation-sign text-danger pull-right icon-style'></span>
	            	</div>
	        	</div>

	        	<div class="thumbnail">
	             	<div class="caption">
		                <div class='col-lg-12'>
		                    <span class="glyphicon glyphicon-credit-card"></span>
		                    <span class="glyphicon glyphicon-trash pull-right text-primary"></span>
		                </div>
		                <div class='col-lg-12 well well-add-card'>
		                    <h4>John Deo Mobileldddd</h4>
		                </div>
		                <div class='col-lg-12'>
		                    <p>4111xxxxxxxx3265</p>
		                    <p class"text-muted">Exp: 12-08</p>
		                </div>
		                <button type="button" class="btn btn-primary btn-xs btn-update btn-add-card">Update</button>
		                <button type="button" class="btn btn-danger btn-xs btn-update btn-add-card">Vrify Now</button>
		                <span class='glyphicon glyphicon-exclamation-sign text-danger pull-right icon-style'></span>
	            	</div>
	        	</div>
	    	</div>
	    </div>
	    <!-- Articulos -->

  	</div>
</div>