<?php
include "../model/pdo.php";
include "./views/header.php";
//controller

if (isset($_GET['act'])) {
    $act = $_GET['act'];
    switch ($act) {
        default:
            include "./views/home.php";
            break;
    }
} else {
    include "./views/home.php";
}


include "./views/footer.php";
