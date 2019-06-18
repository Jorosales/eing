<?php if(isset($alerta))  {  
	echo $alerta;
    } 
?>


<hr>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading"><?=  $carrera['data'][0]->carrera ?></div>
        <div class="panel-body">

            <!-- TREEVIEW CODE -->
            <ul class="treeview">
                <li><a href="#"><?= $carrera['data'][0]->plan  ?></a>
                	<ul>
            			<?php 
            				if($carrera['orientaciones']) {
            					echo '<li><a href="#">Orientaciones</a>'; 
            					echo '<ul>';
            					foreach ($carrera['data'] as $orientacion) {
            						echo '<li><a href="#">'.$orientacion->orientacion.'</a></li>';
            					}
            					echo "</ul>
            						  </li>";
            				}
            			?>

						<?php 
            				echo '<li><a href="#">Ciclos</a> <ul>';
            				foreach ($carrera['ciclos'] as $ciclos) {
            					echo '<li><a href="#">'.$ciclos->nombre.'</a>';
            					
            					echo "<ul>";
            					foreach ($ciclos->materias as $materia) {
            						echo '<li><a href="#">'.$materia->materia.'</a>';
            						if(isset($materia->orientaciones)){
            							echo "<ul>";
		            					foreach ($materia->orientaciones as $mo) {
		            						echo '<li><a href="#">'.$mo->nombre.'</a>';
		            						
											echo "<ul>";
		            						foreach ($mo->materias as $m) {
		            							echo '<li><a href="#">'.$m->nombre.'</a></li>';
		            						}
		            						echo "</ul></li>";
		            					}
		            					echo "</ul></li>";
		            				}
            					}
            					echo "</ul></li>";	
            				}
            				echo "</ul></li>";
            			?>
            		</ul>
            	</li>
            </ul>
            <!-- TREEVIEW CODE -->


        </div>
    </div>


<hr>

							
<script type="text/javascript">

	 $.fn.extend({
  treeview: function() {
    return this.each(function() {
      var tree = $(this);
      
      tree.addClass('treeview-tree');
      tree.find('li').each(function() {
        var stick = $(this);
      });
      tree.find('li').has("ul").each(function () {
        var branch = $(this);
        
        branch.prepend("<i class='tree-indicator glyphicon glyphicon-chevron-right'></i>");
        branch.addClass('tree-branch');
        branch.on('click', function (e) {
          if (this == e.target) {
            var icon = $(this).children('i:first');
            
            icon.toggleClass("glyphicon-chevron-down glyphicon-chevron-right");
            $(this).children().children().toggle();
          }
        })
        branch.children().children().toggle();
      	
        branch.children('.tree-indicator, button, a').click(function(e) {
          branch.click();
          
          e.preventDefault();
        });
      });
    });
  }
});

$(window).on('load', function () {
	$('.treeview').each(function () {
		var tree = $(this);
		tree.treeview();
		})
	})
</script>