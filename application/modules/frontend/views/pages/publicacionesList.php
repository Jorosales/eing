    <main>
        <div class="container">
            <h1><?= (isset($listado[0]->tipo_nombre))?$listado[0]->tipo_nombre:"Publicaciones"?></h1>
            <hr>
            <div class="row">
                <div class="[ col-xs-12 col-sm-offset-2 col-sm-12 ]">
                    <ul class="event-list">
                        <?php foreach ($listado as $row) {?>
                            
                            <li onclick="location.href='<?= base_url('/publicacion/'.$row->id)?>';">

                                <?php if($row->fecha!=0){ ?>
                                <time datetime="<?=$row->fecha;?>">
                                    <span class="day"><?= date("d", strtotime($row->fecha)); ?></span>
                                    <span class="month"><?= date("M", strtotime($row->fecha)); ?></span>
                                    <span class="year"><?= date("Y", strtotime($row->fecha)); ?></span>
                                </time>
                                <?php }else{ ?>
                                    <img src="<?= base_url('assets/images/arrow.png')?>" alt="">
                                <?php } ?>
                                <div class="info">
                                    <h2 class="title"><?= $row->titulo; ?></h2>
                                    
                                    <?php if($row->fecha!=0){ ?>
                                        <p class="fecha">Fecha: <?= date("d-m-Y", strtotime($row->fecha)); ?> 
                                                <?php if($row->comienzo!=0){ ?>
                                                    <span style='margin-left:10px'>Inicio: <b><?=date("H:i", strtotime($row->comienzo));?></b></span>
                                                <?php } ?>
                                                <?php if($row->fin!=0){ ?>
                                                    <span style='margin-left:10px'>Fin: <b><?=date("H:i", strtotime($row->fin));?></b></span>
                                                <?php } ?>
                                        </p>
                                    <?php } ?>

                                    <?php if(!empty($row->lugar)){ ?>
                                        <p class="lugar">Lugar: <?=$row->lugar;?></p>
                                    <?php } ?>
                                    
                                   
                                </div>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
        
        <hr>
    </main>
