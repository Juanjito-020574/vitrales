<?PHP
extract($_REQUEST);
//											print_r($_REQUEST);
//											echo "<br>";
include('../system/functions.php');
require_once('../system/database.php');
$tabla='precios_materiales';$subform='';$clave='precios_materiales_id';
$onPlus=($valVinc?"AND $tabla.$cmpVinc ='$valVinc'":'');
$join4="materiales_color ON (materiales_color.materiales_id=precios_materiales.materiales_id AND materiales_color.color =precios_materiales.color $onPlus)";
switch($cmpVinc){
	case 'proveedores_id':
		$or="$tabla.proveedores_id is null";
		$order='materiales_color.materiales_id,materiales_color.color';
	break;
	case 'materiales_id':
		$or="materiales_color.materiales_id='$valVinc'";
		$order="$tabla.proveedores_id,materiales_color.color";
	break;
}
include('partial/tablas.php');
?>
<script type="text/javascript">
$('#t-precios_materiales .<?echo $cmpVinc;?>').html('<?echo $valVinc?>');
</script>
