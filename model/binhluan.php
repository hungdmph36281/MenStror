<?php
    function insert_binhluan($noidung, $iduser, $idpro, $ngaybinhluan){
        $sql = "INSERT INTO binhluan (noidung, iduser, idpro, ngaybinhluan) values('$noidung', '$iduser', '$idpro', '$ngaybinhluan')";
        pdo_execute($sql);
    }
    function loadall_binhluan($idpro){
        $sql = "SELECT * FROM binhluan WHERE 1";
        if($idpro>0)
        $sql.=" AND idpro= '".$idpro."'";
        $sql.=" ORDER BY id DESC";
        $listbinhluan=pdo_query($sql);
        return $listbinhluan;
    }

    function binhluan_select_all(){
        $sql = "SELECT * FROM binhluan ORDER BY id DESC";
        return  pdo_query($sql);
    }
    function delete_binhluan($id){
        $sql="delete from binhluan where id=".$id;
        pdo_execute($sql);
    }
?>