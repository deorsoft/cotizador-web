<?php 
	include ('conexion.php');
	
			$correo=$_POST['correo'];
			$password=$_POST['password'];
			$nombre=$_POST['nombre'];
			$paterno=$_POST['paterno'];
			$materno=$_POST['materno'];
			$nacimiento=$_POST['nacimiento'];
			$sexo=$_POST['sexo'];
			$telefono=$_POST['telefono'];			
			
			$inserta="
			INSERT INTO usuarios
			(correo, password, nombre, paterno, materno, nacimiento, sexo, telefono)
			VALUES
			('$correo', '$password', '$nombre', '$paterno', '$materno', '$nacimiento', '$sexo', '$telefono')
			";
			
			//mysql_query($inserta) or die(mysql_error());
			
				if(mysql_query($inserta))
					header('Location: cotizador.php');
				else
					echo "Hubo un error en al consulta";
?>