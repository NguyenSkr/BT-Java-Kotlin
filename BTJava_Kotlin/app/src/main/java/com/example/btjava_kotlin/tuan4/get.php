<?php
$s="localhost";$u="root";$p="";$db="flu1";
$conn=new mysqli($s,$u,$p,$db);
$sql="select * from mytable";
$kq=$conn->query($sql);
while($row[]=$kq->fetch_assoc())
{
    $json = json_encode($row);
}
echo '{"products":'.$json.'}';
$conn->close();
?>