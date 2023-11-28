<?php
session_start();
include "../model/pdo.php";
include "../model/binhluan.php";

if (isset($_GET['idpro'])) {
    $idpro = $_GET['idpro'];
}
if (isset($_POST['guibinhluan'])) {
    $idpro = $_POST['idpro'];
    $noidung = $_POST['noidung'];
    $ngaybinhluan =date('H:i:s d/m/Y');
    $iduser = $_SESSION['user']['id'];
    insert_binhluan($noidung, $iduser, $idpro, $ngaybinhluan);
   
}
$dsbl = binhluan_select_all();
$html_bl="";
foreach ($dsbl as $bl) {
    extract($bl);
    $html_bl.=' <p>'.$noidung.'<br>'.$idpro.' -('.$ngaybinhluan.')
</p>';
}
?>

<h1>BÌNH LUẬN</h1>
<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
<input type="hidden" name="idpro" value="idpro">
<textarea name="noidung" id="" cols="100%" rows="10"></textarea> <br>
<button type="submit" name="guibinhluan">Gửi</button>

</form>
<?php

if (isset($_GET['$idpro'])) {
    echo $_GET['$idpro'];
}
else{

}


?>
<div class="dsbl">
    <?=$html_bl?>

</div>
