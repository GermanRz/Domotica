<?php 
	
	require_once "../controlador/puertas.controlador.php";
	require_once "../modelo/puertaModelo.php";

	/**
	 * 
	 */
	class ajaxPuertas{
		
		public $idPuerta;

		public function ajaxEditarPuerta()
		{
			$item = "numero";
			$valor = $this -> idPuerta;

			$respuesta = PuertasControlador::ctrMostrarPuerta($item, $valor);
			echo json_encode($respuesta);

		}
	

	/*=============================================
	=            Puerta Estado           =
	=============================================*/

		public $puertaNumero;
		public $estadoPuerta;

		public function ajaxEstadoPuerta()
		{

			$tabla = "puertas";

			$item1  = "estado";

			$valor1 = $this->estadoPuerta;

			$item2 ="numero";
			
			$valor2 =$this->puertaNumero;

			$respuesta = puertaModelo::mdlActualizarPuerta($tabla, $item1, $valor1, $item2, $valor2);

		}

	/*=============================================
	=            Puerta Estado           =
	=============================================*/
	
		public $puertaNumeroBloqueo;
		public $estadoBloqueoPuerta;

		public function ajaxBloqueoPuerta()
		{

			$tabla = "puertas";

			$item1  = "sensorBloqueo";

			$valor1 = $this->estadoBloqueoPuerta;

			$item2 ="numero";
			
			$valor2 =$this->puertaNumeroBloqueo;

			$respuesta = puertaModelo::mdlActualizarPuerta($tabla, $item1, $valor1, $item2, $valor2);

		}

		/*=============================================
	=            Alarma Estado           =
	=============================================*/
	
		public $puertaNumeroAlarma;
		public $estadoAlarma;

		public function ajaxAlarmaPuerta()
		{

			$tabla = "puertas";

			$item1  = "alarma";

			$valor1 = $this->estadoAlarma;

			$item2 ="numero";
			
			$valor2 =$this->puertaNumeroAlarma;

			$respuesta = puertaModelo::mdlActualizarPuerta($tabla, $item1, $valor1, $item2, $valor2);

		}



		/*=============================================
		=    MODAL EDITAR BLOQUEO            =
		=============================================*/


	// 	public $validarUsuario;
	// 	public function ajaxValidarUsuario()
	// 	{
	// 		$item = "usuario";
	// 		$valor = $this ->validarUsuario;

	// 		$respuesta = usuariosControlador::ctrMostrarUsuario($item, $valor);

	// 		echo json_encode($respuesta);

	// 	}

		
	}

/*=============================================
=            EDITAR PUERTA          =
=============================================*/

if (isset($_POST["idPuerta"])) {
	
		$editar = new ajaxPuertas();

		$editar -> idPuerta = $_POST["idPuerta"];

		$editar -> ajaxEditarPuerta();

} 

/*=============================================
=            ACTIVAR USUARIO            =
=============================================*/
if (isset($_POST["estadoPuerta"])) {

	$estadoPuerta = new ajaxPuertas();

	$estadoPuerta-> puertaNumero = $_POST["puertaNumero"];

	$estadoPuerta-> estadoPuerta = $_POST["estadoPuerta"];

	$estadoPuerta-> ajaxEstadoPuerta();

}


/*=============================================
=            ACTIVAR BLOQUEO            =
=============================================*/
if (isset($_POST["estadoBloqueoPuerta"])) {

	$estadoBloqueoPuerta = new ajaxPuertas();

	$estadoBloqueoPuerta-> puertaNumeroBloqueo = $_POST["puertaNumeroBloqueo"];

	$estadoBloqueoPuerta-> estadoBloqueoPuerta = $_POST["estadoBloqueoPuerta"];

	$estadoBloqueoPuerta-> ajaxBloqueoPuerta();

}

/*=============================================
=            ACTIVAR ALARMA            =
=============================================*/
if (isset($_POST["estadoAlarma"])) {

	$estadoAlarma = new ajaxPuertas();

	$estadoAlarma-> puertaNumeroAlarma = $_POST["puertaNumeroAlarma"];

	$estadoAlarma-> estadoAlarma = $_POST["estadoAlarma"];

	$estadoAlarma-> ajaxAlarmaPuerta();

}

/*=============================================
		=    MODAL EDITAR BLOQUEO          =
=============================================*/
// if (isset($_POST["validarUsuario"])) {
	
// 		$valUsuario = new ajaxUsuarios();

// 		$valUsuario -> validarUsuario = $_POST["validarUsuario"];

// 		$valUsuario -> ajaxValidarUsuario();
//} 


/*=============================================*/





