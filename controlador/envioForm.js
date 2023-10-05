$('#enviar').click(function(){
	/*Recuperamos datos de los campos para validar y procesar el insert en BD*/
	let nombre    = document.getElementById('name').value;
	let alias 	  = document.getElementById('alias').value;
	let rut 	  = document.getElementById('rut').value;
	let mail 	  = document.getElementById('mail').value;
	let region    = document.getElementById('region');
	let regText   = region.options[region.selectedIndex].text;
	let comuna    = document.getElementById('comuna');
	let comText   = comuna.options[comuna.selectedIndex].text;
	let candidato = document.getElementById('candidato');
	let canText   = candidato.options[candidato.selectedIndex].text;
	let web 	  = document.getElementById('web').checked;
	let tv 	      = document.getElementById('tv').checked;
	let rs 	      = document.getElementById('rs').checked;
	let amigo 	  = document.getElementById('amigo').checked;

	/*dataForm = datos que enviaremos en el POST*/
	const dataForm = "nom="+nombre+"&alias="+alias+"&rut="+rut+"&mail="+mail+"&region="+regText
	+"&comuna="+comText+"&candidato="+canText+"&web="+web+"&tv="+tv+"&rs="+rs+"&amigo="+amigo;

	
	let expresion1 = /\w+@\w+\.+[a-z]/; /*formato email*/
	let expresion2 = /^[a-z0-9]*$/i; /* formato letras y números*/
	let expresion3 = /^[0-9]+[-|‐]{1}[0-9kK]{1}$/; /* formato RUT*/ 

	/*Validación campos vacios*/
	if(nombre === "" || alias === "" || rut === "" || mail === "" || regText === "--Seleccione--" || 
		comText === "--Seleccione--" || canText === "--Seleccione--"){
		alert('Todos los campos son requeridos');
		return false;

	/*Validación email*/	
	} else if(!expresion1.test(mail)){ 
		alert('El mail no es valido, ejemplo formato: micorreo@midominio.cl');
		return false;

	/*Validación alias*/	
	} else if(!expresion2.test(alias) || alias.length <= 5){ 
		alert('el alias puede contener solo letras y números y debe ser mayor a 5 caracteres');
		return false;

	/*Validación RUT*/	
	} else if(!expresion3.test(rut)){ 
		alert('el RUT debe tener guion y digito verificador ejemplo: "123-1"');
		return false;

	/*Validación checkbox vacios*/	
	} else if(web == false && tv == false && rs == false && amigo == false){
		alert('debe seleccionar al menos 2 opciones en el campo "Como se enteró de nosotros"');
		return false;

	/*Validación al menos 2 checkbox seleccionados*/	
	} else if(web == false && tv == false && rs == false || tv == false && rs == false && amigo == false ||
		  web == false && rs == false && amigo == false ||web == false && tv == false && amigo == false){
		alert('debe seleccionar al menos 2 opciones en el campo "Como se enteró de nosotros"');
		return false;
	} else {
	$.ajax({
			url: 'modelo/form.php',
            type: 'POST',
			data: dataForm,
			success: function(response) {
						if(response == 1){
							alert("Enviado con exito");
						}else if(response == 2){
							alert("El RUT ingresado ya existe, intente con otro");
						} else {
							alert("error en el servidor");
						}	
			}
		});
	 }
});