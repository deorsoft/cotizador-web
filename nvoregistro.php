<html lang="es">
	
	<head>
		<title>Nuevo Registro</title>
			
		<link rel="stylesheet" href="css/regStyles.css" type="text/css" media="all" />	
		
	</head>

	<body>
	
		<div style="">
	
		</div>
		
		<form id="login" action="registro.php" method="post">
			<h2>Registra tus datos</h2>
			<fieldset id="inputs">
				<input id="correo" type="text" name="correo" placeholder="tucorreo@example.com" autofocus="" required="">   
				<input id="password" type="password" name="password" placeholder="Password" required="">
				<input id="nombre" type="text" name="nombre" placeholder="Nombre(s)" required="">
				<input id="paterno" type="text" name="paterno" placeholder="Apellido Paterno" required="">
				<input id="materno" type="text" name="materno" placeholder="Apellido Materno">
				<input id="nacimiento" type="text" name="nacimiento" placeholder="Fecha de Nacimiento" required="">
				<input id="sexo" type="text" name="sexo" placeholder="Sexo" required="">
				<input id="telefono" type="text" name="telefono" placeholder="Tel&eacute;fono" required="">
			</fieldset>
			
			<fieldset id="actions">
				<input type="submit" id="submit" value="Registrar">				
			</fieldset>
			<a href="http://www.monchys.com" id="back">By Monchys</a>
		</form>	
		
	</body>
	
</html>