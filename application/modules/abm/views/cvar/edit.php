<?php if(isset($alerta))  {  
	echo $alerta;
	} 
?>

<?php echo form_open('abm/cvar/edit/'.$docente['id'],array("class"=>"form-horizontal")); ?>
	
	<div class="container">    
        <div class="jumbotron">
          	<div class="row">
		        <div class="col-md-8 col-xs-12 col-sm-6 col-lg-10">
		            <div class="container" style="border-bottom:1px solid black">
		            	<h2><?= $docente['apellido'].', '.$docente['nombre'].' '.$docente['nombre_2']; ?></h2>
		            </div>
		            
		            <ul class="container details">
		            	<li><p><span class="glyphicon glyphicon-education one" style="width:50px;"></span><?= $this->template->get_item($categorias, $docente['id_docente_categoria'], 'nombre');?></p></li>
		            	<li><p><span class="glyphicon glyphicon-envelope one" style="width:50px;"></span><?= $docente['email1']; ?></p></li>
		                <li><p><span class="glyphicon glyphicon-envelope one" style="width:50px;"></span><?= $docente['email2']; ?></p></li>
		                
		                <li><p>
		                	<span class="glyphicon glyphicon-pencil one" style="width:50px;"></span>
		                	<?php echo anchor("abm/docente/edit/".$docente['id'], '<span class="btn btn-primary btn-xs">Editar</span>') ;?>
		                	</p>
		                </li>
		            </ul>
		        </div>
	        </div>
        </div>
    	
    	<?php echo $this->template->cargar_textarea(lang('form_area'), 'areas', '', form_error('areas'), ($this->input->post('areas') ? $this->input->post('areas') : $cvar['areas'])); ?>

		<?php echo $this->template->cargar_textarea(lang('form_expertes'), 'experticia', '', form_error('experticia'), ($this->input->post('experticia') ? $this->input->post('experticia') : $cvar['experticia'])); ?>
		
		<?php echo $this->template->cargar_textarea(lang('form_grade'), 'grado', '', form_error('grado'), ($this->input->post('grado') ? $this->input->post('grado') : $cvar['grado'])); ?>
		
		<?php echo $this->template->cargar_textarea(lang('form_specialization'), 'especializacion', '', form_error('especializacion'), ($this->input->post('especializacion') ? $this->input->post('especializacion') : $cvar['especializacion'])); ?>
		
		<?php echo $this->template->cargar_textarea(lang('form_master'), 'maestria', '', form_error('maestria'), ($this->input->post('maestria') ? $this->input->post('maestria') : $cvar['maestria'])); ?>
		
		<?php echo $this->template->cargar_textarea(lang('form_doctorate'), 'doctorado', '', form_error('doctorado'), ($this->input->post('doctorado') ? $this->input->post('doctorado') : $cvar['doctorado'])); ?>
		
		<?php echo $this->template->cargar_submit(); ?>

    </div>

	
	
<?php echo form_close(); ?>