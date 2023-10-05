<!doctype html>
<html>
  <head>
    <meta charset="utf-8" />
    <title> Sistema de Votación</title>
    <link rel="stylesheet" href="assets/css/style.css" />
  </head>
  <body>
    <header><h1>FORMULARIO DE VOTACIÓN:</h1></header>
    <div class="container">
    <form action="/my-handling-form-page" method="post">
      <ul>
        <li>
          <label for="name">Nombre y Apellido</label>
          <input type="text" id="name" name="user_name" />
        </li>
        <li>
          <label for="alias">Alias</label>
          <input type="text" id="alias" name="user_alias" />
        </li>
        <li>
          <label for="rut">RUT</label>
          <input type="text" id="rut" name="user_rut" />
        </li>
        <li>
          <label for="mail">Email</label>
          <input type="email" id="mail" name="user_mail" />
        </li>
        <li>
          <label>Región</label>
          <select id="region">
            <!-- select para la region, carga con js -->
          </select>
        </li>
        <li>
          <label>Comuna</label>
          <select id="comuna">
          <option selected>--Seleccione--</option>     
          <!-- select para las comunas, carga con js dependiendo la region-->           
          </select>
        </li>
        <li>
          <label>Candidato</label>
          <select id="candidato">
            <!-- select para el candidato, carga con js -->
          </select>
        </li>
        <li>
          <label>Como se enteró de Nosotros</label>
          <label class="label-check"><input type="checkbox" id="web" name="web" value="web">Web</label>
          <label class="label-check"><input type="checkbox" id="tv" name="tv" value="tv">TV</label>
          <label class="label-check"><input type="checkbox" id="rs" name="rs" value="rs">Redes Sociales</label>
          <label class="label-check"><input type="checkbox" id="amigo" name="amigo" value="amigo">Amigo</label>
        </li>
        <li class="button-votar">
          <button type="button" id="enviar">Votar</button>
        </li>
        <div id="respuesta"></div>
      </ul>
    </form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="controlador/select.js"></script>
    <script src="controlador/envioForm.js"></script>
  </body>
</html>