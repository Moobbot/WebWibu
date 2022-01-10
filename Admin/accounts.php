<?php include 'header.php' ?>

<!-- Start Menu Admin -->
<div class="container-fluid custom-background">
    <div class="container pb-5">
        <h3 class="pt-5 pb-4 fw-bold">Quản lý tài khoản</h3>

        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-modal"><i class="fas fa-user-plus"></i>Thêm tài khoản</button>

    </div>

    <div class="container pb-5" style="min-height: 65vh; height: auto; max-height: 105vh;">
        <table id="table_acc" class="cell-border table-bordered  table-responsive-md">
            <thead>
                <tr>
                    <th>STT</th>
                    <th class="col-2">Tên tài khoản</th>
                    <th>Mật khẩu</th>
                    <th>Họ tên</th>
                    <th>Ngày tạo</th>
                    <th class="col-2">Hành động</th>
                </tr>
            </thead>
            <tbody>
                <!-- thay đổi dữ liệu theo CSDL -->
                <?php
                //* B1: Gọi config
                include '../config/constants.php';
                //* B2: Truy vấn
                $sql = "SELECT taikhoan.mataikhoan, tentaikhoan, matkhau,hoten, ngaytao  FROM taikhoan, nhanvien WHERE taikhoan.mataikhoan = nhanvien.mataikhoan AND TAIKHOAN.Capdo = 2";
                // $sql = "SELECT mataikhoan, tentaikhoan, matkhau, hoten, ngaybatdaulamviec, diachi, dienthoai  FROM vw_nhanvien_thongtin as a, vw_nhanvien_thongtin as b  WHERE a.mataikhoan = b.mataikhoan";

                // Lưu kết quả trả về $result
                $result = mysqli_query($conn, $sql);
                //* B3: Phân tích sử lý kết quả
                if (mysqli_num_rows($result) > 0) :
                    // endif;
                    $i = 1;
                    while ($row = mysqli_fetch_assoc($result)) :
                ?>
                        <tr>
                            <!-- <th class="col-1"></?php echo $row['mataikhoan']; ?></th> -->
                            <th><?php echo $i; ?></th>
                            <td><?php echo $row['tentaikhoan']; ?></td>
                            <td><?php echo $row['matkhau']; ?></td>
                            <td><?php echo $row['hoten']; ?></td>
                            <td><?php echo $row['ngaytao']; ?></td>
                            <td class="d-flex justify-content-evenly">
                                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#passchange">Sửa</button>
                                <button type="button" class="btn btn-danger del" name="<?php echo $row['mataikhoan'] ?>">Xóa</button>
                            </td>
                        </tr>
                <?php
                        $i += 1;
                    endwhile;
                endif;
                //* B4: đóng kết nối
                // mysqli_close($conn);
                ?>

                <?php
                // include '../config/constants.php';

                //* B2: Truy vấn
                $sql2 = "SELECT mataikhoan, tentaikhoan, matkhau, ngaytao  FROM taikhoan WHERE trangthai = 0";
                // $sql = "SELECT mataikhoan, tentaikhoan, matkhau, hoten, ngaybatdaulamviec, diachi, dienthoai  FROM vw_nhanvien_thongtin as a, vw_nhanvien_thongtin as b  WHERE a.mataikhoan = b.mataikhoan";

                // Lưu kết quả trả về $result
                $result2 = mysqli_query($conn, $sql2);
                //* B3: Phân tích sử lý kết quả
                if (mysqli_num_rows($result2) > 0) :
                    // endif;
                    while ($row = mysqli_fetch_assoc($result2)) :
                ?>
                        <tr>
                            <!-- <th class=" col-1"></?php echo $row['mataikhoan']; ?>
                                    </th> -->
                            <th><?php echo $i; ?></th>
                            <td><?php echo $row['tentaikhoan']; ?></td>
                            <td><?php echo $row['matkhau']; ?></td>
                            <td></td>
                            <td><?php echo $row['ngaytao']; ?></td>
                            <td class="d-flex justify-content-evenly">
                                <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#passchange">Sửa</button>
                                <button type="button" class="btn btn-danger del" name="<?php echo $row['mataikhoan'] ?>">Xóa</button>
                            </td>
                        </tr>
                <?php
                        $i += 1;
                    endwhile;
                endif;
                //* B4: đóng kết nối
                mysqli_close($conn);
                ?>
            </tbody>
        </table>
        <!-- Modal thêm tài khoản -->
        <div class="modal fade" id="add-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thêm tài khoản</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control id" placeholder="" required>
                            <label>Tên tài khoản</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control pass" placeholder="" required>
                            <label>Mật khẩu</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control pass2" placeholder="" required>
                            <label>Nhập lại mật khẩu</label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" id="add">Đồng ý</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay lại</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal sửa tài khoản -->
    <div class="modal fade" id="passchange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Cập nhật tài khoản</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" placeholder="">
                        <label>Họ và Tên</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="Text" class="form-control" placeholder="">
                        <label>Tên tài khoản</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" placeholder="">
                        <label>Mật khẩu cũ</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" placeholder="">
                        <label>Mật khẩu mới</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" class="form-control" placeholder="">
                        <label>Xác nhận mật khẩu</label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="funcUpd()">Đồng ý</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay lại</button>
                </div>
            </div>
        </div>
    </div>

</div>
</div>
<!-- End Admin Menu -->
<?php include("./footer.php") ?>

<script>
    $(document).ready(function() {
        $('#table_acc').DataTable();
    });
</script>

<script>
    function funcUpd() {
        if (confirm("Bạn có chắc muốn thực hiện việc thay đổi thông tin này không?") == true) {
            location.reload()
            alert("Cập nhật thành công!");
        }
    }
</script>
<!-- Check lỗi -->
<script>
    $(document).ready(function() {
        $('#add').click(function() {
            $id = $('.id').val();
            $pass = $('.pass').val();
            $pass2 = $('.pass2').val();
            if ($id == "" || $pass == "" || $pass2 == "") {
                alert("Vui lòng nhập đủ thông tin");
            } else if ($pass != $pass2) {
                alert("Mật khẩu nhập lại không đúng");
            } else {
                $.ajax({
                    type: "post",
                    url: "./process/add-account.php",
                    data: {
                        id: $id,
                        pass: $pass,
                        pass2: $pass2
                    },
                    success: function(response) {
                        if (response == "success") {
                            alert("Thêm tài khoản thành công");
                            location.reload()
                        } else {
                            alert("Thêm thất bại");
                        }
                    }
                });
            }
        });

        // xoá tài khoản

        $('.del').click(function() {
            $delId = $(this).attr('name');
            if (confirm("Bạn có chắc muốn tài khoản này không?")) {
                //? nếu đồng ý
                $.ajax({
                    type: "post",
                    url: "./process/del-account.php",
                    data: {
                        delId: $delId,
                    },
                    success: function(response) {
                        if (response == "success") {
                            alert("Xoá tài khoản thành công!")
                            location.reload()
                        } else if (response == 'error') {
                            alert("Xoá tài khoản thất bại")
                        }
                    }
                });
            } else return false;
        });

    });
</script>