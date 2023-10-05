<?php 

	/*Función para obtener las regiones desde BD*/
	function obtenerRegion() {
		include '../assets/db/conexion.php'; /*conexión a la BD*/

		$query  = "SELECT * FROM region";
		$result = mysqli_query($connection, $query);
		$json   = array();

		while($row  = mysqli_fetch_array($result)) { /*$row = filas que devuelve la query*/
			$json[] = array(
					    'idRegion'  => $row['id_region'],
					    'nomRegion' => $row['region']
					  );
		}

		$jsonstring = json_encode($json);
		echo $jsonstring;
	}

	/*Función para obtener las comunas desde BD según región seleccionada*/
	function obtenerComuna($idRegion) {
		include '../assets/db/conexion.php'; /*conexión a la BD*/

		$query  = "SELECT * FROM comuna WHERE id_comuna = $idRegion";
		$result = mysqli_query($connection, $query);
		$json   = array();

		while($row  = mysqli_fetch_array($result)) { /*$row = filas que devuelve la query*/
			$json[] = array(
						'idComuna'  => $row['id_comuna'],
						'nomComuna' => $row['comuna']
					  );
		}

		$jsonstring = json_encode($json);
        echo $jsonstring;
	}

	/*Al seleccionar una región, envía el valor de su id para 
	entregarlo a obtenerComuna y desplegar sus respectivos campos*/
	if( isset($_POST['idReg']) ) {
        $idRegion = $_POST['idReg'];
        obtenerComuna($idRegion);
    } else {
		obtenerRegion();
	}

?>