
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Informe Ventana Diario</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="inicio">Inicio</a></li>
              <li class="breadcrumb-item active">Ventanas</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          
          <div class="col-md-6">
            
            <!-- BAR CHART -->
            <div class="card card">
              <div class="card-header bg-secondary">
                <h3 class="card-title">Ventana A</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="barChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

          </div>

        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


<?php 

  $LabelLimpiezaSuave=array();
  $LabelLimpiezaProfunda=array();

  $minutosSuave=array();
  $minutosProfunda=array();

  $item = "tipo_limpieza";
  $item2 = "id_ventana";

  $respuestaLimpiezaSuave = ventanasControlador:: ctrHistoricoVentanas($item, "SUAVE", $item2, 18);

  $respuestaLimpiezaProfunda = ventanasControlador:: ctrHistoricoVentanas($item, "PROFUNDA",$item2, 18 );

//  var_dump($respuestaLimpieza);

  foreach ($respuestaLimpiezaSuave as $key => $value) {
    array_push($minutosSuave, $value["duracion"]);
    $hora_ventana = substr($value["fecha_inicio"],0,);
    array_push($LabelLimpiezaSuave, $hora_ventana);
  }

  foreach ($respuestaLimpiezaProfunda as $key => $value) {
    array_push($minutosProfunda, $value["duracion"]);
    $hora_ventana = substr($value["fecha_inicio"],0,);
    array_push($LabelLimpiezaProfunda, $hora_ventana);
  }
 ?>
  <script>
    
 $(function () {

   
    var areaChartData = {
      labels  : [
          <?php 

            foreach ($LabelLimpiezaSuave as $value) {
              echo "'".$value."',";

            }

           ?>
          ],
      datasets: [
        {
          label: 'Limpieza Suave',
          //'Limpieza Suave',
          backgroundColor     : 'rgba(210, 214, 222, 1)',
          borderColor         : 'rgba(210, 214, 222, 1)',
          pointRadius         : false,
          pointColor          : 'rgba(210, 214, 222, 1)',
          pointStrokeColor    : '#c1c7d1',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(220,220,220,1)',
          data: [
            <?php 
              foreach ($minutosSuave as $key => $value) {
                echo $value.',';
              }
             ?>
          ]
        },
        {
          labels  : [
          <?php 

            foreach ($LabelLimpiezaProfunda as $value) {
              echo "'".$value."',";

            }

           ?>
          ],
          label               : 'Limpieza profunda',
          backgroundColor     : 'rgba(60,141,188,0.9)',
          borderColor         : 'rgba(60,141,188,0.8)',
          pointRadius          : false,
          pointColor          : '#3b8bba',
          pointStrokeColor    : 'rgba(60,141,188,1)',
          pointHighlightFill  : '#fff',
          pointHighlightStroke: 'rgba(60,141,188,1)',
          data: [
            <?php 
              foreach ($minutosProfunda  as $value) {
                echo $value.",";
              }
             ?>
          ]

        },
      ]
    }
    
    var areaChartOptions = {
      maintainAspectRatio : false,
      responsive : true,
      legend: {
        display: false
      },
      scales: {
        xAxes: [{
          gridLines : {
            display : false,
          }
        }],
        yAxes: [{
          gridLines : {
            display : false,
          }
        }]
      }
    }

    //-------------
    //- BAR CHART -
    //-------------
    var barChartCanvas = $('#barChart').get(0).getContext('2d')
    var barChartData = jQuery.extend(true, {}, areaChartData)
    var vent0 = areaChartData.datasets[0]
    barChartData.datasets[0] = vent0 

    var barChartOptions = {
      responsive              : true,
      maintainAspectRatio     : false,
      datasetFill             : false
    }

    var barChart = new Chart(barChartCanvas, {
      type: 'bar', 
      data: barChartData,
      options: barChartOptions
    })

    
  })


  </script>
