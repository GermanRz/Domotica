<div class="content-wrapper" style="background: #6c757d; color:white;">


  <!--================================
    HEAD (MODULO PUERTAS, INICIO/ MODULO PUERTAS)
    =================================-->
  <section class="content-header">

    <div class="container-fluid">

      <div class="row mb-2">

        <div class="col-sm-6">
          <h1>Modulo Puertas</h1>
        </div>

        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">

            <li class="breadcrumb-item"><a href="inicio">Inicio</a></li>

            <li class="breadcrumb-item active" style="color: white;">Modulo Puertas</li>

          </ol>

        </div>

      </div>

    </div>
  </section>
  <!--================================
    CIERRE DE HEAD
    =================================-->

  <section class="content">

    <!--================================
          VER INFORME, AGREGAR PUERTAS
          =================================-->
    <div class="container-fluid">
      <div class="card">

        <div class="card-header" style="background: #343a40; color:#fff;">
          <!--puertas head -->
          <h3 class="card-title">
            <i class="fa fa-door-open"></i>
            Puertas
          </h3>
          <!-- /.puertas head -->
          <!-- /.card-header -->
        </div>

        <div class="card-body" style="background: #6c757d; color:#fff;">

          <section class="content">
            <div class="container-fluid ">
              <!-- Small boxes (Stat box) -->
              <div class="row">
                <div class="col-lg-3 col-lg-4">
                  <!-- small box -->
                  <div class="small-box bg-success disabled color-palette">
                    <div class="inner">
                      <?php
                      $item = null;
                      $valor = null;
                      $puertas = PuertasControlador::ctrContarPuerta($item, $valor);
                      foreach ($puertas as $key => $value) {
                      }
                      echo '<h3>' . $value . '</h3>';
                      ?>
                      <p>Numero de puertas </p>
                    </div>
                    <div class="icon">
                      <i class="ion ion-plus-circled"></i>
                    </div>
                    <a href="#" class="small-box-footer" data-toggle="modal" data-target="#modalAgregarPuerta">Agregar puerta <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
                </div>

                <div class="col-lg-3 col-lg-4">
                  <!-- small box -->
                  <div class="small-box bg-warning disabled color-palette">
                    <div class="inner">
                      <h3>Estadisticas</h3>

                      <p>Muestra estadisticas de puertas</p>
                    </div>
                    <div class="icon">
                      <i class="ion ion-arrow-graph-up-right"></i>
                    </div>
                    <a href="#" class="small-box-footer" data-toggle="modal" data-target="#informacionModal">Consultar <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
                </div>

                <div class="col-lg-3 col-lg-4">
                  <!-- small box -->
                  <div class="small-box bg-danger disabled color-palette">
                    <div class="inner">
                      <h3>Historial</h3>

                      <p>Muestra historial de puertas</p>
                    </div>
                    <div class="icon">
                      <i class="ion ion-ios-book"></i>
                    </div>
                    <a href="#" class="small-box-footer" data-toggle="modal" data-target="#modalHistorialPuerta">Ver <i class="fas fa-arrow-circle-right"></i></a>
                  </div>
                </div>

              </div>
            </div>
          </section>

          <!--================================
          TABLA AGREGAR PUERTA
          =================================-->


          <div class="card-body-contenido">

            <!--================================
                REVISAR PARA HACER UN RELOG
                =================================-->
            <table class="table table-bordered table-striped dt-responsive tabla">


              <thead class="thead-dark">
                <tr>
                  <th style="width: 5px">#</th>
                  <th>Nombre</th>
                  <th>Foto</th>
                  <th>Acciones</th>
                  <th>Estado</th>
                  <th>Opciones</th>
                </tr>
              </thead>

              <tbody>

                <?php

                    $item = null;
                    $valor = null;
                    $puertas = PuertasControlador::ctrMostrarPuerta($item, $valor);

                    foreach ($puertas as $key => $value) {
                      echo '<tr>
                          <td><b>' . $value["numero"] . '</b></td>
                          <td><b>' . $value["nombre"] . '</b></td>';

                      if ($value["foto"] != "") {
                        echo '<td>
                            <img src="' . $value["foto"] . '" width="40px">';
                      } else {
                        echo '<td>
                            <img src="images/fotoPuertas/puertaDefecto.png" class="img-thumbnail" width="40px">';
                      }
                      echo '</td>
                          <td>
                          ';

                      if ($value["sensorBloqueo"] == 3) {

                        echo '<button class="btn btn-outline-primary buttonFondo btnPtaBloqueoEstado" idPuerta="' . $value["numero"] . '" estadoBloqueoPuerta="2">

                            <i id="puertaAbierta" class="fa fa-door-open"></i>


                            </button>';
                      } else if ($value["sensorBloqueo"] == 2) {

                        echo '<button class="btn btn-outline-primary buttonFondo btnPtaBloqueoEstado" idPuerta="' . $value["numero"] . '" estadoBloqueoPuerta="3">

                            <i id="puertaAbierta" class="fa fa-door-closed"></i>


                            </button>';
                      } else if ($value["sensorBloqueo"] == 1) {

                        echo '<button class="btn btn-outline-primary buttonFondo btnPtaBloqueoEstado" disabled="true" idPuerta="' . $value["numero"] . '" estadoBloqueoPuerta="3">

                            <i id="puertaAbierta" class="fa fa-door-closed"></i>


                            </button>';
                      }

                      if ($value["alarma"] == 3) {

                        echo '<button class="btn btn-outline-primary buttonFondo btnMonitorear" idPuerta="' . $value["numero"] . '" estadoAlarma="2">

                            <i id="puertaAlarma" class="far fa-siren"></i>


                            </button>';
                      } else if ($value["alarma"] == 2) {

                        echo '<button class="btn btn-outline-primary buttonFondo btnMonitorear" idPuerta="' . $value["numero"] . '" estadoAlarma="3">

                            <i id="puertaAlarma" class="far fa-siren-on"></i>


                            </button>';
                      } else if ($value["alarma"] == 1) {

                        echo '<button class="btn btn-outline-primary buttonFondo btnMonitorear" idPuerta="' . $value["numero"] . '" disabled="true" estadoAlarma="3">

                            <i id="puertaAlarma" class="far fa-siren-on"></i>


                            </button>';
                      }

                      echo '


                          <button class="btn btn-outline-info buttonFondo" data-toggle="modal" data-target="#modalHistorialPuerta">
                          <i class="fas fa-history"></i>
                          </button>

                          </td>';

                      if ($value["estado"] == 1) {

                        echo '<td><button class="btn btn-danger btn-xs btnPtaEstado" idPuerta="' . $value["numero"] . '" estadoPuerta="0">Mal estado</button></td>';
                      } else {

                        echo '<td><button class="btn btn-success btn-xs btnPtaEstado" idPuerta="' . $value["numero"] . '" estadoPuerta="1">Buen estado</button></td>';
                      }

                      echo '<td>
                          
                          <button class="btn btn-outline-warning btnEditarPuerta buttonFondo" idPuerta="' . $value["numero"] . '" data-toggle="modal" data-target="#modalEditarPuerta">
                          <i class="fas fa-pencil-alt"></i>
                          </button>

                          <button class="btn btn-danger btnEliminarPuerta" idPuerta="' . $value["numero"] . '" fotoPuerta="' . $value["foto"] . '" nombrePuerta="' . $value["nombre"] . '"><i class="fa fa-times"></i></button>


                          </td>
                          </div>
                          ';
                    }

                ?>

              </tbody>

            </table>
        <!--================================
          CIERRE DE VER INFORME, AGREGAR PUERTAS
          =================================-->
          
          </div>
          </div>
          </div>
    </div>     
  </section>
  <!-- relleno de espacio en blanco -->
  <?php
  echo "⠀";
  ?>
</div>
  <!-- CERRAR EL CONTENT -->

<!-- /.CIERRA DEL BODY -->


<!--================================
    MODAL HISTORIAL PUERTA
    =================================-->

<div class="modal fade" id="modalHistorialPuerta">

  <div class="modal-dialog">

    <div class="modal-content" style="background: #6c757d; color:#fff;">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--================================
              CABEZA DEL MODAL
              =================================-->

        <div class="modal-header" style="background: #343a40; color: #fff">

          <h4 class="modal-title">Historial de la Puerta</h4>

          <button type="button" style="color:red;" class="close" data-dismiss="modal" aria-label="Close">

            <span aria-hidden="true">&times;</span>

          </button>

        </div>

        <!--================================
              CUERPO DEL MODAL
              =================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTREDA PARA EL NOMBRE -->

            <div class="card card-primary card-outline">

              <div class="card-header">

                <h3 class="card-title">
                  <i class="far fa-chart-bar"></i>
                  Consumo de Puerta
                </h3>

                <div class="card-tools">
                  Tiempo Real
                  <div class="btn-group" id="realtime" data-toggle="btn-toggle">

                    <button type="button" class="btn btn-default btn-sm active" data-toggle="on">On</button>
                    <button type="button" class="btn btn-default btn-sm" data-toggle="off">Off</button>

                  </div>

                </div>

              </div>
              <div class="card-body">

                <div id="interactive" style="height: 200px;"></div>

              </div>
              <!-- /.card-body-->
            </div>

            <div class="callout callout-success">

              <h5>Estado general de la Puerta</h5>

              <p>Bueno.</p>

            </div>

            <div class="col-md-12">

              <div class="card">

                <div class="card-header">

                  <h3 class="card-title">

                    <i class="fas fa-lightbulb"></i>
                    Detalles:

                  </h3>

                </div>
                <!-- /.card-header -->
                <div class="card-body">

                  <dl class="row">

                    <dt class="col-sm-4">Ubicacíon</dt>
                    <dd class="col-sm-8">Lorem ipsum dolor sit amet consectetur adipisicing elit.</dd>
                    <dt class="col-sm-4">Consumo</dt>
                    <dd class="col-sm-8">Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
                    <dd class="col-sm-8 offset-sm-4">Donec id elit non mi porta gravida at eget metus.</dd>
                    <dt class="col-sm-4">Tiempo encendido</dt>
                    <dd class="col-sm-8">Etiam porta sem malesuada magna mollis euismod.</dd>
                    <dt class="col-sm-4">Comparacion</dt>
                    <dd class="col-sm-8">Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo
                      sit amet risus.
                    </dd>

                  </dl>

                </div>
                <!-- /.card-body -->

              </div>
              <!-- /.card -->

            </div>

          </div>

        </div>

        <!--================================
              FOOTER DEL MODAL
              =================================-->

        <div class="modal-footer justify-content-between">

          <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>

        </div>

      </form>

    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!--================================
    MODAL EDITAR
    =================================-->


<div class="modal fade" id="modalEditarPuerta">

  <div class="modal-dialog">

    <div class="modal-content" style="background: #6c757d; color:#fff;">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--================================
          CABEZA DEL MODAL
          =================================-->

        <div class="modal-header" style="background: #343a40; color:#fff;">

          <h4 class="modal-title">Editar Puerta</h4>

          <button type="button" class="close" style="color:red;" data-dismiss="modal" aria-label="Close">

            <span aria-hidden="true">&times;</span>

          </button>

        </div>

        <!--================================
            CUERPO DEL MODAL
            =================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTREDA PARA EL NOMBRE -->

            <div class="form-group">

              <div class="input-group mb-3">

                <div class="input-group-prepend">

                  <span class="input-group-text"><i class="far fa-door-closed"></i></span>

                </div>

                <input type="text" class="form-control input-lg" id="editarNombre" value="" name="editarNombre" required>

              </div>

            </div>

            <!-- Estado encendido/apagado de bloqueo-->

            <input type="text" id="idPuertaEditar" name="idPuertaEditar" hidden="">

            <div class="form-group">

              <label>Seleccionar bloqueo de la puerta:</label>
              <div class="input-group mb-3">

                <span class="input-group-text">
                  <i id="puertaBloqueoModal" class="far fa-lock-open-alt"></i>
                </span>


                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" name="estadoBloqueoModal" id="btnBloqueoModal">
                  <label class="custom-control-label" for="btnBloqueoModal">
                  </label>
                </div>



              </div>

            </div>


            <!-- Estado Alarma-->

            <div class="form-group">


              <label>Estado de alarma</label>
              <div class="input-group mb-3">
                <span class="input-group-text">
                  <i id="puertaAlarmaModal" class="far fa-siren" alarmaPuertaModal="1"></i>
                </span>

                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" name="btnAlarmaModal" id="btnAlarmaModal">
                  <label class="custom-control-label" for="btnAlarmaModal">
                  </label>
                </div>

              </div>
            </div>

            <!-- Estado-->

            <div class="form-group">


              <label>Estado de puerta</label>

              <div class="input-group mb-3">

                <span class="input-group-text">
                  <i id="puertaEstadoModal" class="fa fa-door-closed" puertaEstadoModal="1"></i>
                </span>

                <div class="custom-control custom-switch ">
                  <input type="checkbox" class="custom-control-input" name="btnPtaEstado" id="btnEstadoModal" name="editarEstPuerta">
                  <label class="custom-control-label" for="btnEstadoModal">
                  </label>
                </div>

              </div>
            </div>

            <!-- ENTREDA PARA SUBIR LA FOTO -->

            <div class="form-group">

              <div class="panel">EDITAR FOTO</div>

              <input type="file" class="nuevaFoto" id="editarFoto" name="editarFoto">

              <input type="hidden" id="fotoActual" name="fotoActual">

              <p class="help-block">Peso maximo de la foto 2 MB</p>

              <img src="images/fotoPuertas/puertaDefecto.png" class="img-thumbnail previsualizar" width="100px">

            </div>

          </div>

        </div>

        <!--================================
              FOOTER DEL MODAL
              =================================-->

        <div class="modal-footer justify-content-between " style="background: #343a40; color:#fff;">

          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

          <button type="submit" class="btn btn-primary">Guardar cambios</button>

        </div>

        <?php
        $editar = new PuertasControlador();
        $editar->ctrEditarPuerta();
        ?>

      </form>

    </div>
  </div>
</div>


<!--================================
    MODAL SENSOR
    =================================-->

<div class="modal fade" style="height: 1000px;" id="sensoresModal">

  <div class="modal-dialog modal-lg">

    <div class="modal-content" style="background: #6c757d; color:#fff;">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--================================
                      CABEZA DEL MODAL
              =================================-->

        <div class="modal-header" style="background: #343a40; color: #fff">

          <h4 class="modal-title">Estadisticas Sensores</h4>

          <button type="button" style="color:red;" class="close" data-dismiss="modal" aria-label="Close">

            <span aria-hidden="true">&times;</span>

          </button>

        </div>

        <!--================================
                    CUERPO DEL MODAL
              =================================-->

        <div class="modal-body">
          
          <div class="col-md-12">
            <!-- bar chart -->
            <div class="card card-success">
              <div class="card-body" style="background-color: #343a40; color: #fff;">
                <div class="chart" >
                  <canvas id="barChartSen" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- fin bar chart -->
          </div>

        </div>

              <!--================================
                        FOOTER DEL MODAL
              =================================-->

        <div class="modal-footer justify-content-between" style="background: #343a40;">

          <button type="button" class="btn btn-primary" data-dismiss="modal">Salir</button>

        </div>

      </form>

    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


<!--================================
    MODAL ESTADISTICAS
    =================================-->

<div class="modal fade" style="height: 1000px;" id="estadisticasModal">

  <div class="modal-dialog modal-lg">

    <div class="modal-content" style="background: #6c757d; color:#fff;">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--================================
              CABEZA DEL MODAL
              =================================-->

        <div class="modal-header" style="background: #343a40; color: #fff">

          <h4 class="modal-title">Estadisticas Alarmas</h4>

          <button type="button" style="color:red;" class="close" data-dismiss="modal" aria-label="Close">

            <span aria-hidden="true">&times;</span>

          </button>

        </div>

        <!--================================
              CUERPO DEL MODAL
              =================================-->

        <div class="modal-body">
          
          <div class="col-md-12">
            <!-- bar chart -->
            <div class="card card-success">
              <div class="card-body" style="background-color: #343a40; color: #fff;">
                <div class="chart" >
                  <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- fin bar chart -->
          </div>

        </div>

              <!--================================
                        FOOTER DEL MODAL
              =================================-->

        <div class="modal-footer justify-content-between" style="background: #343a40;">

          <button type="button" class="btn btn-primary" data-dismiss="modal">Salir</button>

        </div>

      </form>

    </div>
  <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!--================================
    MODAL Informacion
    =================================-->

<div class="modal fade" style="height: 1000px;" id="informacionModal">

  <div class="modal-dialog modal-lg">

    <div class="modal-content" style="background: #6c757d; color:#fff;">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--================================
              CABEZA DEL MODAL
              =================================-->

        <div class="modal-header" style="background: #343a40; color: #fff">

          <h4 class="modal-title">Información</h4>

          <button type="button" style="color:red;" class="close" data-dismiss="modal" aria-label="Close">

            <span aria-hidden="true">&times;</span>

          </button>

        </div>

        <!--================================
              CUERPO DEL MODAL
              =================================-->
        <div class="centradoTexto">

          <div class="box-body">

            <div class="form-group">

              <div style="background: #6c757d color: #fff">
                <h4>
                  <font style="vertical-align: middle;">
                    <font style="vertical-align: middle;">¿Qué estadisticas deseas ver?</font>
                  </font>
                </h4>

                <p>
                  <font style="vertical-align: middle;">
                    <font style="vertical-align: middle;">Seleccione una opción.</font>
                  </font>
                </p>
              </div>

              <input type="submit" style="background: #6f42c1;" class="btn btn-secondary datosEst" data-toggle="modal" data-target="#estadisticasModal" id="estadisticasModal" value="Alarma" name="estadisticasModal" data-dismiss="modal"/>


              <input type="submit" style="background: #6f42c1;" class="btn btn-secondary datosEst" data-toggle="modal" data-target="#sensoresModal" id="sensoresModal" value="Sensor" name="sensoresModal" data-dismiss="modal"/>

            </div>

          </div>
        </div>
        <!--================================
              FOOTER DEL MODAL
              =================================-->

        <div class="modal-footer justify-content-between" style="background: #343a40;">

          <button type="button" class="btn btn-primary" data-dismiss="modal">Salir</button>
          <button type="submit" class="btn btn-primary">Aceptar</button>
        </div>

      </form>

    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!--================================
    MODAL AGREGAR PUERTA
    =================================-->


<div class="modal fade" id="modalAgregarPuerta">

  <div class="modal-dialog">

    <div class="modal-content" style="background: #6c757d; color:#fff;">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--================================
              CABEZA DEL MODAL
              =================================-->

        <div class="modal-header" style="background: #343a40; color:#fff;">

          <h4 class="modal-title">Agregar Puerta</h4>

          <button type="button" class="close" style="color:red;" data-dismiss="modal" aria-label="Close">

            <span aria-hidden="true">&times;</span>

          </button>

        </div>

        <!--================================
              CUERPO DEL MODAL
              =================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTREDA PARA EL NOMBRE -->

            <div class="form-group">

              <div class="input-group mb-3">

                <div class="input-group-prepend">

                  <span class="input-group-text"><i class="far fa-door-closed"></i></span>

                </div>

                <input type="text" class="form-control input-lg" placeholder="Ingresar Nombre" name="nuevoNombre" required>

              </div>

            </div>

            <!-- Estado encendido/apagado de bloqueo-->

            <div class="form-group">

              <label>Seleccionar bloqueo de la puerta:</label>
              <div class="input-group mb-3">

                <span class="input-group-text">
                  <i id="agregarPuertaBloqueoModal" class="far fa-lock-open-alt" estadoBloqueoModal="1"></i>
                </span>

                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" id="btnAgregarBloqueoModal" name="agregarBloqueo">
                  <label class="custom-control-label" for="btnAgregarBloqueoModal">
                  </label>
                </div>



              </div>

            </div>


            <!-- Estado Alarma-->

            <div class="form-group">


              <label>Estado de alarma</label>
              <div class="input-group mb-3">
                <span class="input-group-text">
                  <i id="agregarPuertaAlarmaModal" class="far fa-siren" agregarAlarmaPuertaModal="1"></i>
                </span>

                <div class="custom-control custom-switch">
                  <input type="checkbox" class="custom-control-input" id="btnAgregarAlarmaModal" name="agregarAlarma">
                  <label class="custom-control-label" for="btnAgregarAlarmaModal">
                  </label>
                </div>

              </div>
            </div>

            <!-- Estado-->

            <div class="form-group">


              <label>Estado de puerta</label>
              <div class="input-group mb-3">
                <span class="input-group-text">
                  <i id="idPuerta" class="fa fa-door-closed" idPuerta="1"></i>
                </span>

                <div class="custom-control custom-switch ">
                  <input type="checkbox" class="custom-control-input" id="btnPtaEstado" name="estadoPuerta">
                  <label class="custom-control-label" for="btnPtaEstado">
                  </label>
                </div>

              </div>
            </div>

            <!-- ENTRADA PARA SUBIR LA FOTO -->

            <div class="form-group">

              <div class="panel">SUBIR FOTO</div>

              <input type="file" class="nuevaFoto" name="nuevaFoto">

              <p class="help-block">Peso maximo de la foto 2 MB</p>

              <img src="images/fotoPuertas/puertaDefecto.png" class="img-thumbnail previsualizar" width="100px">

            </div>

          </div>

        </div>


        <!--================================
                FOOTER DEL MODAL
                =================================-->

        <div class="modal-footer justify-content-between " style="background: #343a40; color:#fff;">

          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>

          <button type="submit" class="btn btn-primary">Guardar cambios</button>

        </div>

        <?php
        $crearPuertas = new PuertasControlador();
        $crearPuertas->ctrCrearPuerta();

        ?>

      </form>

    </div>
  </div>
</div>

<?php
$borrarPuertas = new PuertasControlador();
$borrarPuertas->ctrBorrarPuerta();
?>

<!--============================================
=     Estadisticas puertas            =
============================================-->
<?php
  
  $arrayFechas = array();
  $arrayAlarmas = array();
  $arrayAlarmasAct = array();
  $arrayAlarmasDes = array();
  $arraySinAlarmas = array();
  $arraySensorBlock = array();
  $arraySensorBlockDes = array();
  $arraySensorSinBlock = array();
    
    $tabla = "estadisticas";
    $date = date("Y-m-d");
    $respuestaFechas = PuertasControlador::ctrEstadisticas($tabla,$date);

    foreach ($respuestaFechas as $key => $value) {
      $fechas=$value["fechas"];
      $alarma=$value["alarmas"];
      $sensor=$value["sensorBloqueo"];
      array_push($arrayFechas, $fechas);
      if ($alarma == 1) {
        array_push($arrayAlarmasAct,$alarma);
      }else if($alarma == 2){
        array_push($arrayAlarmasDes,$alarma);
      }else{
        array_push($arraySinAlarmas,$alarma);
      }
    }

    foreach ($respuestaFechas as $key => $value) {
      $fechas=$value["fechas"];
      $sensor=$value["sensorBloqueo"];
      array_push($arrayFechas, $fechas);
      if ($sensor == 1) {
        array_push($arraySensorBlock,$sensor);
      }else if($sensor == 2){
        array_push($arraySensorBlockDes,$sensor);
      }else{
        array_push($arraySensorSinBlock,$sensor);
      }
    }

  
?>

<!--===== fin Estadisticas puertas  ======-->



<script>
  /*===============================================
=            modal estadisticas            =
===============================================*/

  $(document).on("click", "#estadisticasModal", function() {
    // $(document).click(function(){
    //---------------------
    //-  BAR CHART -
    //---------------------
    var areaChartData = {
      labels: [
        <?php

          foreach ($arrayFechas as $value) {
            echo "'".$value."',";
          } 
  
        ?>
      ],
      datasets: [{
          label: "Alarma activada",
          backgroundColor: "rgba(60,141,188,0.9)",
          borderColor: "rgba(60,141,188,0.8)",
          pointRadius: false,
          pointColor: "#3b8bba",
          pointStrokeColor: "rgba(60,141,188,1)",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(60,141,188,1)",
          data: [
              <?php

              foreach ($arrayAlarmasAct as $value) {
                echo "'".$value."',";
              } 
  
            ?>
          ]
        },
        {
          label: "Alarma desactivada",
          backgroundColor: "rgba(210, 214, 222, 1)",
          borderColor: "rgba(210, 214, 222, 1)",
          pointRadius: false,
          pointColor: "rgba(210, 214, 222, 1)",
          pointStrokeColor: "#c1c7d1",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(220,220,220,1)",
          data: [
              <?php

              foreach ($arrayAlarmasDes as $value) {
                echo "'".$value."',";
              } 
  
            ?>
          ]
        },
        {
          label: "Sin alarma",
          backgroundColor: "rgba(128, 128, 128, 0.5)",
          borderColor: "rgba(128, 128, 128, 0.5)",
          pointRadius: false,
          pointColor: "rgba(128, 128, 128, 0.5)",
          pointStrokeColor: "#c1c7d1",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(128, 128, 128, 0.5)",
          data: [
              <?php

              foreach ($arraySinAlarmas as $value) {
                echo "'".$value."',";

              }
            ?>
          ]
        },
      ]
    }

    var barChartCanvas = $('#barChart').get(0).getContext('2d')
    var barChartData = jQuery.extend(true, {}, areaChartData)
    var temp0 = areaChartData.datasets[0]
    var temp1 = areaChartData.datasets[1]
    barChartData.datasets[0] = temp1
    barChartData.datasets[1] = temp0

    var barChartOptions = {
      responsive: true,
      maintainAspectRatio: false,
      datasetFill: false
    }

    var barChart = new Chart(barChartCanvas, {
      type: "bar",
      data: barChartData,
      options: barChartOptions,
    })

    Chart.defaults.global.defaultFontColor = "white";
    let chart = new Chart(barChartCanvas, {
      type: "bar",
      data: areaChartData,
      options: {
        legend: {
          labels: {
            fontColor: "white"
          },
        },
      },
    });
  })
  /*=====  fin modal estadisticas (puerta)  ======*/

  /*===============================================
=            modal sensores           =
===============================================*/

  $(document).on("click", "#sensoresModal", function() {
    // $(document).click(function(){
    //---------------------
    //-  BAR CHART -
    //---------------------
    var areaChartData = {
      labels: [
            <?php

              foreach ($arrayFechas as $value) {
                echo "'".$value."',";
              } 
      
            ?>
      ],
      datasets: [{
          label: "Sensor activado",
          backgroundColor: "rgba(60,141,188,0.9)",
          borderColor: "rgba(60,141,188,0.8)",
          pointRadius: false,
          pointColor: "#3b8bba",
          pointStrokeColor: "rgba(60,141,188,1)",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(60,141,188,1)",
          data: [
              <?php

              foreach ($arraySensorBlock as $value) {
                echo "'".$value."',";
              } 
  
            ?>
          ]
        },
        {
          label: "Sensor desactivado",
          backgroundColor: "rgba(210, 214, 222, 1)",
          borderColor: "rgba(210, 214, 222, 1)",
          pointRadius: false,
          pointColor: "rgba(210, 214, 222, 1)",
          pointStrokeColor: "#c1c7d1",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(220,220,220,1)",
          data: [
              <?php

              foreach ($arraySensorBlockDes as $value) {
                echo "'".$value."',";
              } 
  
            ?>
          ]
        },
        {
          label: "Sin sensor",
          backgroundColor: "rgba(128, 128, 128, 0.5)",
          borderColor: "rgba(128, 128, 128, 0.5)",
          pointRadius: false,
          pointColor: "rgba(128, 128, 128, 0.5)",
          pointStrokeColor: "#c1c7d1",
          pointHighlightFill: "#fff",
          pointHighlightStroke: "rgba(128, 128, 128, 0.5)",
          data: [
              <?php

              foreach ($arraySensorSinBlock as $value) {
                echo "'".$value."',";
              } 
  
            ?>
          ]
        },
      ]
    }

    var barChartCanvas = $('#barChartSen').get(0).getContext('2d')
    var barChartData = jQuery.extend(true, {}, areaChartData)
    var temp0 = areaChartData.datasets[0]
    var temp1 = areaChartData.datasets[1]
    barChartData.datasets[0] = temp1
    barChartData.datasets[1] = temp0

    var barChartOptions = {
      responsive: true,
      maintainAspectRatio: false,
      datasetFill: false
    }

    var barChart = new Chart(barChartCanvas, {
      type: "bar",
      data: barChartData,
      options: barChartOptions,
    })

    Chart.defaults.global.defaultFontColor = "white";
    let chart = new Chart(barChartCanvas, {
      type: "bar",
      data: areaChartData,
      options: {
        legend: {
          labels: {
            fontColor: "white"
          },
        },
      },
    });
  })
  /*=====  fin modal estadisticas (puerta)  ======*/
</script>