<!-- Common Pages -->
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>Desactivar Carrera</h1>
				</section>

				<!-- Main content -->
				<section class="content">
					<!-- Your Page Content Here -->
					<div class="box box-primary">
						<div class="box-header with-border">
							<h3 class="box-title"><?php echo 'Estás seguro que quieres desactivar la carrera '.$carrera['nombre'];?></h3>
						</div>
						<!-- /.box-header -->
						<?php echo form_open("abm/carrera/deactivate/".$carrera['id']."");?>
							<div class="box-body">
								<div class="form-group">
									<?php echo 'SI';?>
									<input type="radio" name="confirm" value="yes" checked="checked" /> 
									&nbsp;
									<?php echo 'NO';?>
									<input type="radio" name="confirm" value="no" />
								</div>
								<?php //echo form_hidden($csrf); ?>
								<?php echo form_hidden(array('id'=>$carrera['id'])); ?>
							</div>
							<div class="box-footer">
								<button type="submit" class="btn btn-primary">Guardar</button>
							</div>
						<?php echo form_close();?>
					</div>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->