<?PHP
extract($_REQUEST);
//print_r($_REQUEST);
include('../system/functions.php');
require_once('../system/database.php');
$tabla='cotizacion_detalle_materiales';$subform='';$clave='cotizacion_id';$order="";
$$tabla=new DataBase($tabla);
//$$tabla->columns="cotizacion_id,concat(materiales_id,' ',nombre) as materiales_id,formula,unidad";
extract($$tabla->q_desc);
if($cmpVinc&&$valVinc){$where="$tabla.$cmpVinc='$valVinc'";$visible[$cmpVinc]=-1;}
$$tabla->where=$where;
$$tabla->_query('SELECT');
$row=$$tabla->q_fetch_assoc;
//												print_pre($$tabla->q_desc);
//												echo $$tabla->q_query."<br>";
//$th="<thead><tr><th width='2%'></th>";
//$tb="<tbody id='todo_$tabla' class='todo_reg'>";
//$vsf=($subform?"<span id='$tabla-$subform-$clave' class='ver_subform'><img src='images/bt_mas.png' width='15' height='15' /></span>":'');
$th="<caption><h1>$tabla</h1></caption><thead><tr>
<th class='material' width='130px'>Material</th>
<th class='cantidad' width='70px'>Cantidad</th>
<th class='unidad' width='50px'>Unidad</th>
<th class='p_unit' width='70px'>Precio Unit</th>
<th class='p_total' width='70px'>TOTAL</th>
</tr></thead>";
//<th class='detalles'>Detalles</th>;
$tb="<tbody>";
do{
	$tb.="<tr id='$row[materiales_id]'>";
	$tb.="<td class='material algn_left'>$row[materiales_id] $row[nombre]</td>";
	$tb.="<td class='cantidad algn_number'></td>";
	$tb.="<td class='unidad algn_left'>$row[unidad]</td>";
	$tb.="<td class='p_unit algn_number'></td>";
	$tb.="<td class='p_total align_number'></td>";
//	$tb.="<td class='detalles algn_left'></td>";
	$tb.="</tr>";
	//Aqui se hace la conversion del campo formula a array
	$fml=str_replace(array('{',':','}',')x('),array('array(','=>',')','),dim2=>('),$row['formula']);
	eval('$fml='.$fml.';');
	
print_pre($fml);
	$tipo=substr($row['materiales_id'],0,1);
//	echo $tipo;
/*	if($tipo=='P'){
		foreach($fml as $i=>$v){
			$ss=explode('_',$i);
			$dim1=round($v[dim],4,PHP_ROUND_HALF_UP);
			$dim2=round($v[dim2],4,PHP_ROUND_HALF_UP);
			$cant=round($v[cant],4,PHP_ROUND_HALF_UP);
			eval('$s_tot='.($dim1*($dim2?$dim2:1)*$cant).';');
			for($c=0;$c<$v['cant'];$c++){
				$ii=explode('_',$i);
				$arr[$ii[1]."_".($c+1)]=$dim1;
			}
		}
		
		$bar_=new DataBase;
		$bar_->columns='dim3';
		$bar_->tabla='materiales';
		$bar_->where="materiales_id='$row[materiales_id]'";
		$bar_->_query('SELECT');
		$rowB=$bar_->q_fetch_assoc;
		
		$barra=$rowB['dim3'];
		$sum=array_sum($arr);
		$cont=count($arr);
		arsort($arr);
		$last=$arr[$cont-1];
		$prom=round($sum/$cont,4,PHP_ROUND_HALF_UP);
		$residuo=fmod($sum,$barra);
		$arrProm=$arr;
		array_walk($arrProm,function(&$prom,$i,$v){$prom=$prom+$v;},$prom);
		$lastPro=$arrProm[$cont-1];
		$newArr[$row[materiales_id]]=$arr;
		
	}*/


}while($row=mysql_fetch_assoc($$tabla->q_src));
$tb.="</tbody>";
//print_pre($newArr);
?>
<div class="btns"><div>
<a class="er_tabla" onclick="validar(<?echo "er_$tabla,'$cmpVinc','$valVinc'"?>)">Guardar</a>
<a class="er_tabla" onclick="cancelar('<?echo "tber_$tabla"?>')">Cancelar</a>
<span class="er_tabla">------------</span>
<a>Imprimir</a>
<a id="detalles_a" onclick="showDetalles()">Ver Detalles</a>
</div></div>
<div class="dts">
<table id="<?echo "t-$tabla";?>">
<?echo "$th";?>
<?echo "$tb";?>
</table>
</div>
<script type="text/javascript">
var formula=$('#<?echo "t-$tabla";?> tbody').find('.formula');
$.each(formula,function(i,v){
	var rplFml=$(this).html().replace(/\)x\(/ig,'),dim2:(')
	var fml=eval("("+rplFml+")");
	var tbb=0;
	var cantidad = $(this).parent().find('.cantidad')
	var detalle = $(this).parent().find('.detalle')
	var det;var perfil={};var perfOrd={};
	$.each(fml,function(ia,va){
		var dim1=parseFloat(va.dim);
		var dim2=parseFloat(va.dim2);
		var cant=parseFloat(va.cant);
		var sTot=dim1*(dim2?dim2:1)*cant;
		var detV='';
		sTot=parseFloat(sTot);
		var ss=ia.split('_');
		if(ia.substr(0,1)=='P'){
//			perfil={name:ss[0]}
			for(var c=0;c<cant;c++){
				var iai=ia.split('_');
				perfil[iai[1]+"_"+(c+1)]=dim1;
				if(det){
					det+=dim1.toFixed(4)+"; ";
				}else{
					det=dim1.toFixed(4)+"; ";
				}
			}
			perfOrd=abarra(perfil,ia);
		}else if(ia.substr(0,1)=='V'){
			for(var c=0;c<cant;c++){
				if(det){
					det+=dim1.toFixed(4)+" x "+dim2.toFixed(4)+"; ";
				}else{
					det=dim1.toFixed(4)+" x "+dim2.toFixed(4)+"; ";
				}
			}
			tbb+=sTot;
		}else{
			tbb+=sTot;
		}
	})
cantidad.html(tbb.toFixed(4));
detalle.html(det);
			console.log(perfOrd);
})
</script>
