    <main>

        <div class="container">
            <h1>Publicaciones</h1>

            <div class="row">    
                <input type="text" class="form-control" placeholder="Buscar..." id="entradafilter">
            </div>

            <table class="table table-hover" id="myTable">
                <thead>
                    <tr>
                        <th></th>
                        <th><a>Fecha</a></th>
                        <th><a>Título<a/></th>
                        <th><a>Creador</a></th>
                    </tr>
                </thead>
                
				<tbody class="contenidobusqueda">
					<?php foreach ($listado as $row) {?>
						<tr> 
							<td> 
								<a href="<?= base_url('/publicacion/'.$row->id)?>">
									<i class="fas fa-search-plus"></i>
								</a>
							</td>
							<td><?=$row->fecha_creacion;?></td>
							<td><?=$row->titulo;?></td>
							<td><?=$row->creador;?></td>
						</tr>
					<?php } ?>
				</tbody>
            </table>
    
        </div>

		<hr>

    </main>
