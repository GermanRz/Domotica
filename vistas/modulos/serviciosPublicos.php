<div class="content-wrapper" style="background: #6c757d; color:white;">
    
    <section class="content-header">

      <div class="container-fluid">

        <div class="row mb-2">

          <div class="col-sm-6">

            <h1>Servicios Publicos</h1>

          </div>

          <div class="col-sm-6">

            <ol class="breadcrumb float-sm-right">

              <li class="breadcrumb-item"><a href="inicio">Inicio</a></li>

              <li class="breadcrumb-item active" style="color:white;">Servicios publicos</li>

            </ol>

          </div>

        </div>

      </div><!-- /.container-fluid -->

    </section>


    <!-- /*=============================================
    =           LOS CARDS          =
    =============================================*/ -->
    
    <section class="content">
      
      <div class="row">
        <!-- /*=============================================
        =            TARJETA DEL GAS            =
        =============================================*/ -->
            
            <div class="col-md-4 col-12">

                <!-- small card -->
                <div class="small-box bg-danger">

                  <div class="inner">

                    <h3>40<sup style="font-size: 20px">%</sup></h3>

                    <span>Consumo del Gas</span>

                  </div>

                    <div class="icon">

                      <i class="fas fa-fire"></i>

                    </div>

                    <a href="#" class="small-box-footer" onclick="gas();">Mas informacion <i class="fas fa-arrow-circle-right" id="clickGas"></i></a>

                </div>

            </div>
          <!-- /*=============================================
            =            TARJETA DEL AGUA            =
            =============================================*/ -->

            <div class="col-md-4 col-12">

                <!-- small card -->
                <div class="small-box bg-primary">

                  <div class="inner">

                    <h3>60<sup style="font-size: 20px">%</sup></h3>

                    <span>Consumo del Agua</span>

                  </div>

                  <div class="icon">

                    <i class="fas fa-tint" ></i>

                  </div>

                  <a href="#" class="small-box-footer" onclick="agua();">Mas informacion <i class="fas fa-arrow-circle-right"></i></a>

                </div>

            </div>

          <!-- =============================================
                  =          TARJETAS 
                                ENERGIA         =
            ============================================= -->

            <div class="col-md-4 col-12">

                <!-- small card -->
                <div class="small-box bg-warning">

                  <div class="inner">

                    <h3>55<sup style="font-size: 20px">%</sup></h3>

                    <span>Consumo de la Energia</span>

                  </div>

                  <div class="icon">

                    <i class="fas fa-bolt"></i>

                  </div>

                  <a href="#" class="small-box-footer" onclick="energia();">Mas informacion<i class="fas fa-arrow-circle-right"></i></a>

                </div>

            </div>

       </div>

             <!-- =============================================
                 =            DIAGRAM DE LINEAS DEL GAS           =
            ============================================= -->
            <section id="infoGas">

                <div class="col-lg-12">

                    <div class="card card-danger card-outline">

                      <div class="card-header" style="background: #343a40;">

                          <h3 class="card-title">

                            <i class="fas fa-fire" style="color:#FE2A4A;"></i>

                              Información de Gas

                          </h3>

                      </div><!-- fin de encabezado de la cabeza -->

                    </div><!-- fin de la tarjeta -->

                    <div class="card-body">

                      <div id="interactive-g" style="height: 300px;"></div>

                    </div>

                </div>

                <!-- =============================================
                 =            BOTON CON MAS INFO DEL GAS           =
                ============================================= -->

                <div class="card-footer"style="background: #343a40; color:#fff;">

                  <button class="btn btn-secondary " data-toggle="modal" data-target="#modalTablaGas" style="background-color: #FE2A4A;"><i class="fas fa-table" style="color: #000;"></i></button>

                  <button style="position:absolute; right:0;" class="btn btn-secondary " data-toggle="modal" data-target="#modalIngresarDatosGas"><i class="fas fa-address-card" style="color: #fff;"></i></button>

                </div>

            </section>
            
            <!-- =============================================
              =            DIAGRAMA DE LINEAS DEL AGUA          =
            ============================================= -->
            <section id="infoAgua">
              
              <div class="col-lg-12">

                  <div class="card card-primary card-outline">

                    <div class="card-header" style="background: #343a40;">

                      <h3 class="card-title">

                        <i class="fas fa-tint" style="color:#2A50FE;"></i>

                          Información del Agua

                      </h3>

                    </div><!-- fin de encabezado de la cabeza -->

                  </div><!-- fin de la tarjeta -->

                  <div class="card-body">

                    <div id="interactive" style="height: 300px;"></div>

                  </div>

              </div>

              <!-- =============================================
                 =            BOTON CON MAS INFO DEL AGUA          =
                ============================================= -->

              <div class="card-footer"style="background: #343a40; color:#fff;">

                <button class="btn btn-secondary " data-toggle="modal" data-target="#modalTablaAgua" style="background-color:#2A50FE;"><i class="fas fa-table" style="color:#000;"></i></button>


                <button style="position:absolute; right:0;" class="btn btn-secondary " data-toggle="modal" data-target="#modalIngresarDatosAgua"><i class="fas fa-address-card" style="color: #fff;"></i></button>
              </div>

            </section>
            
            <!-- =============================================
              =            DIAGRAMA DE LINEAS DE LA ENERGIA        =
            ============================================= -->

            <section id="infoEnergia">
              
              <!-- =============================================
                  =            DIAGRAM DE LINEAS DE LA ENERGIA           =
                  ============================================= -->
                <div class="col-lg-12">

                    <div class="card card-warning card-outline">

                      <div class="card-header" style="background: #343a40;">

                        <h3 class="card-title">

                          <i class="fas fa-bolt" style="color:#FCCF19;"></i>

                            Información de la Energia

                        </h3>

                      </div><!-- fin de encabezado de la cabeza -->

                    </div><!-- fin de la tarjeta -->

                    <div class="card-body">

                        <div id="interactive-e" style="height: 300px;"></div>

                    </div>

                </div>

                <!-- =============================================
                 =            BOTON CON MAS INFO DEL ENERGIA         =
                ============================================= -->
                <div class="card-footer"style="background: #343a40; color:#fff;">

                  <button class="btn btn-secondary " data-toggle="modal" data-target="#modalTablaEnergy" style="background-color:#FCCF19;"><i class="fas fa-table" style="color:#000;"></i></button>

                  <button style="position:absolute; right:0;" class="btn btn-secondary " data-toggle="modal" data-target="#modalIngresarDatosEnergia"><i class="fas fa-address-card" style="color: #fff;"></i></button>
                </div>

            </section>

       
        <!-- /*=============================================
        =           FIN DEL CARD DEL ENERGIA          =
        =============================================*/ -->

      </div>

    </section>
  <!-- /.content-wrapper -->

  <!--  ================================================================
          Modal VER TABLA DE ENERGIA
      =================================================================  --> 
  <!-- The Modal -->
  <div class="modal fade" id="modalTablaEnergy">

    <div class="modal-dialog modal-lg">

              
      <div class="modal-content" style="background: #343a40; color:#fff;">

      
          <!-- Modal Header -->
          <div class="modal-header">

            <h4 class="modal-title" style="text-align: center;">Tabla de Datos de la Energia</h4>

            <button type="button" class="close" style="color:red;" data-dismiss="modal">&times;</button>

          </div>



          
          <!-- contenido del modal -->
          <div class="modal-body" style="background: #6c757d; color:#fff;">

             
            <div class="box-body" style="align-content: center;">           

              <!--  ======================================================
                        CARTA DE DATOS DE LA ENERGIA
              =================================================  --> 
              
              <div class="container" style="color: #000;">

                  <div class="calendarEnergia">

                    <button type="button"
                            class="btn btn-dark btn-sm daterange"
                            data-toggle="tooltip"
                            title="Date range">
                      <i class="far fa-calendar-alt"></i>
                    </button>

                  </div>
                <!-- Widget: user widget style 1 -->
                <div class="card card-widget widget-user card-energia">

                    
                  <!-- Add the bg color to the header using any of the bg-* classes -->
                  <div class="widget-user-header bg-warning">
                    
                      

                    <h3 class="widget-user-username" style="color: #000;">Informacion de la Energia</h3>


                  </div>


                  <div class="widget-user-image">

                
                    <img class="img-circle elevation-2" src="./images/icons/rayo.png" alt="User Avatar">

                  </div>


                  <div class="card-footer">
                   
                  
                    <div class="row">

                    <?php 
                       $item = null;
                       $valor= null;
                       $tabla= "productos";

                       $servicio = usuariosControlador::ctrMostrarTabla($tabla,$item,$valor);
                  
                      foreach ($servicio as $key => $value) {

                        // <!-- numero del medidor -->
                        echo'<div class="col-sm-2 border-right">

                          <div class="description-block">

                            <h5 class="description-header">No del Medidor</h5>

                            <span class="description-text">'.$value['codigo'].'</span>

                          </div>

                          <!-- /.description-block -->
                        </div>


                        <!-- lectura actual -->
                        <div class="col-sm-3 border-right">

                          <div class="description-block">

                            <h5 class="description-header">Lectura Actual</h5>

                            <span class="description-text">'.$value['precio_compra'].'</span>

                          </div>

                          <!-- /.description-block -->
                        </div>



                        <!-- lectura anterior -->
                        <div class="col-sm-3 border-right">
                          <div class="description-block">
                            <h5 class="description-header">Lectura Anterior</h5>
                            <span class="description-text">'.$value['precio_venta'].'</span>
                          </div>
                          <!-- /.description-block -->
                        </div>


                        <!-- consumo del mes  -->
                        <div class="col-sm-2">
                          <div class="description-block">
                            <h5 class="description-header">Consumo del mes</h5>
                            <span class="description-text">'.$value['stock'].'</span>
                          </div>
                          <!-- /.description-block -->
                        </div>

                        <!--  boton de imprimir  -->
                        <div class="col-sm-2">

                          <div class="description-block">

                            <h5 class="description-header">Acciones</h5>
                            
                             <button type="button" class="btn btn-primary 
                             btnImprimirFactura" codigoReporte="'.$value['codigo'].'">
            
                                <i class="fa fa-print"></i>

                              </button>

                            </h5>

                          </div>

                        </div>';

                      }

                    ?>
                  
                    </div>
                    
                  </div>
              

              

                </div>
                <!-- /.widget-user -->
              </div>

            </div>
              
            
          </div>

          <!-- Modal footer -->
          <div class="modal-footer" style="background: #343a40; color:#fff;margin-right: auto; margin-left: auto;">

            <button type="button" class="btn btn-danger" data-dismiss="modal">Regresar</button>
            
          </div>
      
      </div>

    </div>

  </div>


  <!--  ================================================================
          Modal VER TABLA DE AGUA
      =================================================================  --> 
  <!-- The Modal -->
  <div class="modal fade" id="modalTablaAgua">

    <div class="modal-dialog modal-lg">

      <div class="modal-content" style="background: #343a40; color:#fff;">
      
          <!-- Modal Header -->
          <div class="modal-header">


            <h4 class="modal-title" style="text-align: center;">Tabla de Datos del Agua</h4>

            <button type="button" class="close" style="color:red;" data-dismiss="modal">&times;</button>

          </div>



          
          <!-- contenido del modal -->
          <div class="modal-body" style="background: #6c757d; color:#fff;">

             
            <div class="box-body" style="align-content: center;">           

              <!--  ======================================================
                        CARTA DE DATOS DEL AGUA
              =================================================  --> 
              <div class="container" style="color: #000;">

                <div class="calendarAgua">

                  <button type="button"
                          class="btn btn-dark btn-sm daterange"
                          data-toggle="tooltip"
                          title="Date range">
                    <i class="far fa-calendar-alt"></i>
                  </button>
                  
                </div>

                <!-- Widget: user widget style 1 -->
                <div class="card card-widget widget-user">


                  <!-- Add the bg color to the header using any of the bg-* classes -->
                  <div class="widget-user-header bg-info-ag">

                    <h3 class="widget-user-username" style="color: #fff;">Informacion del Agua</h3>

                    <h5 class="widget-user-desc" style="color: #fff;">Datos</h5>

                  </div>


                  <div class="widget-user-image">

                
                    <img class="img-circle elevation-2" src="./images/icons/agua.png" alt="User Avatar">

                  </div>


                  <div class="card-footer">

                    <div class="row">


                      <div class="col-sm-3 border-right">

                        <div class="description-block">

                          <h5 class="description-header">No del Medidor</h5>

                          <span class="description-text">6900992</span>

                        </div>

                        <!-- /.description-block -->
                      </div>



                      <div class="col-sm-3 border-right">

                        <div class="description-block">

                          <h5 class="description-header">Lectura Actual</h5>

                          <span class="description-text">81828182</span>

                        </div>

                        <!-- /.description-block -->
                      </div>



                      <!-- /.col -->
                      <div class="col-sm-3 border-right">
                        <div class="description-block">
                          <h5 class="description-header">Lectura Anterior</h5>
                          <span class="description-text">82177</span>
                        </div>
                        <!-- /.description-block -->
                      </div>


                      <!-- /.col -->
                      <div class="col-sm-3">
                        <div class="description-block">
                          <h5 class="description-header">Consumo del mes</h5>
                          <span class="description-text">6</span>
                        </div>
                        <!-- /.description-block -->
                      </div>



                      <!-- /.col -->
                    </div>
                    <!-- /.row -->
                  </div>
                </div>
                <!-- /.widget-user -->
              </div>          

            </div>
              
            
          </div>

          <!-- Modal footer -->
          <div class="modal-footer" style="background: #343a40; color:#fff;margin-right: auto; margin-left: auto;">

            <button type="button" class="btn btn-danger" data-dismiss="modal">Regresar</button>

          </div>
      
      </div>

    </div>

  </div>


  <!--  ================================================================
          Modal VER TABLA DE GAS
      =================================================================  --> 
  <!-- The Modal -->
  <div class="modal fade" id="modalTablaGas">

    <div class="modal-dialog modal-lg">

      <div class="modal-content" style="background: #343a40; color:#fff;">

      
          <!-- Modal Header -->
          <div class="modal-header">

            <h4 class="modal-title" >Tabla de Datos del Gas</h4>

            <button type="button" class="close" style="color:red;" data-dismiss="modal">&times;</button>

          </div>



          
          <!-- contenido del modal -->
          <div class="modal-body" style="background: #6c757d; color:#fff;">

             
            <div class="box-body" style="align-content: center;">           

              <!--  ======================================================
                        CARTA DE DATOS DEL GAS
              =================================================  --> 
              <div class="container" style="color: #000;">

                <div class="calendarGas">

                  <button type="button"
                          class="btn btn-dark btn-sm daterange"
                          data-toggle="tooltip"
                          title="Date range">
                    <i class="far fa-calendar-alt"></i>
                  </button>
                  
                </div>

                <!-- Widget: user widget style 1 -->
                <div class="card card-widget widget-user">


                  <!-- Add the bg color to the header using any of the bg-* classes -->
                  <div class="widget-user-header bg-info-en">

                    <h3 class="widget-user-username" style="color: #000;">Informacion del Gas</h3>

                    <h5 class="widget-user-desc" style="color: #000;">Datos</h5>

                  </div>


                  <div class="widget-user-image">

                
                    <img class="img-circle elevation-2" src="./images/icons/fuego.png" alt="User Avatar">

                  </div>


                  <div class="card-footer">

                    <div class="row">


                      <div class="col-sm-3 border-right">

                        <div class="description-block">

                          <h5 class="description-header">No del Medidor</h5>

                          <span class="description-text">6900992</span>

                        </div>

                        <!-- /.description-block -->
                      </div>



                      <div class="col-sm-3 border-right">

                        <div class="description-block">

                          <h5 class="description-header">Lectura Actual</h5>

                          <span class="description-text">81828182</span>

                        </div>

                        <!-- /.description-block -->
                      </div>



                      <!-- /.col -->
                      <div class="col-sm-3 border-right">
                        <div class="description-block">
                          <h5 class="description-header">Lectura Anterior</h5>
                          <span class="description-text">82177</span>
                        </div>
                        <!-- /.description-block -->
                      </div>


                      <!-- /.col -->
                      <div class="col-sm-3">
                        <div class="description-block">
                          <h5 class="description-header">Consumo del mes</h5>
                          <span class="description-text">7</span>
                        </div>
                        <!-- /.description-block -->
                      </div>



                      <!-- /.col -->
                    </div>
                    <!-- /.row -->
                  </div>
                </div>
                <!-- /.widget-user -->
              </div>

            </div>
              
            
          </div>

          <!-- Modal footer -->
          <div class="modal-footer" style="background: #343a40; color:#fff;margin-right: auto; margin-left: auto;">

            <button type="button" class="btn btn-danger" data-dismiss="modal">Regresar</button>

          </div>
      
      </div>

    </div>

  </div>

  <!--================================================================
          Modal Ingresar datos de servicios
  =================================================================--> 
  <!-- The Modal -->
  <div class="modal fade" id="modalngresarDatosServicios">

    <div class="modal-dialog modal-lg">

      <div class="modal-content" style="background: #343a40; color:#fff;">

        <form role="form" method="post" enctype="multipart/form-data">


      
          <!-- Modal Header -->
          <div class="modal-header">

            <h4 class="modal-title">Ingresar  datos de servicios</h4>

            <button type="button" class="close" style="color:red;" data-dismiss="modal">&times;</button>

          </div>



          
          <!-- contenido del modal -->
          <div class="modal-body" style="background: #6c757d; color:#fff;">

            <label>Para acceder a esta opcicon del menu debera ingresar los datos de al menos uno de los servicios, seleccione el servicio que desea ingresar sus respectivos datos.</label>

          
          </div>


          <!--  ================================================================
                  BOTONES SERVICIOS
          =================================================================  --> 
          <!-- Modal footer -->
          <div class="modal-footer" style="background: #343a40; color:#fff;">

            <div class="container">
            <div class="row" align="center">
              <div class="col-sm-4">
                <button class="btn btn-secondary" style="background-color:#FE2A4A;" data-toggle="modal" data-target="#modalAgregarDatosGas"><i class="fas fa-file-alt" style="color: #fff;"></i>Gas</button>
              </div>
              <div class="col-sm-4">
                <button class="btn btn-secondary" style="background-color:#2A50FE;" data-toggle="modal" data-target="#modallngresarDatosAgua"><i class="fas fa-file-alt" style="color: #fff;"></i>Agua</button>
              </div>
              <div class="col-sm-4">
                <button  class="btn btn-secondary" style="background-color:#FCCF19;" data-toggle="modal" data-target="#modallngresarDatosEnergia"><i class="fas fa-file-alt" style="color: #fff;"></i>Energia</button>
              </div>
            </div>
          </div>

          </div>

        </form>
      
      </div>

    </div>

  </div>


  <!--================================================================
          Modal Ingresar Datos Gas
  =================================================================--> 
  <!-- The Modal -->
  <div class="modal fade" id="modalIngresarDatosGas">

    <div class="modal-dialog modal-lg">

      <div class="modal-content" style="background: #343a40; color:#fff;">

        <form role="form" method="post" enctype="multipart/form-data">


      
          <!-- Modal Header -->
          <div class="modal-header">

            <h4 class="modal-title">Modificar datos gas</h4>

            <button type="button" class="close" style="color:red;" data-dismiss="modal">&times;</button>

          </div>



          
          <!-- contenido del modal -->
          <div class="modal-body" style="background: #6c757d; color:#fff;">

            <!--  ================================================================
                        INGRESA N° contador
            =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                        <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                        <input type="number" class="form-control input-lg" name="nuevoNumeroMedidor" placeholder="Ingresar numero de medidor" required>

                  </div>

                </div>

              </div>

              <!--  ================================================================
                                  INGRESA factor de Correccion
              =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                      <input type="number" class="form-control input-lg" id="nuevoFactorCorreccion" name="nuevoFactorCorreccion" placeholder="Ingresar factor de correccion" required> 

                  </div>

                </div>

              </div>

          
          </div>


          
          <!-- Modal footer -->
          <div class="modal-footer" style="background: #343a40; color:#fff;">

            <button type="submit" class="btn btn-dark">Modificar</button>

            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>

          </div>

          <?php 

          $registro = new ServiciosControlador();

          $registro->ctrIngrearDatosGas();

          ?>

        </form>
      
      </div>

    </div>

  </div>


  <!--================================================================
          Modal Ingresar Datos Agua
  =================================================================--> 
  <!-- The Modal -->
  <div class="modal fade" id="modalIngresarDatosAgua">

    <div class="modal-dialog modal-lg">

      <div class="modal-content" style="background: #343a40; color:#fff;">

        <form role="form" method="post" enctype="multipart/form-data">


      
          <!-- Modal Header -->
          <div class="modal-header">

            <h4 class="modal-title">Modificar datos agua</h4>

            <button type="button" class="close" style="color:red;" data-dismiss="modal">&times;</button>

          </div>



          
          <!-- contenido del modal -->
          <div class="modal-body" style="background: #6c757d; color:#fff;">

            <!--  ================================================================
                        INGRESA N° contador
            =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                        <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                        <input type="number" class="form-control input-lg" name="nuevoNumeroMedidor" placeholder="Ingresar numero de medidor" required>

                  </div>

                </div>

              </div>

              <!--  ================================================================
                                  INGRESA tarifa Alcantarillado Suntuario
              =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                      <input type="number" class="form-control input-lg" id="nuevoTarifaAlcantarilladoSuntuario" name="nuevoTarifaAlcantarilladoSuntuario" placeholder="Ingresar tarifa de alcantarillado suntuario" required> 

                  </div>

                </div>

              </div>

              <!--  ================================================================
                                  INGRESA tarifa Alcantarillado basico
              =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                      <input type="number" class="form-control input-lg" id="nuevoTarifaAlcantarilladoBasico" name="nuevoTarifaAlcantarilladoBasico" placeholder="Ingresar tarifa de alcantarillado Basico" required> 

                  </div>

                </div>

              </div>

              <!--  ================================================================
                                  INGRESA tarifa Alcantarillado complementario
              =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                      <input type="number" class="form-control input-lg" id="nuevoTarifaAlcantarilladoComplementario" name="nuevoTarifaAlcantarilladoComplementario" placeholder="Ingresar tarifa de alcantarillado complementario" required> 

                  </div>

                </div>

              </div>

              <!--  ================================================================
                                  INGRESA tarifa Acueducto Suntuario
              =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                      <input type="number" class="form-control input-lg" id="nuevoTarifaAcueductoSuntuario" name="nuevoTarifaAcueductoSuntuario" placeholder="Ingresar tarifa de acueducto suntuario" required> 

                  </div>

                </div>

              </div>

              <!--  ================================================================
                                  INGRESA tarifa Acueducto Basico
              =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                      <input type="number" class="form-control input-lg" id="nuevoTarifaAcueductoBasico" name="nuevoTarifaAcueductoBasico" placeholder="Ingresar tarifa de acueducto basico" required> 

                  </div>

                </div>

              </div>

              <!--  ================================================================
                                  INGRESA tarifaA cueducto Complementario
              =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                      <input type="number" class="form-control input-lg" id="nuevoTarifaAcueductoComplementario" name="nuevoTarifaAcueductoComplementario" placeholder="Ingresar tarifa de acueducto complementario" required> 

                  </div>

                </div>

              </div>

              <!--  ================================================================
                                  INGRESA cargo Fijo Liquidacion Acueducto
              =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                      <input type="number" class="form-control input-lg" id="nuevoCargoFijoLiquidacionAcueducto" name="nuevoCargoFijoLiquidacionAcueducto" placeholder="Ingresar cargo fijo de liquidacion del acueducto" required> 

                  </div>

                </div>

              </div>

              <!--  ================================================================
                                  INGRESA cargo Fijo Liquidacion Alcantarillado
              =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                      <input type="number" class="form-control input-lg" id="nuevoCargoFijoLiquidacionAlcantarillado" name="nuevoCargoFijoLiquidacionAlcantarillado" placeholder="Ingresar cargo fijo de liquidacion del alcantarillado" required> 

                  </div>

                </div>

              </div>

          
          </div>


          
          <!-- Modal footer -->
          <div class="modal-footer" style="background: #343a40; color:#fff;">

            <button type="submit" class="btn btn-dark">Modificar</button>

            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>

          </div>

          <?php 

          $registro = new ServiciosControlador();

          $registro->ctrIngrearDatosAgua();

          ?>

        </form>
      
      </div>

    </div>

  </div>


  <!--================================================================
          Modal Ingresar Datos Energia
  =================================================================--> 
  <!-- The Modal -->
  <div class="modal fade" id="modalIngresarDatosEnergia">

    <div class="modal-dialog modal-lg">

      <div class="modal-content" style="background: #343a40; color:#fff;">

        <form role="form" method="post" enctype="multipart/form-data">


      
          <!-- Modal Header -->
          <div class="modal-header">

            <h4 class="modal-title">Modificar datos agua</h4>

            <button type="button" class="close" style="color:red;" data-dismiss="modal">&times;</button>

          </div>



          
          <!-- contenido del modal -->
          <div class="modal-body" style="background: #6c757d; color:#fff;">

            <!--  ================================================================
                        INGRESA N° contador
            =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                        <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                        <input type="number" class="form-control input-lg" name="nuevoNumeroMedidor" placeholder="Ingresar numero de medidor" required>

                  </div>

                </div>

              </div>

              <!--  ================================================================
                                  INGRESA tarifa Energia
              =================================================================  --> 
              <div class="box-body">

                <div class="form-group">

                  <div class="input-group">

                    <div class="input-group-prepend">

                      <span class="input-group-text"><i class="fas fa-address-card"></i></span>

                    </div>

                      <input type="number" class="form-control input-lg" id="nuevoTarifaEnergia" name="nuevoTarifaEnergia" placeholder="Ingresar tarifa energia" required> 

                  </div>

                </div>

              </div>

          
          </div>


          
          <!-- Modal footer -->
          <div class="modal-footer" style="background: #343a40; color:#fff;">

            <button type="submit" class="btn btn-dark">Modificar</button>

            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>

          </div>

          <?php 

          $registro = new ServiciosControlador();

          $registro->ctrIngrearDatosEnergia();

          ?>

        </form>
      
      </div>

    </div>

  </div>




