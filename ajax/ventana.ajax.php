<?php

require_once "../controlador/ventanasControlador.php";
require_once "../modelo/ventanasModelo.php";

/**
 * 
 */
class ajaxVentana
{
	public $idVentana;
	public $rangoFechas;

	public function ajaxEditarVentana()
	{
		$item = "id";
		$valor = $this-> idVentana;

		$respuesta = ventanasControlador::ctrMostrarVentana($item, $valor);

		echo json_encode($respuesta);
	}

	public function ajaxInformarVentana()
	{
		$item = "tipo_limpieza";
	    $item2 = "id_ventana";
	    $item3 = "fecha";
	    $valor = $this-> rangoFechas;


	    $valor3 = date("Y/m/d",strtotime(substr($valor, 0, 10)));

	   //$newDate = date("d/m/Y", strtotime($originalDate));
	    $valor4 = date("Y/m/d",strtotime(substr($valor,13)));

	    $resultados=array();

	    //2020/11/08
	    $cantidadTotal1 = 0;

		$respuesta = ventanasControlador:: ctrHistoricoVentanas($item, "suave", $item2, 18, $item3, date($valor3), date($valor4));

		
		 $cantidadTotal1 = $respuesta[0]["cantidadTotal"];

  		

		array_push($resultados, $respuesta);



		$respuesta = ventanasControlador:: ctrHistoricoVentanas($item, "profunda", $item2, 18, $item3, date($valor3), date($valor4));


		$cantidadTotal2 = $respuesta[0]["cantidadTotal"];

		$cantidades = array($cantidadTotal1, $cantidadTotal2);

		echo json_encode($cantidades);

	}
}

/*=============================================
=            EDITAR Ventana            =
=============================================*/

if (isset($_POST["idVentana"])) {

	$editar = new ajaxVentana();

	$editar-> idVentana = $_POST["idVentana"];

	$editar->ajaxEditarVentana();
}

if (isset($_POST["rangoFechas"])) {

	$informe = new ajaxVentana();

	$informe-> rangoFechas = $_POST["rangoFechas"];

	$informe->ajaxInformarVentana();
}
