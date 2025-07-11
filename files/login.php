<?PHP
if(!function_exists('include_if_exists')){include('../system/functions.php');}
include_if_exists('system/Login.php');
//													print_pre($_REQUEST);
!session_start()?session_start():'';
extract($_REQUEST);
$ob = 'user_data';
$$ob = new Login;
$$ob->tabla=$ob;
$$ob->data=$_POST;
?>
<div class="asContent">
<?PHP
if(($_SESSION['la']['usuarios'] && !isset($logg))){
/*	if($_COOKIE['mck']&&$_COOKIE['mck']!=session_id()&&$_COOKIE[$_COOKIE['mck']]){
		$ckie=explode('law1024',$_COOKIE[$_COOKIE['mck']]);
		$$ob->loged = "--- <span>$ckie[1]</span> ---<br />escriba su contraseña para verificar sus datos";
//		$$ob->_loged();
		$closeBotton="
		<input type='text' id='user' name='user' required='' value='$ckie[1]'/>
		<div class='labelLog'><label for='pass'>Contraseña</label></div>
		<div class='formLog'><input type='password' id='pass' name='pass' placeholder='Contraseña' required='' /></div>
		<input class='submitLog' type='button' onclick='canc_rest()' value='Cancelar' />
		<input class='submitLog' type='submit' onclick='rest_log_in()' value='Acceder' />";
	}else{*/
		$$ob->loged = "--- <span>".$_SESSION['la']['usuarios']['usuarios_nick']."</span> ---<br />Revisa tu menu de usuario para mas opciones habilitadas en tu cuenta";
		$$ob->_loged();
		$closeBotton="<div id='logg'><a class='aLog' onclick='log_off()'>Cerrar</a></div>";
/*	}*/
}else{
	switch($logg){
		case 'login':
			$$ob->login = "<script type=\"text/javascript\">$(\"html\").empty();self.location.reload();</script>";
			$$ob->_login();
		break;
		case 'logoff':
			session_start();
			$$ob->logout = "<script type=\"text/javascript\">/*unsetCookie('mck');unsetCookie('".session_id()."');*/$(\"html\").empty();self.location.reload();</script>";
			$$ob->_logout();
	}
?>
	<form id="f-login" method="post" novalidate="" action="javascript:void(0)">
		<div class="labelLog">
			<label for="user">Acceso:</label>
		</div>
		<div class="formLog">
			<input type="text" id="user" name="user" placeholder="Nombre de usuario" required="" />
		</div>
		<div class="labelLog">
			<input class="submitLog" type="submit" onclick="log_in()" value="Acceder" />
		</div>
		<div class="formLog">
			<input type="password" id="pass" name="pass" placeholder="Contraseña" required="" /><!--cambiar por password -->
		</div>
	</form>
<?PHP
}
//echo "<pre>maryaran: ".$$ob->_encript('maryaran')."<br/>marcovar:".$$ob->_encript('marcovar')."</pre>";
$msgExt=(!$msgUsr ? (substr($$ob->msgUsr,0,7)!='<script'?$$ob->msgUsr:'') : $msgUsr);
?>
<div id="msgUsr"><?PHP if($_SESSION['la']['usuarios']){
echo "Bienvenid@:<br />&laquo; <strong>".$_SESSION['la']['usuarios']['usuarios_nick']."</strong> &raquo;".($_SESSION['la']['usuarios']['usuarios_nivel']>4?" IP:".$_SERVER['REMOTE_ADDR']:'');
}?></div>
<?PHP echo $closeBotton?>
</div>
<div style="display:none;"><?PHP echo $$ob->msgUsr;?></div>
<script type='text/javascript'>
msgUsr('<? echo addslashes($msgExt);?>');
</script>
