<?php
function ketnoiDB()
{
    return new mysqli ('localhost','root','','apr');
}
function themSanPhamDB($MaSP,$TenSP,$DVT,$DonGia,$NhaCC)
{
    $con = ketnoiDB();
    $i = $con->query('INSERT INTO sanpham VALUES ("'.$MaSP.'","'.$TenSP.'","'.$DVT.'","'.$DonGia.'","'.$NhaCC.'")');
    return $i;

}
function hienThiSanPham()
{
    $con = ketnoiDB();
    $result = $con->query('SELECT*FROM Sanpham');
    return $result;
}
function updateSanPhamDB($MaSP,$TenSP,$DVT,$DonGia,$NhaCC)
{
    $con=ketnoiDB();
    $i=$con->query('UPDATE sanpham SET TenSP=$TenSP,DVT=$DVT,DonGia=$DonGia,NhaCC=$NhaCC' WHERE MaSP=$MaSP);
    return $i;

}