<?PHP
include('../system/functions.php');
require('../system/database.php');
extract($_REQUEST);
//												print_pre($_REQUEST);
$$tabla=new DataBase;
if($tipo=='INSERT'){
	$cmp='';$vlr='';
	foreach($datas as $i=>$v){
		if(is_array($v)){$v=implode(',',$v);}
		$cmp.="`$i`, ";
		$vlr.="'$v', ";
		$querySlct[$i]=$v;
	}
	$$tabla->query="INSERT INTO $tabla (".trim($cmp,', ').") values (".trim($vlr,', ').")";
	$$tabla->_query("$tipo");
//												echo $$tabla->q_query;
	switch($$tabla->q_aff_rows){
		case -1 :
		$msgQry = "Ha ocurrido un error al guardar los datos.";
		break;
		case 0 :
		$msgQry = "No se han modificado los datos.<br />No fue necesario guardar.";
		break;
		case 1 :
		$msgQry = "El Registro fue guardado satisfactoriamente.<br/>";
		$recargar='recargar';
		break;
		case $rows['aff_rows']>1 :
		$msgQry = $$tabla->q_aff_rows." registros guardados satisfactoriamente.";
	}
echo"<script type='text/javascript'>msgUsr('$msgQry');if('$recargar'=='recargar'){\$('#$div').html(carga2).load('files/$tabla.php',{cmpVinc:'$cmpVinc',valVinc:'$valVinc'});}</script>";
}
if($tipo=='UPDATE'){
	$cmpID=$tabla.'_id';
	$id=($id_old?$id_old:$datas[$cmpID]);
	$vlr='';
	foreach($datas as $i=>$v){
		if(is_array($v)){$v=implode(',',$v);}
		if(!$vlr){
			$vlr.="`$i`='".$$tabla->_mysql_real_escape_string(str_replace('\\','',$v))."'";
		}else{
			$vlr.=",`$i`='".$$tabla->_mysql_real_escape_string(str_replace('\\','',$v))."'";
		}
	}
	$$tabla->query="UPDATE $tabla SET ".trim($vlr,', ')." WHERE $cmpID='$id'";
	$$tabla->_query($tipo);
//												echo $$tabla->q_query;
	switch($$tabla->q_aff_rows){
		case -1 :
		$msgQry = "Ha ocurrido un error al guardar los datos.<br />".$$tabla->q_err;
		break;
		case 0 :
		$msgQry = "No se han modificado los datos.<br />No fue necesario guardar.";
		break;
		case 1 :
		$msgQry = "El Registro fue guardado satisfactoriamente.";
		$recargar='recargar';
		if($tabla=='usuarios' && $id==$_SESSION['la']['usuarios']['usuarios_id']){
			foreach($datas as $i=>$v){
				$_SESSION['la']['usuarios']["$i"]=$v;
			}
		}
		break;
		case $$tabla->aff_rows>1 :
		$msgQry = $$tabla->q_aff_rows." registros guardados satisfactoriamente.";
	}
echo"<script type='text/javascript'>msgUsr('$msgQry');if('$recargar'=='recargar'){\$('#$div').html(carga2).load('files/$tabla.php',{cmpVinc:'$cmpVinc',valVinc:'$valVinc'});}</script>";
}
if($tipo =='DELETE'){
//	print_r($_REQUEST);
	$query="DELETE FROM $tabla WHERE $cmpId='$id';";
	if($_SESSION['la']['usuarios']['usuarios_id'] == $id && $tabla=='usuarios'){
		$msgQry = "Usted no puede eliminar su propio registro.<br />Consulte con su Representante.";
	}else{
		$$tabla->query=$query;
		$$tabla->_query($tipo);
		switch($$tabla->q_aff_rows){
			case -1 :
			$msgQry = "Ha ocurrido un error al eliminar el registro.";
			break;
			case 0 :
			$msgQry = "No se ha eliminado el Registro.";
			break;
			case 1 :
			$msgQry = "Registro eliminado satisfactoriamente.";
			$recargar='recargar';
			break;
			case $$tabla->q_aff_rows>1 :
			$msgQry = $$tabla->q_aff_rows." registros eliminado satisfactoriamente.";
			$recargar='recargar';
			break;
		}
	}
echo"<script type='text/javascript'>msgUsr('$msgQry');if('$recargar'=='recargar'){\$('#$div').html(carga2).load('files/$tabla.php',{cmpVinc:'$cmpVinc',valVinc:'$valVinc'});}</script>";
}

if($tipo=='SELECT'){
	$$tabla->tabla=$tabla;
	$$tabla->columns=$columns;
	$$tabla->where=$where;
	$$tabla->_query($tipo);
	$qty=$$tabla->q_num_rows;
	$row=$$tabla->q_fetch_assoc;
	echo "$row[form_cant]";
}

?>
