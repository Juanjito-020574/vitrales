<?PHP
class DataBase{//para el subir al FTP borrar despues del '=' hasta los comentarios '//'
	private static $db_host='72.29.64.235',$db_user='USERFACIL',$db_pass='CONTRASEÑASFACILES',$db_name='DBFACIL';
//	private static $db_host='localhost',$db_user='root',$db_pass='',$db_name='alcon';
	public $sess='la',$columns='*',$tabla,$join1,$join2,$join3,$join4,$where,$whereOr,
$whereAnd,$group,$order,$limit,$query="",$q_src,$q_query,$q_fetch_assoc,$q_num_rows,
$q_aff_rows,$q_message,$q_err,$q_qty_rows,$q_desc;
	protected $link;
	protected $rows=Array();
	protected $fields;
	public $names_ = "SET NAMES 'utf8'";
	private $lc_mess_ = "SET @@session.lc_messages = 'es_ES'";

	/** Funcion Constructora. Devuelve la tabla y la lista de campos*/
	public function __construct($tabla=null){
		if($tabla){
			$this->tabla=$tabla;
			$this->q_desc=$this->_queryDesc($tabla);
		}
	}
	/** Conectar a la base de datos*/
	protected function open_db(){
		$this->link = new mysqli(self::$db_host,self::$db_user,self::$db_pass,self::$db_name);
		mysqli_query($this->link,$this->names_);
		mysqli_query($this->link,$this->lc_mess_);
		mysqli_query($this->link,"SET SESSION GROUP_CONCAT_MAX_LEN=1024000;");
//		$this->_querySel();
	}
	/** Desconectar la base de datos*/
	protected function close_db(){
//		mysql_free_result($this->link);
		mysqli_close($this->link);
	}

	private function _querySel(){
		$querySel = "SELECT SQL_CALC_FOUND_ROWS $this->columns \nFROM ".$this->tabla." \n".
			($this->join1 ? " LEFT JOIN $this->join1 \n" : "").
			($this->join2 ? " LEFT JOIN $this->join2 \n" : "").
			($this->join3 ? " RIGHT JOIN $this->join3 \n" : "").
			($this->join4 ? " RIGHT JOIN $this->join4 \n" : "").
			($this->where ? " WHERE $this->where \n" : "").
			($this->whereOr ? " OR $this->whereOr \n" : "").
			($this->whereAnd ? " AND $this->whereAnd \n" : "").
			($this->group ? " GROUP BY $this->group" : "").
			($this->order ? " ORDER BY $this->order" : "").
			($this->limit ? " LIMIT $this->limit;" : ";");
		//echo $this->query;
		if(!$this->query || $this->query==null){
			$this->query = $querySel;
		}
		//return $querySel;
	}
	public function _queyExtra(){
		$this->open_db();
			$this->q_src=mysqli_query($this->link,$this->query);
			$this->q_qty_rows=mysqli_query($this->link,'FOUND_ROWS();');
			$this->q_query=$this->query;
		//	$this->q_num_rows=mysql_num_rows($this->q_src);
		//	$this->q_fetch_assoc=mysql_fetch_assoc($this->q_src);
			$this->q_aff_rows=mysqli_affected_rows($this->link);
			$this->q_message = "Tiene $result[num_rows] registros.";
		$this->close_db();
	}

	public function _queryDesc($table){
//		include('functions.php');
		$this->open_db();
		$qry=mysqli_query($this->link,"SHOW FULL COLUMNS FROM $table");
		$rows = mysqli_fetch_assoc($qry);
		$propiedadesTabla=array('campo'=>'','titulo'=>'','visible'=>1,'nuevo'=>'input','edit'=>'input');
		do{
			parse_str($rows['Comment'],$comment);
			$row[$rows['Field']]=array_merge($propiedadesTabla,$comment);
		}while($rows = mysqli_fetch_assoc($qry));
		$pass=substr(md5($_SERVER['REMOTE_ADDR'].microtime().rand(1,100000)),0,6);
		foreach($row as $i=>$v){
			foreach($v as $vi=>$vv){
				if(($vi=='predet' || $vi=='select' || $vi== 'dep')&&$vv){
					eval('$vv='.str_replace('\\','',$vv).';');
					$r[$vi][$i]=$vv;
//		print_pre($i);
				}else{
					$r[$vi][$i]=str_replace('\\','',$vv);
				}
			}
			if($i=='999'){
				break;
			}
		}
//		print_pre($r[predet]);
		return $r;
		$this->close_db();
	}
	/** Ejecutar un query simple del tipo SELECT INSERT, DELETE, UPDATE */
	public function _query($type){
		$this->open_db();
		switch($type){
			case 'SELECT':
				$this->_querySel();
				$this->q_src = mysqli_query($this->link,$this->query);
				$this->q_qty_rows=mysqli_fetch_assoc(mysqli_query($this->link,'SELECT FOUND_ROWS() as `fr`;'));
				$this->q_query = $this->query;
				$this->q_num_rows = mysqli_num_rows($this->q_src);
				$this->q_fetch_assoc = mysqli_fetch_assoc($this->q_src);
				$this->q_message = "Tiene $this->q_num_rows registros.";
				$this->q_err = "(cod: ".mysqli_errno($this->link).") ".mysqli_error($this->link)."<br/>";
			break;
			case 'UPDATE':
				$this->q_src=mysqli_query($this_link,$this->query);
				$this->q_query=$this->query;
				$this->q_aff_rows = mysqli_affected_rows($this->link);
				$this->q_mensaje = "Se han modificado $this->q_aff_rows registros ";
				$this->q_err = "(cod: ".mysqli_errno($this->link)."): ".mysqli_error($this->link)."<br/>";
			break;
			case 'INSERT':
				$this->q_src=mysqli_query($this->link,$this->query);
				$this->q_query=$this->query;
				$this->q_aff_rows=mysqli_affected_rows($this->link);
				$this->q_message="Se han insertado $this->q_aff_rows registros ";
				$this->q_err = "(cod: ".mysqli_errno($this->link)."): ".mysqli_error($this->link)."<br/>";
			break;
			case 'DELETE':
				$this->q_src=mysqli_query($this_link,$this->query);
				$this->q_query=$this->query;
				$this->q_aff_rows=mysqli_affected_rows($this->link);
				$this->q_mensaje="Se han eliminado $this->q_aff_rows registros ";
				$this->q_err = "(cod: ".mysqli_errno($this->link)."): ".mysqli_error($this->link)."<br/>";
			break;
			default:
			break;
		}
		$this->close_db();
	}
	/** Funcion para encriptar los passwords*/
	public function _encript($text){
		$enc1 = hash("sha512",$text); //Encriptacion nivel 1
		$enc2 = crypt($enc1,"xtemp"); //Encriptacion nivel 2
		$enc3 = hash("sha1",$enc2); //Encriptacion nivel 3
		$enc4 = crypt($enc3, "xtemp"); //Encriptacion nivel 4
		$enc5 = hash("sha1",$enc3); //Encriptacion nivel 5
		return $enc5;
	}
	/** funcion para crear las columnas para las tablas de presentación de datos*/
	public function leerTabla($visible,$campo,$titulo,$columna=null){
		if($columna){
			$etq="td";
			$value=$columna;
		}else{
			$etq="th";
			$value=$titulo;
		}
		foreach($visible as $i => $v){
			switch($v){
				case -1:
					echo "<$etq style='display:none' class='".$campo[$i]."'>".$value[$i]."</$etq>";
				break;
				case 0:
					echo "";
				break;
				default:
						echo "<$etq class='".$campo[$i]."'>".$value[$i]."</$etq>";
				break;
			}
		}
	}
	public function _mysqli_real_escape_string($cadena){
		$this->open_db();
		return mysqli_real_escape_string($this->link,$cadena);
	}

	/** $tabla es la tabla $campos son los campos de la talba, el primer campo siempre debe ser el campo
	 *  id, codigo etc. por que es el campo vinculante si hay un solo campo se supone que es el id
	 *  si Existen mas campos vincularemos el id y concatenaremos el resto de campos.
	*/
	public function funSelect($tabla,$campos,$noid=false){
		$this->open_db();
		$qryText="SELECT $campos FROM $tabla";
		$qry=mysqli_query($this->link,$qryText);
		$row=mysqli_fetch_assoc($qry);
		$cmp=explode(',',$campos);
		do{
			$arr[$row[$cmp[0]]]=($noid?'':$row[$cmp[0]]." ").$row[$cmp[1]];
		}while($row=mysqli_fetch_assoc($qry));
		return $arr;//$qryText;
		$this->close_db();
	}
	/** Funcion para crear los selects*/
	public function _option($arrayOpt,$selected=false,$tabla=false,$clase=false){
		$res='';
		($selected=='seleccionar'||!array_key_exists($selected,$arrayOpt) ? $res = "<option value='' label='seleccionar'>seleccionar</option>" : "");
		(!isset($selected) ? $res = "<option value='' label='columa(*)'>columa(*)</option>" : "");
//		print_pre($arrayOpt);
//echo $res;
		foreach($arrayOpt as $i => $v){
			if($clase=='selectImgOpt'){
				$vi=explode(' ',$v);
				$classOpt="class='$clase' style='background-image:url($vi[1])'";
				$v="$vi[0]";
			}
			if($i==$selected){
				$res .= "<option value='$i' label='$v' selected='' $classOpt >$v</option>";
			}else{
				$res .= "<option value='$i' label='$v' $classOpt >$v</option>";
			}
			if($tabla=='usuarios'&&$i==($_SESSION['la']['usuarios']['usuarios_nivel']-1)&&($_SESSION[la][usuarios][usuarios_nivel]<7)){
				break;
			}
		}
		return $res;
	}
	/** funcion para definir los inputs*/
	public function inputs($tipo,$id,$valor,$form,$select=null,$attr=null){
		switch($tipo){
			case 'selectImg':
				$ret="<select class='$tipo' id='$id' form='$form' onblur='validar_campo(this)' $attr>";
				$ret.=$this->_option($select,$valor,false,$tipo.'Opt');
				$ret.="</select>";
			break;
			case 'selectM':
				$ret="<select id='$id' form='$form' onblur='validar_campo(this)' $attr>";
				$ret.=$this->_option($select,$valor);
				$ret.="</select>";
			case 'select':
				$ret="<select id='$id' form='$form' onblur='validar_campo(this)' $attr>";
				$ret.=$this->_option($select,$valor);
				$ret.="</select>";
			break;
			case 'textarea':
				$ret="<textarea id='$id' form='$form' rows='1' onblur='validar_campo(this)' $attr>$valor</textarea>";
			break;
			case 'read':
				$ret="<input id='$id' form='$form' value='$valor' readonly />";
			break;
			case 'doble':
				$ret="<input type='hidden' id='_$id' value='$valor' />";
				$ret.="<input id='$id' form='$form' value='$valor' onblur='validar_campo(this)' $attr />";
			break;
			default:
				$ret="<input id='$id' form='$form' value='$valor' onblur='validar_campo(this)' $attr />";
			break;
		}
		return $ret;
	}
}
?>
