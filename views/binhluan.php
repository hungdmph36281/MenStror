
    <style>
    .ah {
        max-width: 500px;
        margin: 20px auto;
        padding: 15px;
        border: 1px solid #ddd;
        border-radius: 5px;
        background-color: #f9f9f9;
    }

    .ah form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .ah input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .ah button {
        background-color: #4caf50;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .ah button:hover {
        background-color: #45a049;
    }


</style>
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
<div class="ah">
<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
<input type="hidden" name="idpro" value="idpro">
<input type="text" name="noidung" value=""> <br>
<button type="submit" name="guibinhluan">Gửi</button>

</form>
</div>

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
