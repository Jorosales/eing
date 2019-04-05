<html lang="es">
	<body>	<div class="container">
			<div class="row col-12 align-content-center" >
				<?php foreach ($carreras as $row) {?>
					<a href="<?= base_url("/carrera/verCarrera/".$row->id) ?>">
						<div class="card" style="width: 20rem; border-radius: 20px;">
							<?php if ($row->imagen <> ''){ ?>
								<img class="card-img-top" style="border-radius: 20px;" src="<?= base_url('assets/uploads/images/'.$row->imagen) ?>" alt="<?= $row->nombre?>">
							<?php }else { ?>
								<img class="card-img-top" src="<?= base_url('assets/uploads/images/default.jpg') ?>" alt="<?= $row->nombre?>">
							<?php } ?>
							<div class="card-body">
								<a href="<?= base_url("/carrera/verCarrera/".$row->id) ?>" class="btn btn-primary float-right">Ver Carrera</a>
							</div>
						</div>
					</a>
				<?php } ?> 
			</div></div>
	</body>
	<hr>
</html>
