<?php
include('system/functions.php');
session_start();
?>
<!DOCTYPE html>
<html lang="es">
<head>
<title class="title">Alcon</title>
<meta charset="utf-8" />
<meta name="author" content="juanjito" />
<meta name="subject" content="cotizaciones aluminio" />
<meta name="Description" content="venta e instalacion en carpinteria de aluminio" />
<meta name="Classification" content="construccion" />
<meta name="Keywords" content="aluminio, vidrio, templado, instalacion, carpinteria, bolivia" />
<meta name="Geography" content="all" />
<meta http-equiv="cache-control" content="public" />
<meta http-equiv="pragma" content="no-cache" />
<meta name="distribution" content="global" />
<meta name="Robots" content="all" />
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="icon" href="images/favicon.ico" />
<link rel="stylesheet" href="style/style.css" media="all" />
<link rel="stylesheet" href="style/print.css" media="print" />
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
<div id="notice"></div>
<header id="bodyhead">
<div id='H-logo'><img src="images/alcon.png"/></div>
<div id="H-titulo">
<p class="nospace">Control y Calculo para Cerramientos</p>
<p class="nospace">Carpintería de Aluminio</p><p class="nospace">Vidrio Templado</p>
</div>
<div id="H-login"><? include('files/login.php');?></div>
</header>
<nav id="menu">
	<a href="inicio.html">inicio</a><?if($_SESSION['la']['usuarios']){?>
	<a href="clientes.html">clientes</a>
	<a href="familias.html">familias</a>
	<a href="tipologia.html">tipologia</a>
	<a href="proveedores.html">proveedores</a>
	<a href="materiales.html">materiales</a>
	<?}?><a href="contactos.html">contactos</a>
</nav>
<div id="contenido">
	<section id="areatrab">
	<div id="form" class="form"></div>
	<div id="form-1" class="subform"></div>
	<div id="form-2" class="subform"></div>
	<div id="form-3" class="subform"></div>
	<div id="form-4" class="subform"></div>
	</section>
</div>
<footer id="bodyfoot">Juanjito</footer>
</body>
</html>