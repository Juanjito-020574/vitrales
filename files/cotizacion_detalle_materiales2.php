<?PHP
include('../system/functions.php');$barra=6;
$arr=array(3.15,2.798,2.489,2.46,2.21,1.695,1.59,1.49,1.45,1.38,1.36,1.248,1.23,0.99,0.48,1.48,2.37,1.576,2.43,1.57,0.85,1.02,0.93,2.15,1.86,2.463,1.59,1.2,1.52);
$sum=array_sum($arr);$cont=count($arr);rsort($arr);$last=$arr[$cont-1];
$prom=round($sum/$cont,4,PHP_ROUND_HALF_UP);$residuo=fmod($sum,$barra);
$arrProm=$arr;
array_walk($arrProm,function(&$prom,$i,$v){$prom=$prom+$v;},$prom);
$lastPro=$arrProm[$cont-1];
$reduceBar=$barra;
echo "<div><div style='float:left;width:15%;text-align:left;'>";
echo "SUMAR=$sum;<br>CONTAR=$cont;<br>LAST=$last;<br>PROMEDIO=$prom;<br>
RESIDUO=$residuo;<br>SOBRANTE=".($barra-$residuo);
echo "<br>REDUCEBAR=$reduceBar;<br>LASTPRO=$lastPro";
echo"</div><div style='float:right;width:83%;text-align:left'>";
$false='false';
while($cont>1){
	$arr2=$arr;
	$graf.="<div style='text-align:left;background-color:#F00;'>";
	foreach($arr2 as $i=>$v){
		if($arrProm[$i]<$reduceBar&&$lastPro<$reduceBar){
			$optim[$i]=$v;
			$reduceBar-=$v;
			unset($arr[$i],$arrProm[$i]);
			$graf.="<span style='text-align:center;display:inline-block;border-right:1px solid;background-color:#ddd;width:".((($v*100)/$barra)-0.2)."%;'>$v ($i)</span>";
		}
	}
	foreach($arr as $i=>$v){
		if($arr[$i]<$reduceBar&&$last<$reduceBar){
			$optim[$i]=$v;
			$reduceBar-=$v;
			unset($arr[$i],$arrProm[$i]);
			$graf.="<span style='text-align:center;display:inline-block;border-right:1px solid;background-color:#ddd;width:".((($v*100)/$barra)-0.2)."%;'>$v ($i)</span>";
		}
	}
	$reduceBar=$barra;	

	$cont=count($arr);
	echo "$cont-|";
//	$cont--;
	$contador_++;
	echo "|-$cont |";
	$graf.="</div>";
	echo $graf;
}
echo "<br>NUEVO REDBAR=$reduceBar; CONTADOR=$contador_;";

print_pre($optim);
print_pre($arr);
echo"</div></div>";
?>
