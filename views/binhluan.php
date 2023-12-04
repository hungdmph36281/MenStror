<?php  
session_start();
    include "../model/pdo.php";
    include "../model/binhluan.php";
    $idpro = $_REQUEST["idpro"];

    $dsbl = loadall_binhluan($idpro);

    if (!isset($_SESSION["user"])) {
        header("Location: index.php"); // Replace 'login.php' with your actual login page
        exit();
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../style/css.css">
</head>
<style>
    .box_search {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-top: 20px;
    }

    .box_search form {
        display: flex;
        align-items: center;
    }

    .box_search input[type="text"] {
        width: 250px;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 4px;
        margin-right: 10px;
        box-sizing: border-box;
    }

    .box_search input[type="submit"] {
        padding: 10px 20px;
        background-color: #4caf50;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .box_search input[type="submit"]:hover {
        background-color: #45a049;
    }
     
.binhluan table {
    width: 90%;
    margin-left: 2%;
}

.binhluan table td:nth-child(1) {
    width: 50%;
}

.binhluan table td:nth-child(2) {
    width: 20%;
}

.binhluan table td:nth-child(3) {
    width: 30%;
}
.mb {
        width: 80%;
        margin: 20px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .box_title {
        font-size: 24px;
        font-weight: bold;
        color: #333;
        margin-bottom: 10px;
    }

    .box_content2 {
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }

    table, th, td {
        border: 1px solid #ddd;
    }

    th, td {
        padding: 12px;
        text-align: left;
    }
</style>

<body>
    <div class="mb">
        <div class="box_title">BÌNH LUẬN</div>
        <div class="box_content2 binhluan">
            <table>
                <?php
                
                    foreach ($dsbl as $bl){
                        extract($bl);
                        echo '<tr><td>'.$noidung.'</td>';
                        echo '<td>'.$iduser.'</td>';
                        echo '<td>'.$ngaybinhluan.'</td></tr>';
                    }
            ?>
            </table>
        </div>
        <div class="box_search">
        <div class="box_search">
                        <?php if (isset($_SESSION["user"])) : ?>
                            <!-- Display the form only if the user is logged in -->
                            <form action="<?= $_SERVER['PHP_SELF'];?>" method="POST">
                                <input type="hidden" name="idpro" value="<?=$idpro?>">
                                <input type="text" name="noidung" id="" placeholder="Nội dung bình luận">
                                <input type="submit" name="gui" value="Gửi">
                            </form>
                        <?php else : ?>
                            <p>You need to <a href="login.php">log in</a> to post a comment.</p>
                        <?php endif; ?>
                    </div>

                    <?php
                    if (isset($_POST["gui"]) && ($_POST["gui"])) {
                        $noidung = $_POST["noidung"];   
                        $idpro = $_POST["idpro"];
                        $iduser = $_SESSION["user"]["id"];
                        $ngaybinhluan = date("Y-m-d h:i:s");
                        insert_binhluan($noidung, $iduser, $idpro, $ngaybinhluan);
                        header("Location: ".$_SERVER['HTTP_REFERER']);
                    }
                    ?>
                        </div>
</body>

</html>