<?PHP
extract($_REQUEST);
include('../system/functions.php');
require_once('../system/database.php');
$tabla='tipologia_materiales';$subform='';$clave='tipologia_materiales_id';
include('partial/tablas.php');
?>
<script type="text/javascript">
$('#materiales_id').live('change',function(){
	$('#ensamble,#formula,#cantidad').val('')
})
$('#ensamble').live('change',function(){
	var ensamble=$(this).val();
var $M=$('table#t-tipologia tbody tr.active td.movil').html();
var $Dv=$('table#t-tipologia tbody tr.active td.div_vertical').html();
var $Dh=$('table#t-tipologia tbody tr.active td.div_horizontal').html();
var $A="$A";
var $h="$h";
var $Ah="$Ah";
var $c="$c";
var $x="$"+ensamble;
	var columns="concat(formula,\'|||\',cantidad) as form_cant";
	var tabla="materiales";
	var where="materiales_id='"+$('select#materiales_id').val()+"'";
	$.ajax({url:'files/query.php',
	data:{columns:columns,tabla:tabla,where:where,tipo:'SELECT'},
	type:'POST',
	dataType:'text',
	error:function(err){msgUsr(err)},
	success:function(msg){
		var msgA=msg.split('|||');
		msgA[0]=msgA[0].replace('$x',$x).replace('$M',$M).replace('$Dv',$Dv).replace('$Dh',$Dh);
		$('input#formula').val(msgA[0]);
		$('input#cantidad').val(eval(msgA[1]));
	}
	});
})
</script>