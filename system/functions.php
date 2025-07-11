<?PHP
/** SESS($name,$camp,$val);*/
/*function presCepal($datos,$campos,$name=false,$nivel=false){
	foreach($campos as $n){
		$v=(preg_match('/\\\\/',$datos[$n])?preg_replace('/\\\\/','',$datos[$n]):$datos[$n]);
		switch($n){
			case "id":
			$s[ficha]="<span><a onclick=\"ficha('$v')\" ><img src='images/ficha.png' height='25px' /></a></span>";
			$s[cart]="<span><a onclick=\"addCart($v)\" ><img src='images/addkart.png' height='25px' /></a></span>";
			$s[edit]=$nivel<3?"":"<span><a onclick=\"editData('cepal','$v')\" ><img src='images/edit.png' height='25px' /></a></span>";
			break;
			case "codweb":
			if(substr(preg_replace('/(<.+>)(.*)(<\/.+>)/','$2',$datos['codinca']),-3)!='000'){$v=$datos['codinca'];}
			$s[codCtrol]="<span class='codigo'>Codigo:<br>$v</span>";
//			echo (preg_replace('/(<.+>)(.*)(<\/.+>)/','$2',$v));
			break;
			case "autor":
			$s[txt].=($v?"<i><h2>$v.</h2></i>":"");
			break;
			case "titulo":
			$s[txt].="<h1><span style='text-transform:uppercase;text-shadow:1px 0px 0px #944C04;'>$v.</span></h1>";
			break;
			case "autor_i":
			$s[txt].=($v?"<h3>$v. </h3>":"");
			break;
			case "coleccion":
			$s[txt].=($v?"<u>Col: $v</u>. ":"");
			break;
			case "no_vol":
			$s[txt].=($v?"<u>No. $v</u>. ":"");
			break;
			case "isbn":
			$s[txt].=($v?"ISBN: <h3>$v</h3>. ":"");
			break;
			case "vol_serie":
			$s[txt].=($v?"$v. ":"");
			break;
			case "no_serie":
			$s[txt].=($v?"No. $v. ":"");
			break;
			case "issn":
			$s[txt].=($v?"ISSN: $v. ":"");
			break;
			case "paginas":
			$s[txt].=($v?"$v Pág. ":"");
			break;
			case "editorial":
			$s[txt].=($v?"Ed. $v. ":"");
			break;
			case "ciudad":
			$s[txt].=($v?"$v. ":"");
			break;
			case "edicion":
			$s[txt].=($v?"$v. ":"");
			break;
			case "fecha_pub":
			$s[txt].=($v?"$v. ":"");
			break;
			case "formato":
			$s[txt].=($v?"$v. ":"");
			break;
			case "medidas":
			$s[txt].=($v?"($v) ":"");
			break;
			case "stock":
			$s[stk1]=($v<2?'<div class="stock_limitado"><img src="images/stock.png"></div>':'');
			$s[stk2]=($v<2?'<img src="images/stock.png" style="height:30px;background-color:rgba(255,255,255,0.5);">':'');
			break; 
			case "imagen":
			if(file_exists("../$v")){
				$s[imgSrc]="<img src='./$v' title='".$datos['titulo']."' alt='Book ".str_replace('images/books/','',$v)."' width='100%'/>";
			}else{
				$s[imgSrc]="<img src='./images/books/product.png' title='".$datos['titulo']."' alt='Book ".str_replace('images/books/','',$v)."' width='100%'/>";
			}
			break;
			case "p_venta":
			if($datos[oferta]>0&&$datos[oferta]<$v){
				$p_old="<p style='text-decoration:line-through;color:#777;'>($v)</p>";
				$p_="<p>$datos[oferta]</P>";
			}else{$p_="<p>$v</p>";}
			$s[pv].=("<span class='precio'>Precio:<br>\$us.:$p_old$p_</span>");
			break;
			default:
			break;
		}
	}
	session_write_close();
	return $s;
}
function detalle_venta_tabla($id){
	$detalle=new DataBase();
	$detalle->tabla='ventas_detalle_all';
	$detalle->where="ventas_id='$id'";
	$detalle->order="CONCAT(detalle_autor,' ',detalle_titulo)";
	$detalle->_query('SELECT');
	$rowdet=$detalle->q_fetch_assoc;
	if($detalle->q_num_rows>0){
		$detCampo='';$mx='';
		do{
			$detCampo.="<tr><td class='no_v' id='$rowdet[cepal_id]'></td>";
			$detCampo.="<td class='codigo_v prnhide'><input class='codigo' id='codigo_$rowdet[cepal_id]' value='$rowdet[codigo]'/></td>";
			$detCampo.="<td class='order_v prnhide'><input class='detalle_orden' id='orden_$rowdet[cepal_id]' value='$rowdet[detalle_orden]'/></td>";
			$detCampo.="<td class='autor_v'><input class='detalle_autor' id='autor_$rowdet[cepal_id]' value='".addslashes($rowdet[detalle_autor])."'/></td>";
			$detCampo.="<td class='titulo_v'><input class='detalle_titulo' id='titulo_$rowdet[cepal_id]' value='".addslashes($rowdet[detalle_titulo])."'/></td>";
			$detCampo.="<td class='editorial_v'><input class='detalle_editorial' id='editorial_$rowdet[cepal_id]' value='".addslashes($rowdet[detalle_editorial])."'/></td>";
			$detCampo.="<td class='cantidad_v prnhide'><input class='detalle_cantidad' id='cantidad_$rowdet[cepal_id]' value='$rowdet[detalle_cantidad]' pattern='[0-9]+'/></td>";
			$detCampo.="<td class='precio_v prnhide'><input class='detalle_precio' id='precio_$rowdet[cepal_id]' value='$rowdet[detalle_precio]' pattern='[0-9\.]+'/></td>";
			$detCampo.="<td class='total_v read'><input class='detalle_total' id='total_$rowdet[cepal_id]' value='$rowdet[detalle_total]' readonly='' title='No puede cambiar este valor' /></td>";
			$detCampo.="<td style='display:none;'><input class='detalle_id' id='id_$rowdet[cepal_id]' value='$rowdet[detalle_id]'/></td>";
			$detCampo.="</tr>";
			$arr_cant[]=$rowdet['detalle_cantidad'];
			$arr_tot[]=$rowdet['detalle_total'];
			$mx[]=$rowdet['cepal_id'];
		}while($rowdet=mysql_fetch_assoc($detalle->q_src));
		$cant=array_sum($arr_cant);$tot=array_sum($arr_tot);
	}
	$return=array('filas'=>$detCampo,'cantidad'=>$cant,'total'=>$tot,'mx'=>$mx);
	return $return;
}
function pass_mail($datas,$asunto,$mensaje){
	$cabeceras1 = "MIME-Version: 1.0 \n";
	$cabeceras1.= "Content-type: text/html; charset=UTF-8 \n";
	$cabeceras1.= "To: " . $datas['usuarios_mail']."\n";
	$cabeceras1.= "From: info@librosandinos.com \n";
	$cabeceras1.= "Cc: \n";
	$cabeceras1.= "Bcc: \n";

	$cabeceraTexto="<!DOCTYPE html><html lang='es'>\n<head>\n<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />\n";
	$cabeceraTexto.="<style type='text/css'>\n*{margin:5px auto;}\n.content{padding:10px;border:2px solid #000;width:90%;background-color:#FFE3BD;}\nh1{padding:5px;font-size:1.2em;clear:both;text-align:center;width:100%;}\nh2{margin:0px;padding:5px 30px;font-size:1em;clear:both;}\n</style>\n</head>\n";
	$cabeceraTexto.="<body style='background-color:#FFA64A;'>\n<div class='content'>\n<img src='http://localhost/LA_nvo/images/LAS-logo.png' height='70px' />\n<h1>Mensaje</h1>\n<h2>Usuario: ".$datas['usuarios_nick']."(".$datas['usuarios_mail'].")<br />Asunto: $asunto\n</h2>\n";
	$cabeceraTexto.="<div style='width:90%;'>\n".$mensaje."\n</div>\n";
	$cabeceraTexto.="<div style='width:90%; text-align:center;color:#F00;'>\nNo responda a este mensaje!!\n</div>\n</div>\n</body>\n</html>\n";
	if(mail($datas['usuarios_mail'],$asunto,$cabeceraTexto,$cabeceras1)){
		$ret="Los datos fueron enviados a su e-mail.<br/>Revise su correo puede que se encuentre en la bandeja de sospechosos.";
	}else{
		$ret="No se pudo enviar el el mensaje. contactese con nuestros representantes para que le den de alta.";
	}
	return $ret;
}*/
/** $tabla es la tabla $campos son los campos de la talba, el primer campo siempre debe ser el campo 
 *  id, codigo etc. por que es el campo vinculante si hay un solo campo se supone que es el id
 *  si Existen mas campos vincularemos el id y concatenaremos el resto de campos.
*/
function funSelect($tabla,$campos){
	$abc=new DataBase;
	$abc->columns=$campos;
	$abc->tabla=$tabla;
	$abc->_query('SELECT');
	$row=$abc->q_fetch_assoc;
	$cmp=explode(',',$campos);
	do{
		if(count($cmp)>1){
			for($a=1;$a<count($cmp);$a++){
				$b[]=$cmp[$a];
			}
			$arr[$cmp[0]]=implode(',',$b);
		}else{
			$arr[$cmp[0]]=$cmp[0];
		}
	}while($row=mysql_fetch_assoc($abc->q_src));
	return $arr;
}
function print_pre($source){
	echo "<pre>";print_r($source);echo "</pre>";
}
function include_if_exists($file,$nivMin=null){
	file_exists($file)?$r="":$r="../";
	include("$r$file");
	if($nivMin){
		return $nivMin;
	}
}
function base64_encode_image($filename=string,$filetype=string) {
	if ($filename) {
		$imgbinary = fread(fopen($filename, "r"), filesize($filename));
		return chunk_split(base64_encode($imgbinary));
	}
}
/** Calcula la cantidad de barras necesarias de acuerdo a los datos introducidos en el array*/
function abarra($id,$arr){
	$abc=new DataBase;
	$abc->columns='dim3';
	$abc->tabla='materiales';
	$abc->where="materiales_id='$id'";
	$abc->_query('SELECT');
	$row=$abc->q_fetch_assoc;
	if(is_array($arr)){
		$barra=$row['dim3'];
		$sum=array_sum($arr);
		$cont=count($arr);
		arsort($arr);
		$last=$arr[$cont-1];
		$prom=round($sum/$cont,4,PHP_ROUND_HALF_UP);
		$residuo=fmod($sum,$barra);
		$arrProm=$arr;$expArr=$arr;
		array_walk($arrProm,function(&$prom,$i,$v){$prom=$prom+$v;},$prom);
		$lastPro=$arrProm[$cont-1];
		$reduceBar=$barra;
		$graf="";$contador_=0;
		while($cont>0){
			$graf.="<div class='detalle barra'>";
			$arr2=$arr;$z=$w=0;
			if($lastPro<$reduceBar){
				foreach($arr2 as $i=>$v){
					if($arrProm[$i]<$reduceBar||$reduceBar==$barra&&$z==$w){
						$v=round($v,4);
						$optim[$i]=$v;
						$reduceBar-=$v;
						unset($arr[$i],$arrProm[$i]);
						$graf.="<span class='corte' style='width:".round((((($v*100)/$barra)-.5)),0,PHP_ROUND_HALF_DOWN)."%;'>$v<br />($i)</span>";
					}
					$z++;
				}
			}
			if($last<$reduceBar){
				foreach($arr as $i=>$v){
					if($arr[$i]<$reduceBar||$reduceBar==$barra&&$w==$z){
						$v=round($v,4);
						$optim[$i]=$v;
						$reduceBar-=$v;
						unset($arr[$i],$arrProm[$i]);
						$graf.="<span class='corte' style='width:".round(((($v*100)/$barra)-.5),0,PHP_ROUND_HALF_DOWN)."%;'>$v<br />($i)</span>";
					}
					$w++;
				}
			}
			$graf.="<span class='desp' style='width:".(round((((($reduceBar*100)/$barra))),0,PHP_ROUND_HALF_DOWN))."%;'>$reduceBar</span>";
$des+=$reduceBar;
			$reduceBar=$barra;
			$cont=count($arr);
			$contador_++;
			$graf.="</div>";
		}
//		echo "<div>$id;".implode(';',$expArr)."</div>";
//		echo "<div>$id;".implode(';',$optim)."</div>";
	}
return array(numero=>$contador_,grafico=>$graf);
}
?>
