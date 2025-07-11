<?PHP
session_start();
unset($_SESSION['la']['total_cot_m2']);
$$tabla=new DataBase($tabla);
//$$tabla->columns="$tabla.*";
extract($$tabla->q_desc);
if($cmpVinc&&$valVinc){
	$where="$tabla.$cmpVinc='$valVinc'";
	$predet[$cmpVinc]=$valVinc;
	$visible[$cmpVinc]=-1;
	$nuevo[$cmpVinc]='normal';
	$edit[$cmpVinc]='normal';
}
$$tabla->join1=$join1;
$$tabla->join2=$join2;
$$tabla->join3=$join3;
$$tabla->join4=$join4;
$$tabla->where=$where;
$$tabla->whereOr=$or;
$$tabla->order=$order;
$$tabla->_query('SELECT');
//												print_pre($$tabla->q_desc);
//												echo $$tabla->q_query."<br>";
$row=$$tabla->q_fetch_assoc;
$th="<caption><h1>$tabla</h1></caption><thead><tr><th width='2%'></th>";
$tb="<tbody id='todo_$tabla' class='todo_reg'>";
$vsf=($subform?"<span id='$tabla-$subform-$clave' class='ver_subform'><img src='images/bt_mas.png' width='15' height='15' /></span>":'');
do{
	$num++;
	$thh='';$nuevo_reg='';$edit_reg='';
	$tb.="<tr><td class='nmr algn_number viewCol'>$vsf</td>";
	foreach($visible as $i=>$a){
		switch($a){
			case 6:
				$v=str_replace(',',', ',$row[$i]);
				$style="";
				$hid="viewCol";
			break;
			case 5:
				if($select[$i][$row[$i]]){
					$src=explode(' ',$select[$i][$row[$i]]);
				}
				$url=(count($src)>1?$src[1]:$row[$i]);
				$v=$row[$i];
				$style=" style='background-image:url($url);'";
				$hid='viewCol';
			break;
			case 4:
				$v=$select[$i][$row[$i]];
				$style="";
				$hid='viewCol';
			break;
			case -1:
				$v=$row[$i];
				$style="";
				$hid="hiddenCol";
			break;
			default:
				$v=$row[$i];
				$style="";
				$hid="viewCol";
			break;
		}
		if($visible[$i]!=0){
			$thh.="<th".($thwdth?" width='$thwdth[$i]'":'')." class='$hid'>$titulo[$i]</th>";
			$tb.="<td class='$campo[$i] $clase[$i] $hid'$style>$v</td>";
			$nuevo_reg.="<td class='$campo[$i] $clase[$i] $hid'>".$$tabla->inputs($nuevo[$i],$i,$predet[$i],"er_$tabla",($select[$i]?$select[$i]:''),($attr[$i]?$attr[$i]:''))."</td>";
//			$edit_reg.="<td class='$campo[$i] $clase[$i] $hid'><input id='$i' name='$i' value='$v' form='er_$tabla' onblur='validar_campo(this)' $attr[$i]/></td>";
		}
	}
	$tb.="</tr>";
}while($row=mysql_fetch_assoc($$tabla->q_src));
$th.="$thh</tr></thead>";
$tb.="</tbody>";
$nuevoreg="<tbody class='nuevoreg' id='tber_$tabla'><form name='er_$tabla' id='er_$tabla'><tr><td>...</td>";
$nuevoreg.=$nuevo_reg."</tr></form></tbody>";
$nuevoreg=addslashes($nuevoreg);
//echo $nuevoreg;
?>
<div class="btns"><div>
<a class="er_tabla" onclick="validar(<?echo "er_$tabla,'$cmpVinc','$valVinc'"?>)">Guardar</a>
<a class="er_tabla" onclick="cancelar('<?echo "tber_$tabla"?>')">Cancelar</a>
<span class="er_tabla">------------</span>
<a>Imprimir</a>
<?PHP
if($tabla=='cotizacion'){
    echo "<a onclick=\"duplicareg('#t-$tabla','$nuevoreg')\">Duplicar</a>";
}
?>
<a onclick="nuevoreg(<?echo "'#t-$tabla','$nuevoreg'"?>)">Nuevo</a>
<a onclick="editareg(<?echo "'#t-$tabla','$nuevoreg'"?>)">Editar</a>
<a onclick="borrareg(<?echo "'#t-$tabla','$cmpVinc','$valVinc'"?>)">Eliminar</a>
</div></div>
<div class="dts">
<table id="<?echo "t-$tabla";?>">
<?echo "$th";?>
<?//echo "$nuevoreg";?>
<?echo "$tb";?>
</table>
</div>
<script type="text/javascript">
$('.selectImg').live('change',function(){
	var img=$(this).find(':selected').css('background-image');
	$(this).css('background-image',img);
})
//console.log(tabla);
</script>