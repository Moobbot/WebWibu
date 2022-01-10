<?php
$loai = $_POST['loai'];
$ten = $_POST['ten'];
$sl = $_POST['sl'];
$gia = $_POST['gia'];
$hsd = $_POST['hsd'];

include 'C:\xampp\htdocs\WebWibu\config\constants.php';
$sql = "INSERT INTO `monan`(`Tenmonan`, `Maloai`, `Soluong`, `Giathanhpham`, `Hansudung`)
                    VALUES ('$ten', $loai, $sl, $gia,'$hsd')";
$result = mysqli_query($conn, $sql);
if ($result > 0) {
    echo "success";
} else {
    echo "error";
}
?>
<?php
//? đóng kết nối
mysqli_close($conn);
?>