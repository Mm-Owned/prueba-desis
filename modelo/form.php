<?php
	function insertarForm() {
		/*Recuperamos variables del POST*/	
		$nombre    = $_POST['nom'];
		$alias 	   = $_POST['alias'];
		$rut 	   = $_POST['rut'];
		$mail      = $_POST['mail'];
		$region    = $_POST['region'];
		$comuna    = $_POST['comuna'];
		$candidato = $_POST['candidato'];
		$web 	   = $_POST['web'];
		$tv 	   = $_POST['tv'];
		$rs 	   = $_POST['rs'];
		$amigo 	   = $_POST['amigo'];

		/*verificamos que el RUT no existe en nuestra BD*/
		if(buscarRepetido($rut) == 1){
			echo 2;
		} else {
		include '../assets/db/conexion.php'; /*conexión a la BD*/

		$query  = "INSERT INTO votos 
		(nombre,alias,rut,mail,region,comuna,candidato,web,tv,redes_sociales,amigo) 
		VALUES 
		('$nombre','$alias','$rut','$mail','$region','$comuna','$candidato','$web','$tv','$rs','$amigo')";

		echo mysqli_query($connection, $query);
		}
	}

	/*Función que busca el RUT ingresador en el form en nuestra BD para que no se repita*/
	function buscarRepetido($rut){
		include '../assets/db/conexion.php'; /*conexión a la BD*/

		$query  = "SELECT * FROM votos WHERE rut = '$rut'";
		$result = mysqli_query($connection, $query);

		if(mysqli_num_rows($result) > 0){
			return 1;
		} else {
			return 0;
		}
	}

	insertarForm();
?>