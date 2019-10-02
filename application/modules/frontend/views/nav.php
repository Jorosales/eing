    
    <?php  
        $ci = &get_instance();
        $ci->load->model("Carrera_model");

        $carreras= $ci->Carrera_model->getAllActivates();
    ?>
    
    <nav class="navbar navbar-escuela bg-escuela navbar-expand-lg margen-inf" style="background-color: <?= $escuela['color'] ?>">
		
		<a class="navbar-brand" href="<?= base_url('') ?>">
            <img src="<?= base_url('assets/images/logo.png') ?>" alt="logo">
        </a>
		
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
        
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			
            <ul class="navbar-nav mr-auto">
                        
                <li class="nav-item btn-group">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Carreras 
                    </a>
                    <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                    <?php foreach ($carreras as $row) {?>
                        <a class="dropdown-item" href="<?= base_url("/carrera/".$row->id) ?>"><?=$row->nombre;?></a>
                    <?php } ?>    
                    </div>
				</li>
				
                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('docentes') ?>">Docentes</a>
				</li>

                <li class="nav-item">
                    <a class="nav-link" href="<?= base_url('publicacion') ?>">Publicaciones</a>
                </li>
                
            </ul>              
		</div>
	</nav>
