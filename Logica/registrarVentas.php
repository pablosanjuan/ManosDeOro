<?php
	include_once("../Librerias/Datasource.php");
	include_once("../Librerias/ArtesanoDao.php");
	include_once("../Librerias/Artesano.php");
	include_once("../Librerias/ProductoDao.php");
	include_once("../Librerias/Producto.php");
	include_once("../Librerias/Variables.php");
	$conn=new Datasource($dbhost,$dbName,$dbUser,$dbPassword);
	$pdao=new ProductoDao();
	$adao=new ArtesanoDao();
	$index=$_POST["id"];
	$ventas=$_POST["ventas"];
	$stock=0;
	$producto=$pdao->getObject($conn,$index);
	$artesano=$adao->getObject($conn,($producto->getIdartesano()));
	$stock=$producto->getStock()-$ventas;
	$ventas=$ventas+$producto->getVentas();
	$producto->setStock($stock);
	$producto->setVentas($ventas);
	if($producto->getStock()==0)
	{
		$producto->setAceptado(3);
		$producto->setNotificado(0);
		$asunto="Notificación estado del producto: ".$producto->getDescripcion();
		$cadena="Estimad@ ".$artesano->getNombre()."<br>Te informamos que las existencias de tu producto: ".$producto->getDescripcion()." se han acabado.<br>Atentamente,<br>Artesanías Manos de Oro";
		$cabeceras  = 'MIME-Version: 1.0' . "\r\n";
		$cabeceras .= 'Content-type: text/html; charset=utf-8' . "\r\n";
		mail($artesano->getEmail(), $asunto, $cadena,$cabeceras);
	}
	if($pdao->save($conn,$producto))
	{
		?>
			<script type="text/javascript">
				alert("La venta ha sido registrada");
			</script>
			<meta http-equiv="REFRESH" content="0,url=../Interfaces/admonTienda.php">
		<?php
	}
	else
	{
		?>
			<script type="text/javascript">
				alert("Error actualizando la base de datos");
			</script>
			<meta http-equiv="REFRESH" content="0,url=../Interfaces/registrarVentas.php">
		<?php
	}
?>