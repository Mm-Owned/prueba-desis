$(document).ready(function () {
	let $region       = document.getElementById('region'); /*<select> de región*/
	let $comuna    	  = document.getElementById('comuna'); /*<select> de comuna*/
	let $candidato    = document.getElementById('candidato'); /*<select> de candidato*/
	
	/*Función para cargar las regiones en el <select>*/
	function cargarRegiones() {
		$.ajax({
			type: 'GET',
			url: 'modelo/slcRegionComuna.php',
			success: function (response) {
				const regiones = JSON.parse(response)

				let template = '<option class="form-control" selected disabled>--Seleccione--</option>'

				regiones.forEach(region => {
					template += `<option class="form-control" value="${region.idRegion}">${region.nomRegion}</option>`;
				})

				$region.innerHTML = template;
			}
		})
	}
	cargarRegiones();

	/*Función para cargar las comunas en el <select>*/
	function cargarComunas(envioData) {
		$.ajax({
			url: 'modelo/slcRegionComuna.php',
            type: 'POST',
			data: envioData,
			success: function(response) {
				const comunas = JSON.parse(response)

				let template = '<option class="form-control" selected disabled>--Seleccione--</option>'

				comunas.forEach(comuna => {
					template += `<option class="form-control" value="${comuna.idComuna}">${comuna.nomComuna}</option>`;
				})

				$comuna.innerHTML = template;
			}
		});
	}

	/*Envía value de región a cargarComunas para 
	desplegar las respectivas comunas según región*/
	$region.addEventListener('change', () => {
        const idRegion = $region.value

        const envioData = {
			'idReg':idRegion
		}
		cargarComunas(envioData);
    })

	/*Función para cargar candidatos en el <select>*/
    function cargarCandidatos() {
		$.ajax({
			type: 'GET',
			url: 'modelo/slcCandidatos.php',
			success: function (response) {
				const candidatos = JSON.parse(response)

				let template = '<option class="form-control" selected disabled>--Seleccione--</option>'

				candidatos.forEach(candidato => {
					template += `<option class="form-control" value="${candidato.id_candidato}">${candidato.nomCandidato}</option>`;
				})

				$candidato.innerHTML = template;
			}
		})
	}
	cargarCandidatos();
})