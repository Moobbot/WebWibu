<?php
$id = $_POST['id'];
$name = $_POST['name'];
$addr = $_POST['addr'];
$phone = $_POST['phone'];
$start = $_POST['start'];
$salary = $_POST['salary'];
$birth = $_POST['birth'];
$bonus = $_POST['bonus'];


include 'C:\xampp\htdocs\WebWibu\config\constants.php';
$sql = "INSERT INTO `nhanvien`(`Hoten`, `Ngaysinh`, `Ngaybatdaulamviec`, `Diachi`, `Dienthoai`, `Luong`, `Tienthuong`, `Mataikhoan`)
                        VALUES ('$name', '$birth', '$start' , '$addr', '$phone', '$salary', '$bonus', '$id')";
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