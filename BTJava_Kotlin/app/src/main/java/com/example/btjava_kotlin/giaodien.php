<!doctype html>
<?php
session_start();
require_once('sanpham.php');
global $result;
?>
<html lang="en">
  <head>
    <title>Quan tri san pham</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <div class="jumbotron">
        <h1 class="display-3">Quan tri san pham</h1>
      
        <hr class="my-2">

    </div>
</head>
  <body>
    <div class="card-columns">
        <div class="card">
            <img class="card-img-top" src="holder.js/100x180/" alt="">
            <div class="card-body">
                <h4 class="card-title">Thong tin san pham</h4>
                <form action="" method="post">
                    <div class="form-group">
                      <label for="">Ma SP</label>
                      <input type="text"
                        class="form-control" name="txtMaSP" id="txtMaSP" aria-describedby="helpId" placeholder="MaSP">

                    </div>
                    <div class="form-group">
                        <label for="">Ten SP</label>
                        <input type="text"
                          class="form-control" name="txtTenSP" id="txtTenSP" aria-describedby="helpId" placeholder="TenSP">
  
                    </div>
                    <div class="form-group">
                        <label for="">DVT</label>
                        <input type="text"
                          class="form-control" name="txtDVT" id="txtDVT" aria-describedby="helpId" placeholder="DVT">
  
                    </div>
                    <div class="form-group">
                        <label for="">Don Gia</label>
                        <input type="text"
                          class="form-control" name="txtDonGia" id="txtDonGia" aria-describedby="helpId" placeholder="DonGia">
  
                    </div>
                    <div class="form-group">
                        <label for="">NhaCC</label>
                        <input type="text"
                          class="form-control" name="txtNhaCC" id="txtNhaCC" aria-describedby="helpId" placeholder="NhaCC">
  
                    </div>
                    <button type="submit" name="btnThem" value="btnThem" class="btn btn-primary" btn-lg btn-block">Them</button>
                    <button type="submit" name="btnHienThi" value="btnHienThi" class="btn btn-primary" btn-lg btn-block">Hien Thi</button>
                    <button type="submit" name="btnUpdate" value="btnUpdate" class="btn btn-primary" btn-lg btn-block">Update</button>

                </form>
            </div>
        </div>
        <div class="card">
            <img class="card-img-top" src="holder.js/100x180/" alt="">
            <div class="card-body">
                <h4 class="card-title">Hien thi san pham</h4>
                <table class="table">
                    <thead>
                        <tr>
                            <th>MaSP</th>
                            <th>TenSP</th>
                            <th>DVT</th>
                            <th>DonGia</th>
                            <th>NhaCC</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        if(isset($_POST['btnHienThi']))
                        {
                            $result = hienThiSanPham();
                            while($row=$result->fetch_assoc())
                            {
                                echo'<tr>';
                                echo'<td>'.$row['MaSP'].'</td>';
                                echo'<td>'.$row['TenSP'].'</td>';
                                echo'<td>'.$row['DVT'].'</td>';
                                echo'<td>'.$row['DonGia'].'</td>';
                                echo'<td>'.$row['NhaCC'].'</td>';
                                echo'</tr>';

                            }
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?php
        if($_POST('btnThem')!==null)
        {
           $MaSP=$_POST['txtMaSP'];
           $TenSP=$_POST['txtTenSP'];
           $DVT=$_POST['txtDVT'];
           $DonGia=$_POST['txtDonGia'];
           $NhaCC=$_POST['txtNhaCC'];
           $i=themSanPhamDB($MaSP,$TenSP,$DVT,$DonGia,$NhaCC);
           if($i<0)
           {
                echo "them that bai";
           }
           else{
            echo"them thanh cong";
           }

        }
        
    ?>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>