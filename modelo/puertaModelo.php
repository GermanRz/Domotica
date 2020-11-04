<?php

	require_once "conexion.php";

	class puertaModelo{
		static public function mdlMostrarPuerta($tabla, $item, $valor){

			if($item != null){
				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

				$stmt -> bindparam(":".$item, $valor, PDO::PARAM_STR);

				$stmt -> execute();

				return $stmt -> fetch();
			}else {
				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");
				$stmt -> execute();
				return $stmt -> fetchAll();
			}
			$stmt -> close();
	      	$stmt = null;
		}
		/*=============================================
		=            Contar Puertas           =
		=============================================*/
		static public function mdlContarPuerta($tabla,$valor){
			$stmt = Conexion::conectar()->prepare("SELECT COUNT(*)  FROM $tabla");

			// $stmt -> bindparam(":".$item, $valor, PDO::PARAM_STR);

			$stmt -> execute();

			return $stmt -> fetch();
		}
		
		
		/*=====  End of Section comment block  ======*/

		/* ================================================================
         							AGREGAR PUERTA
       	================================================================= */
       	static public function mdlAgregarPuerta($tabla, $datos){

       		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(nombre, sensorBloqueo, alarma, foto, estado) VALUES (:nombre, :sensorBloqueo, :alarma, :foto, :estado)");
       		

          $stmt -> bindparam(":nombre", $datos["nombre"], PDO::PARAM_STR);

         	$stmt -> bindparam(":sensorBloqueo", $datos["sensorBloqueo"], PDO::PARAM_STR);

			    $stmt -> bindparam(":alarma", $datos["alarma"], PDO::PARAM_STR);
			 
			    $stmt -> bindparam(":foto", $datos["foto"], PDO::PARAM_STR);

         	$stmt -> bindparam(":estado", $datos["estado"], PDO::PARAM_STR);

          if($stmt -> execute()){

              return "ok";

          }else{

              return "error";

          }

          $stmt -> close();

          $stmt = null;
       	}

        /* ================================================================
                      EDITAR PUERTA
        ================================================================= */
        static public function mdlEditarPuerta($tabla, $datos){

          $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombre = :nombre, sensorBloqueo = :sensorBloqueo, alarma = :alarma, foto = :foto, estado = :estado WHERE numero = :numero");
          

          $stmt -> bindparam(":nombre", $datos["nombre"], PDO::PARAM_STR);

          $stmt -> bindparam(":sensorBloqueo", $datos["sensorBloqueo"], PDO::PARAM_STR);

          $stmt -> bindparam(":alarma", $datos["alarma"], PDO::PARAM_STR);
       
          $stmt -> bindparam(":foto", $datos["foto"], PDO::PARAM_STR);

          $stmt -> bindparam(":estado", $datos["estado"], PDO::PARAM_STR);
          
          $stmt -> bindparam(":numero", $datos["numero"], PDO::PARAM_STR);
          
          if($stmt -> execute()){

              return "ok";

          }else{

              return "error";

          }

          $stmt -> close();

          $stmt = null;
        }

       	/*==========================================
       	=            Actualizar Puertas            =
       	==========================================*/
       	static public function mdlActualizarPuerta($tabla, $item1, $valor1, $item2, $valor2){

          $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1 WHERE $item2 = :$item2");

          $stmt -> bindparam(":".$item1, $valor1, PDO::PARAM_STR);

          $stmt -> bindparam(":".$item2, $valor2, PDO::PARAM_STR);

          if($stmt -> execute()){

                return "ok";

            }else{

                return "error";

            }

            $stmt -> close();

            $stmt = null;

        }
       	
       	
       	/*=====  End of Actualizar Puertas  ======*/
      

        /* ================================================================
         BORRAR Puerta
        ================================================================= */
        static public function mdlBorrarPuerta($tabla, $datos){
        
          $stmt = Conexion::conectar()->prepare("DELETE FROM $tabla  WHERE numero = :numero");
            
          $stmt -> bindparam(":numero", $datos, PDO::PARAM_STR);

          if($stmt -> execute()){

                return "ok";

          }else{

                return "error";

          }

            $stmt -> close();

            $stmt = null;
        
        }

        /*=============================================
        LISTAR ESTADISTICAS EN RANGO DE FECHAS
        =============================================*/

        static public function mdlEstadisticas($tabla, $fechaInicial, $fechaFinal){

        if($fechaInicial == null){

          $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id DESC");
          //$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
          $stmt -> execute();
          return $stmt -> fetchAll();

        }else
          if ($fechaInicial == $fechaFinal){

            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha LIKE '%$fechaFinal%'");
            // $stmt -> bindParam(":fecha", $fechaFinal, PDO::PARAM_STR);
            $stmt -> execute();
            return $stmt -> fetchAll();

          }else{

            $fechaActual = new DateTime();
            $fechaActual -> add(new DateInterval("P1D"));
            $fechaActualMasUno = $fechaActual->format("Y-m-d");

            $fechaFinal2 = new DateTime($fechaFinal);
            $fechaFinal2 -> add(new DateInterval("P1D"));
            $fechaFinalMasUno = $fechaFinal2->format("Y-m-d");


            if($fechaFinalMasUno == $fechaActualMasUno){

              $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha BETWEEN '$fechaInicial' AND '$fechaFinalMasUno'");

            }else{

              $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE fecha BETWEEN '$fechaInicial' AND '$fechaFinal'");

            }


            
            // $stmt -> bindParam(":fechaInicial", $fechaInicial, PDO::PARAM_STR);
            // $stmt -> bindParam(":fechaFinal", $fechaFinal, PDO::PARAM_STR);
            $stmt -> execute();
            return $stmt -> fetchAll(); 

          }
        
        $stmt -> close();
        $stmt = null;


        }//fin del metodo de mostrar ventas

        
        /*==========================================*/
	}
