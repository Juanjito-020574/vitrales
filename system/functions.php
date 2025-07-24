<?PHP
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
