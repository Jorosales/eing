<div class="jumbotron">
  	<div class="row">
        <div class="col-md-8 col-xs-12 col-sm-6 col-lg-10">
            <div class="container" style="border-bottom:1px solid black">
            	<h2><?= $docente['apellido'].', '.$docente['nombre'].' '.$docente['nombre_2']; ?></h2>
            </div>
            
            <ul class="container details">
            	<li><p><span class="glyphicon glyphicon-education one" style="width:50px;"></span><?= $this->template->get_item($categorias, $docente['id_docente_categoria'], 'nombre');?></p></li>
            	
            	<li><p><span class="glyphicon glyphicon-envelope one" style="width:50px;"></span>
            		<?= (empty($docente['email1']))?'': $docente['email1']; ?></p></li>
                
                <li><p><span class="glyphicon glyphicon-envelope one" style="width:50px;"></span>
            		<?= (empty($docente['email2']))?'': $docente['email2']; ?></p></li>
                
                <li><p>
                	<span class="glyphicon glyphicon-pencil one" style="width:50px;"></span>
                	<?php echo anchor("abm/docente/edit/".$docente['id'], '<span class="btn btn-primary btn-xs">Editar</span>') ;?>
                	</p>
                </li>
            </ul>
        </div>
    </div>
</div>