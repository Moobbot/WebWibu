<?php
$id = $_POST['id'];
$pass = $_POST['pass'];
$pass2 = $_POST['pass2'];


include 'C:\xampp\htdocs\WebWibu\config\constants.php';
$sql = "INSERT INTO `taikhoan`(`Tentaikhoan`, `Matkhau`, `Ngaytao`, `Capdo`)
                    VALUES ('$id', '$pass', CURRENT_DATE , '2')";
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