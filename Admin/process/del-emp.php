<?php
if (isset($_POST['delId'])) {
    $id = $_POST['delId'];
    $accId = $_POST['accId'];


    //?mở kết nối

    include 'C:\xampp\htdocs\WebWibu\config\constants.php';

    //? set câu lệnh truy vấn
    $sql = "DELETE FROM nhanvien WHERE manhanvien='$id'";

    //? kiểm tra và thực thi câu lệnh
    if (mysqli_query($conn, $sql)) {
        $sql2 = "UPDATE `taikhoan` SET `Trangthai`=0 WHERE Mataikhoan =$accId";
        if (mysqli_query($conn, $sql2)) {
            echo "success";
        }
    } else {
        echo "error";
    }
    //? đóng kết nối
    mysqli_close($conn);
}
