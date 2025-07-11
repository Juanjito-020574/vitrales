<?PHP
extract($_REQUEST);
include('../system/functions.php');
require_once('../system/database.php');
$tabla='materiales';$subform='precios_materiales';$clave='materiales_id';$order=' familias_id ';
include('partial/tablas.php');
?>
<script type="text/javascript">
</script>