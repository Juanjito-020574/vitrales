<?PHP
session_start();
extract($_REQUEST);
//									print_r($_REQUEST);
require_once "../system/database.php";
//include "funciones.php";
$title[url] = "&raquo;Login"; //importante se muestra en el titulo

$logg_in = "<script type='text/javascript'>
		$('#cuerpo').html('<center style=\"padding-top: 80px;\"><p>Por favor espere un momento.</p><p>Los datos se están cargando...</p><br /><img height=\"15px\" src=\"images/anim.gif\" /></center>')
			if(!$('#lUser').html()){
				var historial = location.pathname;
				self.location.replace(historial);
				self.location.reload();
			}
	</script>";

$logg_out = "<script type='text/javascript'>
		$('#cuerpo').html('<center style=\"padding-top: 80px;\"><p>Por favor espere un momento.</p><p>Los datos se están cargando...</p><br /><img height=\"15px\" src=\"images/anim.gif\" /></center>')
			var historial = location.pathname
			self.location.replace(historial);
	</script>";
$regSat = "<script type='text/javascript'>
		$('#cuerpo').html('<center style=\"padding-top: 80px;\"><p>Por favor espere un momento.</p><p>Los datos se están cargando...</p><br /><img height=\"15px\" src=\"images/anim.gif\" /></center>')
			$('#cuerpo').load('source/hi.php');
	</script>";

if($log_off){
	unset($_SESSION[$uri]);
	$nurs = "";
	$nEmp = "";
	echo $logg_out;
	exit;

}

if($login){
	if(!$user && !$pass){
		$msg = "Debe escribir un Nombre de Usuario y una Contraseña";
	}else{
		$lgn=new DataBase;
		$lgn->tabla='usuarios';
		$lgn->where="usuarios_nick='$user' AND usuarios_pass='".$lgn->_encript($pass)."'";
		$lgn->_query('SELECT');
		$row = $lgn->q_fetch_assoc;
		print_r($row);
		if($row[usuarios_nick] != $user || $row[usuarios_pass] != $lgn->_encript($pass)){
			$msg = "$pass - $row[usuarios_pass] - ".$lgn->q_query.$lgn->_encript($pass)." - Nombre de Usuario y/o Password incorrectos";
		}
		if($cnt==1){
			foreach($row as $i => $v){
				$ii = explode('_',$i);
				$_SESSION[$uri]["$ii[0]"][$i]=$v;
			}
		echo $logg_in;
		exit;
		}
	}
}

if($_SESSION[$uri]){
	echo $regSat;
	exit;
}

?>
<form id='f-login' class="formA" method="post" action="javascript:void(0)">
<p class="tit">Acceso de Usuarios Registrador</p>
<div class="label"><label for="user">Usuario</label></div>
<div class="text">
<input type="text" id="user" />
</div>
<div class="label"><label for="pass">Contraseña</label></div>
<div class="text">
<input type="password" id="pass" />
</div>
<div class="boton"><span class="l"></span><span class="r"></span><span class="t">
<input class="submit" type="submit" onclick="log_in()" value="Login" /></span></div>
<p class="msg"><?PHP echo $msg;?></p>
</form>


<!--
<p class="_inicio" style="text-align: center; bottom 10px"><a class="url" href="presentacion">Volver</a></p>
 -->

<script type="text/javascript">
</script>

