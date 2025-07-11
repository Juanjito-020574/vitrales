<?PHP
extract($_REQUEST);
include('../system/functions.php');
require_once('../system/database.php');
$tabla='clientes';$subform='cotizacion';$clave='clientes_id';$order=' clientes_id DESC';
include('partial/tablas.php');
?>
<script type="text/javascript">
</script>