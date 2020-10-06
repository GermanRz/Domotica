<?php

require_once "../controlador/temperaturaControlador.php";
require_once "../modelo/temperaturaModelo.php";

/**
 * 
 */
class ajaxTemperatura
{
	public $idTemperatura;

	public function ajaxEditarTemp()
	{
		$item = "id";
		$valor = $this -> idTemperatura;

		$respuesta = temperaturaControlador::ctrMostrarTemp($item, $valor);


		echo json_encode($respuesta);
	}

	/*=============================================
	=            ACTIVAR USUARIO            =
	=============================================*/

	public $activarId;
	public $activarTemp;

	public function ajaxActivarTemp()
	{

		$tabla = "temp_habitaciones";

		$item1  = "estado_temp";

		$valor1 = $this->activarTemp;

		$item2 ="id";
		
		$valor2 =$this->activarId;

		$respuesta = temperaturaModelo::mdlActualizarTemperatura($tabla, $item1, $valor1, $item2, $valor2);

	}
}

/*=============================================
=            EDITAR TEMPERATURA            =
=============================================*/
if (isset($_POST["idTemperatura"])) {

	$editar = new ajaxTemperatura();

	$editar-> idTemperatura = $_POST["idTemperatura"];

	$editar->ajaxEditarTemp();
}

/*=============================================
=            ACTIVAR USUARIO            =
=============================================*/
if (isset($_POST["activarTemp"])) {

	$activar = new ajaxTemperatura();

	$activar-> activarId = $_POST["activarId"];

	$activar-> activarTemp = $_POST["activarTemp"];

	$activar-> ajaxActivarTemp();

}
