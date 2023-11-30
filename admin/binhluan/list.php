<div class="content-page">
    <div class="content">

        <!-- Start Content-->
        <div class="container-fluid">

            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box">
                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="index.php">Trang chủ admin</a></li>
                                <li class="breadcrumb-item active">Danh sách sản phẩm</li>
                            </ol>
                        </div>
                        <h3 class="page-title">DANH SÁCH SẢN PHẨM</h3>
                        
                        <div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">DANH SÁCH KHÁCH HÀNG</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                    <th></th>
                        <th>ID</th>
                        <th>NỘI DUNG</th>
                        <th>IDUSER</th>
                        <th>IDPRO</th>
                        <th>NGÀY BÌNH LUẬN</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <?php
                        foreach ($listbinhluan as $binhluan){
                            extract($binhluan);
                           
                            $xoa_bl = "index.php?act=xoabl&id=".$id;
                        echo '
                            <tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>'.$id.'</td>
                            <td>'.$noidung.'</td>
                            <td>'.$iduser.'</td>
                            <td>'.$idpro.'</td>
                            <td>'.$ngaybinhluan.'</td>
                            
                            <td></a> <a href="'.$xoa_bl.'"><input type="button" value="Xóa"></a></td>
                            </tr>
                        ';
                        }
                    ?>
                    </tr>
                </tbody>
            </table>
            <div class="input_button">
                <input onclick="selects()" class="btn-info" type="button" value="Chọn tất cả">
                <input onclick="deSelect()" class="btn-info " type="button" value="Bỏ chọn tất cả">
                <button onclick="deleteSelected()" class="btn-danger">Xóa các mục đã chọn</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">  
        function selects(){  
            var ele=document.getElementsByName('chk');  
            for(var i=0; i<ele.length; i++){  
                if(ele[i].type=='checkbox')  
                    ele[i].checked=true;  
            }  
        }  
        function deSelect(){  
            var ele=document.getElementsByName('chk');  
            for(var i=0; i<ele.length; i++){  
                if(ele[i].type=='checkbox')  
                    ele[i].checked=false;  
            }  
        }  

        function deleteSelected() {
            document.cookie = "isSelected=; expires=Thu, 01 Jan 1970 00:00:00 UTC;";
            var ele=document.getElementsByName('chk');
            let idSelected = '';  
            for(var i=0; i<ele.length; i++){  
                if(ele[i].checked) {
                    idSelected += ele[i].id + ','; 
                } 
            }  
            if (idSelected) {
                document.cookie = `isSelected=${idSelected}`;
                window.location.replace('index.php?act=deletealluser');
            }
        }
        
    </script>  


</div>
                
                    
                </div>
            </div>

        </div>