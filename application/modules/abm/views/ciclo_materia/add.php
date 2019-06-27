<div class="col-lg-12">
	<div class="box box-success">

		<div class="box-header with-border">
		  	<h3 class="box-title"><?php echo lang('create_cycle_course_heading');?></h3>
		</div>

		<?php echo form_open_multipart('abm/ciclo_materia/add',array("class"=>"form-horizontal")); ?>

		<?php echo $this->template->cargar_select(lang('form_cycle'), 'id_ciclo', '*', form_error('id_ciclo'), $ciclos, $this->input->post('id_ciclo')); ?>

		<?php echo $this->template->cargar_select(lang('form_course'), 'id_materia', '*', form_error('id_materia'), $vacio='', $this->input->post('id_materia')); ?>

		<?php echo $this->template->cargar_select(lang('form_regimen'), 'id_regimen', '*', form_error('id_regimen'), $regimenes, $this->input->post('id_regimen')); ?>

		<?php echo $this->template->cargar_input(lang('form_hours'), 'horas', 'text', '', form_error('horas'), $this->input->post('horas')); ?>

		<?php echo $this->template->cargar_input(lang('form_total_hours'), 'hs_total', 'text', '', form_error('hs_total'), $this->input->post('hs_total')); ?>

		<?php echo $this->template->cargar_input(lang('form_program'), 'programa', 'file', '', form_error('programa'), $this->input->post('programa')); ?>
		
		<?php echo $this->template->cargar_select(lang('form_year'), 'anio', '*', form_error('anio'), $vacio='', $this->input->post('anio')); ?>

		<?php echo $this->template->cargar_input(lang('form_code'), 'codigo', 'text', '*', form_error('codigo'), $this->input->post('codigo')); ?>
		
		<?php echo $this->template->cargar_submit(); ?>

	<?php echo form_close(); ?>

		<br><br>
	</div>
</div>


<script>
	
$(document).ready(function(){
	$('#id_ciclo').change(function(){
		var ciclo = $('#id_ciclo').val();
		if(ciclo != '')
		{
			$.ajax({
				url:"<?php echo base_url(); ?>abm/ciclo_materia/fetch_materias",
				method:"POST",
				data:{ciclo_id:ciclo},
				success:function(data)
				{
					$('#id_materia').html(data);
				}
			});
		}
	});

	$('#id_ciclo').change(function(){
		var ciclo = $('#id_ciclo').val();
		if(ciclo != '')
		{
			$.ajax({
				url:"<?php echo base_url(); ?>abm/ciclo_materia/fetch_anios",
				method:"POST",
				data:{ciclo_id:ciclo},
				success:function(data)
				{
					$('#anio').html(data);
				}
			});
		}
	});
});
</script>
