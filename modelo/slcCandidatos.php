<?php 

	/*Función para obtener los candidatos desde BD*/
	function obtenerCandidatos() {
		include '../assets/db/conexion.php';

		$query  = "SELECT * FROM candidato";
		$result = mysqli_query($connection, $query);
		$json   = array();

		while($row = mysqli_fetch_array($result)) { /*$row = filas que devuelve la query*/
			$json[] = array(
						'id_candidato' => $row['id'],
						'nomCandidato' => $row['candidato']
					);
		}

		$jsonstring = json_encode($json);
		echo $jsonstring;
	}
	obtenerCandidatos();
?>