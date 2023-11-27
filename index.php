<?php
session_start();
include "./model/pdo.php";
include "./model/sanpham.php";
include "./model/danhmuc.php";
include "./views/header.php";
include "./model/taikhoan.php";
$spnew = loadall_sanpham_trangchu();
$dmsp = loadall_danhmuc();
if ((isset($_GET['act'])) && ($_GET['act'] != "")) {
    $act = $_GET['act'];
    switch ($act) {
        case 'categories':
            if ((isset($_POST['kyw'])) && ($_POST['kyw'] != "")) {
                $kyw = $_POST['kyw'];
            } else {
                $kyw = "";
            }
            if ((isset($_GET['iddm'])) && ($_GET['iddm'] > 0)) {
                $iddm = $_GET['iddm'];
            } else if ((isset($_GET['iddm'])) && ($_GET['iddm'] == 0)) {
                $iddm = $_GET['iddm'];
                $dssp = loadall_sanpham($kyw = "", $iddm = 0);
                include "./views/categories.php";
            } else {
                $iddm = 0;
            }
            $tendm = load_ten_dm($iddm);
            $dssp = loadall_sanpham($kyw, $iddm);
            include "./views/categories.php";
            break;
        case 'ctsp':
            if ((isset($_GET['idsp'])) && ($_GET['idsp'] > 0)) {
                $id = $_GET['idsp'];
                $onesp = loadone_sanpham($id);
                extract($onesp);
                $sp_cung_loai = load_sanphamcungloai($id, $iddm);
                include "./views/chitietsp.php";
            } else {
                include "./views/home.php";
            }
            break;
        case 'dangky':
            if (isset($_POST['dangky']) && ($_POST['dangky'])) {
                $user = $_POST['user'];
                $pass = $_POST['pass'];
                $email = $_POST['email'];
                $address = $_POST['address'];
                $tel = $_POST['tel'];
                insert_taikhoan($user, $pass, $email, $address, $tel);
                $thongbao = "ĐĂNG KÍ THÀNH CÔNG";
            }
            include "./views/taikhoan/dangky.php";
            break;
        case 'dangnhap':
            if (isset($_POST['dangnhap']) && ($_POST['dangnhap'])) {
                $user = $_POST['user'];
                $pass = $_POST['pass'];
                $checkuser = checkuser($user, $pass);
                if (is_array($checkuser)) {
                    $_SESSION['user'] = $checkuser;
                    echo "<script>
                            window.location.href='index.php';
                            </script>";
                } else {
                    $thongbao = "Tài khoản khồng tồn tại";
                }
            }
            include "views/taikhoan/dangnhap.php";

            break;
        case 'edit_taikhoan':
            if (isset($_POST['capnhat'])) {
                $user = trim($_POST['user']);
                $email = trim($_POST['email']);
                $address = trim($_POST['address']);
                $tel = $_POST['tel'];
                $id = $_POST['id'];
                $thongbao = "CẬP NHẬT THÀNH CÔNG";

                update_taikhoan($id, $user, $email, $address, $tel);
                $_SESSION['user'] = getUserByUsernameAndEmail($user, $email);
                header('Location:index.php?act=edit_taikhoan');
            }
            include "views/taikhoan/edit_taikhoan.php";
            break;
        case 'quenmk':
            if (isset($_POST['guiemail']) && ($_POST['guiemail'])) {
                $email = $_POST['email'];

                $checkemail = checkemail($email);
                if (is_array($checkemail)) {
                    $thongbao = "Mật khẩu của bạn là: " . $checkemail['pass'];
                } else {
                    $thongbao = "Email này không tồn tại";
                }
            }
            include "views/taikhoan/quenmk.php";
            break;
        case 'thoat':
            session_unset();
            // header('Location:index.php');
            echo "<script>
                    window.location.href='index.php';
                </script>";
            // include "./views/home.php";
            break;
        default:
            include "./views/home.php";
            break;
    }
} else {
    include "./views/home.php";
}
include "./views/footer.php";
