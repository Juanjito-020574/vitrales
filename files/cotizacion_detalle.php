<?PHP
extract($_REQUEST);
//print_r($_REQUEST);
include('../system/functions.php');
require_once('../system/database.php');
$tabla='cotizacion_detalle';$subform='tipologia_materiales';$clave='tipologia_id';$order="codificacion DESC";
//$cmpVinc='tipologia_id';
include('partial/tablas.php');
//include('cotizacion_detalle_materiales.php');
?>
<script type="text/javascript">
var c=$('#t-cotizacion_detalle').parents('.subform,.form').attr('id');
var m2=selector_sum($('tbody#todo_cotizacion_detalle').find('td.m2'));
$('#'+c+' .btns div').append('<a onclick="calcular(<?echo "\'$cmpVinc\',\'$valVinc\'"?>)">Calcular</a>');
$('#t-cotizacion>tbody>tr.active').find('td.m2').html(m2.toFixed(4))
//console.log(selector_sum(m2))
</script>