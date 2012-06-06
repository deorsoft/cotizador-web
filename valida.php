<?php 
	include ('conexion.php');
	
			$correo=$_POST['correo'];
			$password=$_POST['password'];
			
			$valida= "SELECT * FROM usuarios WHERE correo='$correo' AND password='$password'";
			
			$resultado= mysql_query($valida);
			
			//USO DEL RESULTADO DE LA CONSULTA
			$total= mysql_num_rows($resultado);
			$datos= mysql_fetch_array($resultado);
			
			if($total==1){
					session_start();
					$_SESSION['id_cliente'] = $datos['id_cliente'];
					$_SESSION['nombre'] = $datos['nombre'];					
					$_SESSION['password'] = $datos['password'];					
					
					header('Location: cotizador.php');
			}
			else{
				echo "No se encuentra el usuario";
			}
?>