
		<h2>USTED BUSCO EL PASTEL</h2>
		<p>Datos del sabor seleccionado</p>

	
	<?php 
		include('conexion.php');
		mysql_query("SET NAMES 'utf8'");
		$consulta = "
		
		SELECT pasteles.nombre pastel,tipos.nombre tipo,sabores.nombre sabor,betunes.nombre betun,rellenos.nombre relleno, precio, pasteles.imagen imagen FROM pasteles 
		
		LEFT JOIN tipos ON tipos.id_tipo = pasteles.id_tipo
		LEFT JOIN sabores ON sabores.id_sabor = pasteles.id_sabor
		LEFT JOIN betunes ON betunes.id_betun = pasteles.id_betun
		LEFT JOIN rellenos ON rellenos.id_relleno = pasteles.id_relleno
		
		WHERE pasteles.id_tipo={$_POST['tipo']} AND pasteles.id_sabor={$_POST['sabor']} AND pasteles.id_betun={$_POST['betun']} AND pasteles.id_relleno={$_POST['relleno']}
				
		";
		
		$resultado = mysql_query($consulta, $conexion) or die(mysql_error());
		$total = mysql_num_rows($resultado);
		
		if ($total> 0) {
			while ($columna = mysql_fetch_array($resultado)):

	?>

	<p>
	<?php 
		echo ucwords(strtolower('NOMBRE: '.$columna['pastel'].'<br>'));
		echo ucwords(strtolower('TIPO: '.$columna['tipo'].'<br>'));
		echo ucwords(strtolower('SABOR: '.$columna['sabor'].'<br>'));
		echo ucwords(strtolower('BETUN: '.$columna['betun'].'<br>'));
		echo ucwords(strtolower('RELLENO: '.$columna['relleno'].'<br>'));
		echo ucwords(strtolower('PRECIO: '.$columna['precio'].'<br>'));		
	?>
	</p>

	<img src="img/pasteles/<?php echo $columna['imagen']?>" width="300px">

	<?php 
			endwhile;
	}
	else
		echo 'NO SE ENCUENTRA EL PASTEL';
	?>