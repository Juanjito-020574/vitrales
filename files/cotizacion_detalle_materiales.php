<?PHP
extract($_REQUEST);
//print_r($_REQUEST);
include('../system/functions.php');
require_once('../system/database.php');
$tabla='cotizacion_detalle_materiales';$subform='';$clave='cotizacion_id';$order="";
$$tabla=new DataBase($tabla);
//$$tabla->columns="$tabla.*";
extract($$tabla->q_desc);
if($cmpVinc&&$valVinc){$where="$tabla.$cmpVinc='$valVinc'";$visible["$cmpVinc"]=-1;}
$$tabla->where=$where;
$$tabla->_query('SELECT');
$row=$$tabla->q_fetch_assoc;
//												print_pre($row);
//												echo $$tabla->q_query."<br>";
//$th="<caption><h1>$tabla</h1></caption><thead><tr><th width='2%'></th>";
//$tb="<tbody id='todo_$tabla' class='todo_reg'>";
//$vsf=($subform?"<span id='$tabla-$subform-$clave' class='ver_subform'><img src='images/bt_mas.png' width='15' height='15' /></span>":'');
$th="<thead><tr><th width='130px'>Material</th>
<th width='70px'>Cantidad</th>
<th width='50px'>Unidad</th>
<th width='70px'>Precio</th>
<th>Detalles</th></tr></thead>";
$tb="<tbody>";
do{
	$tb.="<tr id='$row[materiales_id]'><td class='algn_left material'>$row[materiales_id] $row[nombre]</td>";
	$tb.="<td class='algn_number cantidad'>";
echo "<pre>".$row["nombre"]." => ".$row["formula"]."<br/>"."<br/>"."<pre>";

	$fml=json_decode($row["formula"],true);
	echo json_last_error();
	echo json_last_error_msg();
	$fml=str_replace(array('{',':','}',')x('),array('array(','=>',')','),dim2=>('),$row['formula']);
//	eval('$fml="'.$fml.'";');
	$tbb=0;$det='';$detV='';
	$arr='';$perfil='';
	foreach($fml as $i=>$v){
		$matold="$row[materiales_id] $row[nombre]";
		$ss=explode('_',$i);
		$dim1=round($v["dim"],4,PHP_ROUND_HALF_UP);
		$dim2=round($v["dim2"],4,PHP_ROUND_HALF_UP);
		$cant=round($v["cant"],4,PHP_ROUND_HALF_UP);
		eval('$s_tot='.(($dim1*($dim2?$dim2:1))*$cant).';');
		if(substr($i,0,1)=='P'){
			for($c=0;$c<$v['cant'];$c++){
				$ii=explode('_',$i);
				$c1=$c+1;
				$arr["$ii[1]_$c1"."_$ii[2]"]=$dim1;
			}
		}elseif(substr($i,0,1)=='V'){
/*			for($c=0;$c<$v['cant'];$c++){
				$detV.="<tr><td>".str_replace('.',',',$dim1)."</td><td>".str_replace('.',',',$v[dim2])."</td><td>1</td><td>$ss[1]_".($c+1)."</td></tr>";
			}
*/				$detV.="<tr><td>".str_replace('.',',',$dim1)."</td><td>".str_replace('.',',',$v["dim2"])."</td><td>$v[cant]</td><td>$ss[1]</td></tr>";
			$tbb+=$s_tot;
		}else{
			$tbb+=$s_tot;
		}
	}
	if(substr($i,0,1)=='P'&&is_array($arr)){
		arsort($arr);
		$perfil=abarra($row["materiales_id"],$arr);
		$tbb=$perfil["numero"];
		$det=$perfil["grafico"];
	}elseif(substr($i,0,1)=='V'&&$detV){
		$det="<table id='detalleVentanas' ondblclick='seleccionarTabla(this)' class='detalle'>$detV</table>";
	}
	$tb.=number_format($tbb,4,',','.');
	$tb.="</td>";
	$tb.="<td class='algn_left unidad'>$row[unidad]</td>";
	$tb.="<td class='algn_number precio'></td>";
	$tb.="<td class='algn_left detalles'>$det</td></tr>";
}while($row=mysqli_fetch_assoc($$tabla->q_src));
$tb.="</tbody>";
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
<?//echo "$nuevoreg";?>
<?echo "$tb";?>
</table>
</div>
<script type="text/javascript">
</script>