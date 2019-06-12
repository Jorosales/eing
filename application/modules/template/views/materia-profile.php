<div class="jumbotron">
  	<div class="row">
        <div class="col-md-8 col-xs-12 col-sm-6 col-lg-10">
            <div class="container" style="border-bottom:1px solid black">
            	<h2><?= $ciclo_materia['nombre']; ?></h2>
            </div>
            
            <ul class="container details">
                <li><p><span class="glyphicon glyphicon-education one" style="width:50px;"></span><?= $this->template->get_item($ciclos, $ciclo_materia['id_ciclo'], 'carrera');?></p></li>

                <li><p><span class="glyphicon glyphicon-bookmark one" style="width:50px;"></span><?= $this->template->get_item($ciclos, $ciclo_materia['id_ciclo'], 'plan');?></p></li>

                <li><p><span class="glyphicon glyphicon-retweet one" style="width:50px;"></span><?= $this->template->get_item($ciclos, $ciclo_materia['id_ciclo'], 'orientacion');?></p></li>

                <li><p><span class="glyphicon glyphicon-refresh one" style="width:50px;"></span><?= $this->template->get_item($ciclos, $ciclo_materia['id_ciclo'], 'nombre');?></p></li>

                <li><p><span class="glyphicon glyphicon-th-large one" style="width:50px;"></span><?= $this->template->get_item($regimenes, $ciclo_materia['id_regimen'], 'nombre');?></p></li>
            	
                <li><p><span class="glyphicon glyphicon-check one" style="width:50px;"></span><?= $this->template->get_item($tipos, $ciclo_materia['id_tipo'], 'nombre');?></p></li>
                
                <li><p>
                	<span class="glyphicon glyphicon-pencil one" style="width:50px;"></span>
                	<?php echo anchor("abm/ciclo_materia/edit/".$ciclo_materia['id'], '<span class="btn btn-primary btn-xs">Editar</span>') ;?>
                	</p>
                </li>
            </ul>
        </div>
    </div>
</div>