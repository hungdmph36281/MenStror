<?php 
    session_start();
    include "./model/pdo.php";
    include "./model/sanpham.php";
    include "./model/danhmuc.php";
    include "./views/header.php";
    include "global.php";
    if(!isset($_SESSION['mycart'])) $_SESSION['mycart']=[];

    $spnew = loadall_sanpham_trangchu();
    $dmsp = loadall_danhmuc();
    if((isset($_GET['act'])) && ($_GET['act']!="")){
        $act = $_GET['act'];
        switch($act){
            case 'categories':
                if((isset($_POST['kyw'])) && ($_POST['kyw']!="")) {
                    $kyw = $_POST['kyw'];
                }else{
                    $kyw = "";
                }
                if((isset($_GET['iddm'])) && ($_GET['iddm']>0)){
                    $iddm = $_GET['iddm'];

                }else if((isset($_GET['iddm'])) && ($_GET['iddm']==0)){
                    $iddm = $_GET['iddm'];
                    $dssp = loadall_sanpham($kyw= "",$iddm=0);
                    include "./views/categories.php";
                }else{
                    $iddm = 0;
                }
                $tendm = load_ten_dm($iddm);
                $dssp = loadall_sanpham($kyw,$iddm);
                include "./views/categories.php";
                break;
                case 'ctsp':
                    if((isset($_GET['idsp'])) && ($_GET['idsp']>0)){
                    $id = $_GET['idsp'];
                    $onesp = loadone_sanpham($id);
                    extract($onesp);
                    $sp_cung_loai=load_sanphamcungloai($id,$iddm);
                    include "./views/chitietsp.php";
                    }else{
                        include "./views/home.php";
                    }
                    break;
            
            // case 'thoat':
            //     session_unset();
            //     // header('Location:index.php');
            //     echo "<script>
            //         window.location.href='index.php';
            //     </script>";
            //     // include "./views/home.php";
            //     break;
            
            default:
            include "./views/home.php";
                break;
        }
    }else{
        include "./views/home.php";
    }
    include "./views/footer.php";
?>