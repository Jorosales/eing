
<!-- <html lang="es">
	<body>	
		<div class="container">
			<div class="row col-12 align-content-center" >
				<?php foreach ($carreras as $row) {?>
					<a href="<?= base_url("/carrera/".$row->id) ?>">
						<div class="card" style="width: 20rem; border-radius: 20px;">
							<?php if ($row->imagen <> ''){ ?>
								<img class="card-img-top" style="border-radius: 20px;" src="<?= base_url(IMAGES_UPLOAD.$row->imagen) ?>" alt="<?= $row->nombre?>">
							<?php }else { ?>
								<img class="card-img-top" src="<?= base_url('assets/images/default.jpg') ?>" alt="<?= $row->nombre?>">
							<?php } ?>
							<div class="card-body">
								<a href="<?= base_url("/carrera/".$row->id) ?>" class="btn btn-primary float-right">Ver Carrera</a>
							</div>
						</div>
					</a>
				<?php } ?> 
			</div>
		</div>
	</body>
	<hr>
</html> -->

<div class="container-fluid text-center">    
  	<div class="row content">
    
	    <div class="col-lg-2 sidenav eventos">
	      <div class="well">
        		<h2 class="text-info">Economy</h2>
        		<p><span class="label label-info">BUDGET</span></p>
        		<ul>
        			<li>10 users</li>
        			<li>5TB of space</li>
        		</ul>          
        		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta.</p>
        		<hr>
        		<h3>$8.99 / month</h3>
        		<hr>
              <p><a class="btn btn-default btn-lg" href="#"><i class="icon-ok"></i> Select plan</a></p>
        	</div>
	      <div class="well">
        		<h2 class="text-info">Economy</h2>
        		<p><span class="label label-info">BUDGET</span></p>
        		<ul>
        			<li>10 users</li>
        			<li>5TB of space</li>
        		</ul>          
        		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta.</p>
        		<hr>
        		<h3>$8.99 / month</h3>
        		<hr>
              <p><a class="btn btn-default btn-lg" href="#"><i class="icon-ok"></i> Select plan</a></p>
        	</div>
	    </div>
	    
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
	    
	    <div class="col-lg-2 sidenav articulos">
        	<div class="well">
        		<h2 class="text-info">Economy</h2>
        		<p><span class="label label-info">BUDGET</span></p>
        		<ul>
        			<li>10 users</li>
        			<li>5TB of space</li>
        		</ul>          
        		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta.</p>
        		<hr>
        		<h3>$8.99 / month</h3>
        		<hr>
              <p><a class="btn btn-default btn-lg" href="#"><i class="icon-ok"></i> Select plan</a></p>
        	</div>

	      <div class="well">
        		<h2 class="text-info">Economy</h2>
        		<p><span class="label label-info">BUDGET</span></p>
        		<ul>
        			<li>10 users</li>
        			<li>5TB of space</li>
        		</ul>          
        		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta.</p>
        		<hr>
        		<h3>$8.99 / month</h3>
        		<hr>
              <p><a class="btn btn-default btn-lg" href="#"><i class="icon-ok"></i> Select plan</a></p>
        	</div>
	    
	    </div>

  	</div>
</div>