<?php
$loaiMon = $_POST['loaiMon'];
$tenMon = $_POST['tenMon'];
$soLuong = $_POST['soLuong'];
$donGia = $_POST['donGia'];
$moTa = $_POST['moTa'];
$hsd = $_POST['hsd'];

include 'C:\xampp\htdocs\WebWibu\config\constants.php';
$sql = "INSERT INTO `monan`(`Tenmonan`, `Maloai`, `Mota`, `Soluong`, `Giathanhpham`, `Ngaynhap`, `Hansudung`)
                    VALUES ('$tenMon', $loaiMon, '$moTa', $soLuong, $donGia, CURRENT_DATE ,'$hsd')";
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