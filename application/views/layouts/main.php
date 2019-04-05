<!DOCTYPE html>
<html>
	<?php 
		$this->load->view('head');
	?>
	<body>
		<?php $this->load->view('nav');?>
		
		<div class="container">
		<?php 
			if(isset($_view) && $_view)
		    $this->load->view($_view);
		?>
		</div>
	
		<?php 
			$this->load->view('footer');
		?>
	</body>
</html>
