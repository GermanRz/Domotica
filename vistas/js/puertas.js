/*==============================
   DATATABLE
   =============================*/

$(".tabla").DataTable({

    "language": {

        "sProcessing": "Procesando...",
        "sLengthMenu": "Mostrar _MENU_ registro",
        "sZeroRecords": "No se encontraron resultados",
        "sEmptyTable": "Ningun dato disponible en esta tabla",
        "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
        "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0",
        "sInfoFiltered": "(Filtrando de un total de _MAX_ registros)",
        "sInfoPostFix": "",
        "sSearch": "Buscar:",
        "sUrl": "",
        "sInfoThousands": ",",
        "sLoadingRecords": "Cargando...",
        "oPaginate": {
            "sFirst": "Primero",
            "sLast": "Último",
            "sNext": "Siguiente",
            "sPrevious": "Anterior",
        },
        "oAria": {
            "sSortAscending": "Activar para ordenar la columna de manera ascendente",
            "sSortDescending": "Activar para ordenar la columna de manera descendiente",
        },

    }

});

/*==============================
   Bootstrap Switch
   =============================*/

$("input[data-bootstrap-switch]").each(function() {
    $(this).bootstrapSwitch('state', $(this).prop('checked'));
});

/*=============================================
=            EDITAR PUERTA            =
=============================================*/

$(document).on("click", ".btnEditarPuerta", function() {

    var idPuerta = $(this).attr("idPuerta");

    var datos = new FormData();

    datos.append("idPuerta", idPuerta);

    document.getElementById("btnEstadoModal").checked = false;
    document.getElementById("btnAlarmaModal").checked = false;
    document.getElementById("btnBloqueoModal").checked = false;

    $.ajax({

        url: 'ajax/puertas.ajax.php',
        method: 'POST',
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType: 'json',
        success: function(respuesta) {

            $("#editarNombre").val(respuesta["nombre"]);
            $("#puertaBloqueoModal").val(respuesta["sensorBloqueo"]);
            $("#puertaAlarmaModal").val(respuesta["alarma"]);
            $("#fotoActual").val(respuesta["foto"]);
            $("#idPuerta").val(respuesta["estado"]);
            $("#idPuertaEditar").val(respuesta["numero"]);
            if (respuesta["foto"] != "") {
                $(".previsualizar").attr("src", respuesta["foto"]);
            }


            if (respuesta["estado"] == 0) {

                document.getElementById("btnEstadoModal").checked = true;

            }

            console.log(respuesta["alarma"])

            if ((respuesta["alarma"] == 2) || (respuesta["alarma"] == 3)) {

                var iconoAlarmaModal = document.getElementById("puertaAlarmaModal");

                $(iconoAlarmaModal).removeClass('far fa-siren');

                $(iconoAlarmaModal).addClass('far fa-siren-on');

                $(iconoAlarmaModal).attr('alarmaPuertaModal', 0);

                document.getElementById("btnAlarmaModal").checked = true;

            }

            if (respuesta["sensorBloqueo"] == 2 || respuesta["sensorBloqueo"] == 3) {

                var iconoBloqueoModal = document.getElementById("puertaBloqueoModal");

                var btnBloqueoModal = document.getElementById("btnBloqueoModal");

                $(iconoBloqueoModal).removeClass('far fa-lock-open-alt');

                $(iconoBloqueoModal).addClass('far fa-lock-alt');

                $(btnBloqueoModal).attr('estadoBloqueoModal', 2);

                document.getElementById("btnBloqueoModal").checked = true;

            }

        }

    });


})

/*==============================
	BLOQUEAR/DESBLOQUEAR (PUERTA)
  =============================

  var botonPuerta = document.getElementById("btnOnOff");

  var iconoPuerta= document.getElementById("puertaAbierta");

  $(botonPuerta).click(function(){

    var estadoPuerta = $(iconoPuerta).attr("estadoPuerta");

    if (estadoPuerta == 1) {

      Swal.fire({

        icon: "warning",
        title: "¿Esta seguro que desea desbloquear la puerta?",
        text: "¡Si no lo esta puede cancelar la accion!",
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Si, ¡Dejar de bloquearla!'

      }).then((result) => {

        $(iconoPuerta).removeClass('fa fa-door-closed');

        $(iconoPuerta).addClass('fa fa-door-open');

        $(iconoPuerta).attr('estadoPuerta', 0);

      })

    } else {

      $(iconoPuerta).removeClass('fa fa-door-open');

      $(iconoPuerta).addClass('fa fa-door-closed');

      $(iconoPuerta).attr('estadoPuerta', 1);

    }

  })
  */

/*=====  fin del  bloquear/desbloquear (puerta)  ======*/



/*===============================================
=            sweet alert de eliminar            =
===============================================*/

$(document).on("click", '.btnEliminarPuerta', function() {

    var idPuerta = $(this).attr("idPuerta");
    var fotoPuerta = $(this).attr("fotoPuerta");
    var nombrePuerta = $(this).attr("nombrePuerta");

    Swal.fire({

        title: '<span class="tituloWhite"> ¿Estas seguro de eliminarlo? </span>',
        html: '<p class="text-white"> Puedes cancelar la accion si no estas seguro </p>',
        type: 'warning',
        background: '#343a40',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'si, eliminarlo!'

    }).then(function(result) {

        if (result.value) {

            window.location = "index.php?vista=puertas&idPuerta=" + idPuerta + "&fotoPuerta=" + fotoPuerta + "&nombrePuerta=" + nombrePuerta;


        }
    })


});

/*=====  fin del  sweet alert de eliminar  ======*/

/*==============================
  BLOQUEAR/DESBLOQUEAR REAL (PUERTA)
  =============================*/

$(document).on("click", ".btnPtaBloqueoEstado", function() {

    var idPuerta = $(this).attr("idPuerta");

    var estadoBloqueoPuerta = $(this).attr("estadoBloqueoPuerta");

    var datos = new FormData();

    datos.append("puertaNumeroBloqueo", idPuerta);

    datos.append("estadoBloqueoPuerta", estadoBloqueoPuerta);

    $.ajax({

        url: 'ajax/puertas.ajax.php',
        method: 'POST',
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        success: function(respuesta) {
            location.reload();


        }


    })

    if (estadoBloqueoPuerta == 3) {


        $(this).attr('estadoBloqueoPuerta', 2);


    } else if (estadoBloqueoPuerta == 2) {



        $(this).attr('estadoBloqueoPuerta', 3);


    }

})


/*=====================================
=            Estado Alarma            =
=====================================*/


$(document).on("click", ".btnMonitorear", function() {

    var idPuerta = $(this).attr("idPuerta");

    var estadoAlarma = $(this).attr("estadoAlarma");

    var datos = new FormData();

    datos.append("puertaNumeroAlarma", idPuerta);

    datos.append("estadoAlarma", estadoAlarma);

    $.ajax({

        url: 'ajax/puertas.ajax.php',
        method: 'POST',
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        success: function(respuesta) {
            location.reload();
            // $(".relogeo").load(" .relogeo");
            /*=======================================
              REVISAR PARA HACER EL RELOGEO A UN DIV
             ========================================*/
            // $('#centradoText').append(respuesta);
            // $('#centradoText').html(respuesta); 

        }


    })

    if (estadoAlarma == 3) {




        $(this).attr('estadoAlarma', 2);


    } else if (estadoAlarma == 2) {



        $(this).attr('estadoAlarma', 3);


    }

})



/*=====================================
=            Estado Puerta            =
=====================================*/

$(document).on("click", ".btnPtaEstado", function() {

    var idPuerta = $(this).attr("idPuerta");

    var estadoPuerta = $(this).attr("estadoPuerta");

    var datos = new FormData();

    datos.append("puertaNumero", idPuerta);

    datos.append("estadoPuerta", estadoPuerta);

    $.ajax({

        url: 'ajax/puertas.ajax.php',
        method: 'POST',
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        success: function(respuesta) {

            if (window.matchMedia("(max-width:767px)")) {

                Swal.fire({

                    type: 'success',
                    title: '<span Class="text-white">¡El estado de la puerta se a actualizado correctamente!</span>',
                    background: '#343a40',
                    showConfirmButton: true,
                    confirmButtonColor: '#28a745',
                    confirmButtonText: 'Ok',
                    closeOnConfirm: false

                }).then((result) => {

                    if (result.value) {

                        window.location = 'puertas';
                    }
                });
            }

        }


    })

    if (estadoPuerta == 0) {

        $(this).removeClass('btn-success');
        $(this).addClass('btn-danger');
        $(this).html('Mal Estado');
        $(this).attr('estadoPuerta', 1);

    } else {

        $(this).removeClass('btn-danger');
        $(this).addClass('btn-success');
        $(this).html('Buen Estado');
        $(this).attr('estadoPuerta', 0);

    }

})

/*=====  End of Estado Puerta  ======*/


/*=============================================
=    Subiendo foto del usuario      =
=============================================*/

$(".nuevaFoto").change(function() {

    var imagen = this.files[0];

    /*=============================================
    Validar Formato Foto
    =============================================*/

    if (imagen["type"] != "image/jpeg" && imagen["type"] != "image/png") {

        $(".nuevaFoto").val("");

        Swal.fire({

            icon: "error",
            title: 'Error al subir la imagen',
            text: 'La imagen debe estar en formato JPG o PNG',
            confirmButtonColor: '#dc3545',
            confirmButtonText: 'Cerrar'

        });

    } else if (imagen["size"] > 2000000) {

        $(".nuevaFoto").val("");

        Swal.fire({

            type: 'error',
            background: '#343a40',
            html: '<p class="tituloWhite"> ¡Error al subir la imagen! </p>',
            text: 'La imagen excede el tamaño permitido de 2MB',
            confirmButtonColor: '#dc3545',
            confirmButtonText: 'Ok'

        });

    } else {

        var datosImagen = new FileReader;

        datosImagen.readAsDataURL(imagen);

        $(datosImagen).on("load", function(event) {

            var rutaImagen = event.target.result;

            $(".previsualizar").attr("src", rutaImagen);
        });
    }
})

/*==================================================
 =            BLOQUEO MODAL EDITAR.             =
 ==================================================*/


/*==================================================
=            BLOQUEO MODAL EDITAR.             =
==================================================*/



var iconoBloqueoModal = document.getElementById("puertaBloqueoModal");

$(document).on("click", "#btnBloqueoModal", function() {




    var estadoBloqueoModal = $(this).attr("estadoBloqueoModal");


    if (estadoBloqueoModal == 1) {

        $(iconoBloqueoModal).removeClass('far fa-lock-open-alt');

        $(iconoBloqueoModal).addClass('far fa-lock-alt');


        $(this).attr('estadoBloqueoModal', 2);


    } else {

        $(iconoBloqueoModal).removeClass('far fa-lock-alt');

        $(iconoBloqueoModal).addClass('far fa-lock-open-alt');


        $(this).attr('estadoBloqueoModal', 1);

    }

})

/*==================================================
  =            ALARMA MODAL EDITAR.             =
  ==================================================*/


var botonAlarmaModal = document.getElementById("btnAlarmaModal");

var iconoAlarmaModal = document.getElementById("puertaAlarmaModal");

$(botonAlarmaModal).click(function() {

    var alarmaPuertaModal = $(iconoAlarmaModal).attr("alarmaPuertaModal");

    if (alarmaPuertaModal == 1) {


        $(iconoAlarmaModal).removeClass('far fa-siren');

        $(iconoAlarmaModal).addClass('far fa-siren-on');

        $(iconoAlarmaModal).attr('alarmaPuertaModal', 0);

    } else {

        $(iconoAlarmaModal).removeClass('far fa-siren-on');

        $(iconoAlarmaModal).addClass('far fa-siren');

        $(iconoAlarmaModal).attr('alarmaPuertaModal', 1);

    }
})



/*==================================================
  =            ESTADO MODAL EDITAR.             =
  ==================================================*/

var botonEstadoModal = document.getElementById("btnEstadoModal");

var iconoEstadoModal = document.getElementById("puertaEstadoModal");

$(botonEstadoModal).click(function() {

    var estadoPuertaModal = $(iconoEstadoModal).attr("puertaEstadoModal");

    if (estadoPuertaModal == 1) {

        $(iconoEstadoModal).removeClass('far fa-door-closed');

        $(iconoEstadoModal).addClass('far fa-door-open');

        $(iconoEstadoModal).attr('puertaEstadoModal', 0);

    } else {

        $(iconoEstadoModal).removeClass('far fa-door-open');

        $(iconoEstadoModal).addClass('far fa-door-closed');

        $(iconoEstadoModal).attr('puertaEstadoModal', 1);

    }

})

/*=======  recargar estadisticas (puerta)  ========*/
$(document).on('click', '.recarga', function() {

    //Obtenemos datos formulario.
    var date1 = document.getElementsByName("date1");
    var date2 = document.getElementsByName("date2");

    var datos = new FormData();

    datos.append("date1", date1);
    datos.append("date2", date2);


    // AJAX.
    $.ajax({
        url: 'ajax/puertas.ajax.php',
        method: 'POST',
        cache: false,
        contentType: false,
        processData: false,
        data: datos,
        dataType: 'json',
        success: function(respuesta) {
            $('.chart').html(respuesta).fadeIn();
        }
    });
    return false;
})


/*=====  fin recargar estadisticas (puerta)  ======*/

// var idPuerta = $(this).attr("idPuerta");

//   var datos = new FormData();

//   datos.append("idPuerta",idPuerta);