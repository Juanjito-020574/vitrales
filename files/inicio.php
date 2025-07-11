<?PHP
session_start();
?>
<div style="text-align:center;">
<?PHP
if(!$_SESSION['la']['usuarios']){
?>
<p class="doblespace">Bienvenido al systema de Control y Cálculo para Cerramientos en Carpintería de Aluminio y Vidrio Templado</p>
<p class="doblespace">Escriba su <strong>nombre de usuario</strong> y <strong>contraseña</strong> para acceder al sistema</p>
<p class="doblespace">Si no es usuario registrado. puede pedir su alta al administrdor del sistema</p>
<?}else{?>
<p class="doblespace" style="text-align:center;"><strong><?echo $_SESSION['la']['usuarios']['usuarios_nick']?></strong></p>
<p class="doblespace">Para realizar los calculos de sus cerramientos selecciones el menu de su eleccion.</p>
<p class="doblespace">Gracias por usar nuestro sistema de calculo para cerramientos de vidrio templado y carpintería de aluminio</p>
<?}?>
<p class="doblespace"><strong>Alcon-Aluminium Control</strong> realiza el control y calculo para cerramientos en aluminio y vidrio templado</p>
<p class="doblespace">Puede ser utilizado para calcular ventanas y puertas en carpintería de aluminio, fachadas flotantes, piel de vidrio, vidrio templado, y otros sistemas que de cerramientos basados en placas y perfiles</p>
<p class="doblespace">Las tipologías de cerramientos son personalizables de acuerdo a los perfiles, accesorios y placas utilizadas.</p>
</div>
