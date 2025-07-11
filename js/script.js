var carga="<div style='padding:100px 10px 0px;'><p>Por favor espere un momento.</p><p>Los datos se están cargando...</p><br /><img src='images/anim.gif'/></div>"
var carga1="<input type='image' src='images/bt_menos.png' style='width:25px;height:25px;float:right;' onclick='closeDw()' />"+carga;
var carga2='<progress value="50" max="100">50%</progress>';
$(document).ready(function(){_load(state());
	menu();ath();tableActive();
})//fin document ready
function calcular(cam,val){
	$('#form-3').html(carga2);
	$('#form-3').load('files/cotizacion_detalle_materiales.php',{cmpVinc:cam,valVinc:val})
}
$('#login').live('click',function(){
	$('#areatrab').load('files/login.php')
})
$('.ver_subform').live('click',function(){
	var id=$(this).context.id;
	var tbl=id.split('-');
	$(this).parent().parent().parent().find('tr').removeClass('active');
	$(this).parent().parent().addClass('active');
	var padre=$(this).parents('.subform,.form');
	var subform='',sform=$('.subform')
	$.each(sform,function(i,v){if(!$(v).html()&&!subform){subform=$(v).attr('id');}
	})
	if($(this).find('img').attr('src')=='images/bt_mas.png'){
		$('#t-'+tbl[0]).find('tbody tr').not('.active').hide();
		$('#'+subform).load('files/'+tbl[1]+'.php',{cmpVinc:tbl[2],valVinc:$(this).parent().parent().find("."+tbl[2]).html()})
		$(this).parents('.subform,.form').find('.btns>div').hide();
		$(this).find('img').attr('src','images/bt_menos.png');
	}else{
		$('#t-'+tbl[0]).find('tbody tr').show();
		$(this).parents('.subform,.form').nextAll().empty();
		$(this).parents('.subform,.form').find('.btns>div').show();
		$(this).find('img').attr('src','images/bt_mas.png');
	}
})
function tableActive(){
	$('.todo_reg tr').live('click',function(){
		$(this).parent().find('tr').removeClass('active');
		$(this).addClass('active');
	});
}
function ath(){
	var h=window.innerHeight-($('#bodyhead').height()+20+$('#menu').height()+20+$('#bodyfoot').height()+20);
	$('#areatrab').css('min-height',h+'px');
	$('#btns').css('min-height',(h-15)+'px');
}
function state(){
	$(window).on('popstate',function(e){_load(e.originalEvent.state);});
	var hash=window.location.hash.replace('#','');
	window.history.replaceState(hash,null,(hash?'#'+hash:'#inicio.html'));
	return window.location.hash.replace('#','');
}
function menu(){
	$('#menu a').live('click',function(e){
		e.preventDefault();
		_history($(this).attr('href'));
		state();
	});
}
function _history(url){
	if(url!=window.location.hash.replace('#','')){
		_load(url);
		window.history.pushState(url,null,'#'+url);
	}
}
function _load(url){
	$('#menu').find('a.active').removeClass('active');
		php="files/"+url.replace(/\.html$/ig,'.php');
	$.ajax({
	url:php,
	type:'HEAD',
	error:function(){$('#form').html(carga2).load('files/vacio.php')},
	success:function(){$('.subform').empty();$('#form').html(carga2).load(php);
								$('title').html(window.location.hostname+'/'+window.location.hash.replace('#',''))
							}
	});
	var a=$('#menu a');
	$.each(a,function(i,v){
		if($(v).attr('href')==url.replace('#','')){
			$(v).addClass('active')
		}
	})
}
function log_in(){//función que hace el loggeo al sistema;
	$('#form').load('files/login.php',{user:$('#user').val(),pass:$('#pass').val(),logg:'login'});
}
function log_off(){//función para salir de la zona loggeada;
	$('#form').load('files/login.php',{logg:'logoff'})
}
function borrareg(tabla,cmpVinc,valVinc){
	var div=$(tabla).parents('.subform,.form').attr('id');
	var tbl=tabla.split('-'),cmpId=tbl[1]+'_id';
	var id=$(tabla+' .todo_reg tr.active').find('.'+cmpId).html();
	var dts = {tipo:'DELETE',tabla:tbl[1],cmpId:cmpId,id:id,div:div,cmpVinc:cmpVinc,valVinc:valVinc};
	if(confirm('Seguro que quiere eliminar el registro selecionado?.')){
		$('#notice').load('files/query.php',dts);
	}
//	if($(tabla+' tbody.nuevoreg').length==0){
//		$(tabla+' thead').after(campos);
//		$('#'+formulario+' .er_tabla').css('display','block');
//	}
}
function nuevoreg(tabla,campos){
	var formulario=$(tabla).parents('.form,.subform').attr('id');
	if($(tabla+' tbody.nuevoreg').length==0){
		$(tabla+' thead').after(campos);
		$('#'+formulario+' .er_tabla').css('display','block');
	}
}
function editareg(tabla,campos){
	var formulario=$(tabla).parents('.form,.subform').attr('id');
	if($(tabla+' tbody.nuevoreg').length==0){
		if($('#'+formulario+' tr.active').length>0){
			nuevoreg(tabla,campos);
			var camposClass=$('#'+formulario+' tr.active').find('td').not('.nmr');
			$.each(camposClass,function(i,v){
				var ii=$(v).attr('class').split(' ')[0];
				if(ii=='materiales_id'){
					$('#_'+ii).val($(v).html().split(' ')[0]).css('width','50%')
					$('#'+ii).val($(v).html().split(' ')[0])
				}else if(ii=='familias_id'){
					$('#_'+ii).val($(v).html().split(' ')[0]).css('width','50%')
					$('#'+ii).val($(v).html().split(' ')[0])
				}else if(ii=='tipologia_id'){
					var img=$(this).css('background-image');
					$('#'+ii).val($(v).html()).css('background-image',img);
//console.log(ii+' - '+img)
				}else{
					$('#'+ii).val($(v).html())
				}
						})
		}else{
			console.log("Debe seleccionar un registro de la lista.")
		}
	}
}
function newReg(form,cmpVinc,valVinc){
	var div=$(form).parents('.subform,.form').attr('id');
	var name=$(form).attr('id');
	var data=$(':input[form='+$(form).attr('id')+']');
	var id=$('#'+div+' .nuevoreg td.'+name.substr(3)+'_id').find('input:first').val();
	if(id){tipo='UPDATE';}else{tipo='INSERT';}
	var dts = {tipo:tipo,tabla:name.substr(3),div:div,cmpVinc:cmpVinc,valVinc:valVinc,id_old:id};
//	console.log(id);
	dts.datas={};
	$.each(data,function(i,v){
		dts.datas[$(v).attr('id')]=$(v).val();
	})
	$('#notice').load('files/query.php',dts);
}

function cancelar(form){
	var formulario=$('#'+form).parents('.form,.subform').attr('id');
	$('#'+form).detach();
	$('#'+formulario+' .er_tabla').removeAttr('style');
}
function validar_campo(v){
	if(!v.validity.valid){
		$(v).css('background-color','#F00');
	}else{
		$(v).css('background-color','#FFF');
	}
}
function validar(form,cmpVinc,valVinc){
	var inputs=$(':input[form='+$(form).attr('id')+']');
	var valido=form.checkValidity()
	if(valido){
		newReg(form,cmpVinc,valVinc);
	}else{
		$.each(inputs,function(i,v){
			if(!v.validity.valid){
				$(v).css('background-color','#F00');
			}
		})
		msgUsr("Llene correctamente los resaltados");
	}
}
function guardar(form){
	
}
function msgUsr(msg){
	$('#notice').html('');
	var msgOld=$('#notice').html();
	var tm = 5000;
//	alert('msg')
	if(msgOld!=msg){
		$('#notice').html(msgOld).hide()
		$('#notice').html(msg).show()
		setTimeout(function(){
			$('#notice').html(msgOld).show()
			$('#notice').html(msg).fadeOut(1000).empty();
		},tm);
	}
}


/** FUNCIONES DE JS NECESARIAS.*/
function selector_sum(collection){
	var i,sum=0;
	$.each(collection,function(i,v){
		sum+=parseFloat($(v).html())
	})
	return sum;
}
function objectSort(a,b){
	
}
//Object.prototype.sum_HTML=selector_sum;
function abarra(perfil,nombre){
	var z={};
	$.each(perfil,function(i,v){
		z[i]=v;
	})
	return z;
//	abc=new DataBase;
//	abc->columns='dim3';
//	abc->tabla='materiales';
//	abc->where="materiales_id='id'";
//	abc->_query('SELECT');
//	row=abc->q_fetch_assoc;
/*	if(is_array(arr)){
		barra=6;
		sum=array_sum(arr);
		cont=count(arr);
		arsort(arr);
		last=arr[cont-1];
		prom=round(sum/cont,4,PHP_ROUND_HALF_UP);
		residuo=fmod(sum,barra);
		arrProm=arr;
		array_walk(arrProm,function(&prom,i,v){prom=prom+v;},prom);
		lastPro=arrProm[cont-1];
		reduceBar=barra;
		graf="";
		while(cont>0){
			graf.="<div class='barra' style='width:".(row[dim3]*100)."px;'>";
			arr2=arr;
			foreach(arr2 as i=>v){
				if(arrProm[i]<reduceBar&&lastPro<reduceBar){
					optim[i]=v;
					reduceBar-=v;
					unset(arr[i],arrProm[i]);
					graf.="<span class='corte' style='width:".round((((v*100)-2)),0,PHP_ROUND_HALF_DOWN)."px;'>v (i)</span>";
				}
			}
			foreach(arr as i=>v){
				if(arr[i]<reduceBar&&last<reduceBar){
					optim[i]=v;
					reduceBar-=v;
					unset(arr[i],arrProm[i]);
					graf.="<span class='corte' style='width:".round((((v*100))-1),0,PHP_ROUND_HALF_DOWN)."px;'>v (i)</span>";
				}
			}
			graf.="<span class='desp' style='width:".round((((reduceBar*100)-1)),0,PHP_ROUND_HALF_DOWN)."px;'>reduceBar</span>";
			reduceBar=barra;
			cont=count(arr);
			contador_++;
			graf.="</div>";
		}
	}
return array(numero=>contador_,grafico=>graf);*/
}
function showDetalles(){
	$('.detalle').show();
	$('#detalles_a').attr('onclick','hideDetalles()').html('Ocultar Detalles');
}
function hideDetalles(){
	$('.detalle').removeAttr('style');
	$('#detalles_a').attr('onclick','showDetalles()').html('Ver Detalles');
}
function seleccionarTabla(tabla){
	var rango,seleccion;
	if(document.createRange){
		rango=document.createRange();
		rango.selectNode(tabla);
	}else if(document.body.createTextRange){
		rango=document.body.createTextRange();
		rango.moveToElementText(tabla);
	}else{return;}
	if(window.getSelection){
		seleccion=window.getSelection();
		seleccion.removeAllRanges();
		seleccion.addRange(rango);
	}else if(rango.moveToElementText){
		rango.select();
	}
}

