<?php include 'header.php' ?>

<!-- Start Menu Admin -->
<div class="container-fluid custom-background">
    <div class="container pb-5">
        <h3 class="pt-5 pb-4 fw-bold">Quản lý tài khoản</h3>

        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-modal"><i class="fas fa-user-plus"></i>Thêm tài khoản</button>

        <div class="modal fade" id="add-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thêm tài khoản</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="floatingName" placeholder="abc">
                            <label for="floatingName">Họ và Tên</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingUsername" placeholder="name@example.com">
                            <label for="floatingUsername">Tên đăng nhập</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                            <label for="floatingPassword">Mật khẩu</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                            <label for="floatingPassword">Nhập lại mật khẩu</label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="funcAdd()">Đồng ý</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay lại</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container pb-5" style="min-height: 65vh; height: auto; max-height: 105vh;">
        <table id="table_acc table-responsive-md" class="cell-border table-bordered">
            <thead>
                <tr>
                    <th class="col-1">STT</th>
                    <th class="col">Tên tài khoản</th>
                    <th class="col-1">Mật khẩu</th>
                    <th>Họ tên</th>
                    <th class="col-1">Ngày bắt đầu làm việc</th>
                    <th>Địa chỉ</th>
                    <th class="col-1">Điện thoại</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <!-- thay đổi dữ liệu theo CSDL -->
                <?php
                //* B1: Gọi config
                include '../config/constants.php';
                //* B2: Truy vấn
                $sql = "SELECT taikhoan.mataikhoan, tentaikhoan, matkhau,hoten, ngaybatdaulamviec, diachi, dienthoai  FROM taikhoan, nhanvien WHERE taikhoan.mataikhoan = nhanvien.mataikhoan AND TAIKHOAN.Capdo = 2";
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
                                <th class="col-1"><?php echo $i; ?></th>
                                <td class="col"><?php echo $row['tentaikhoan']; ?></td>
                                <td class="col-1"><?php echo $row['matkhau']; ?></td>
                                <td class="col-2"><?php echo $row['hoten']; ?></td>
                                <td class="col-1"><?php echo $row['ngaybatdaulamviec']; ?></td>
                                <td class="col-2"><?php echo $row['diachi']; ?></td>
                                <td class="col"><?php echo $row['dienthoai']; ?></td>
                                <td class="d-flex justify-content-evenly">
                                    <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#passchange">Sửa</button>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete" onclick="funcDel()">Xóa</button>
                                </td>
                            </tr>
                        <?php
                        $i+=1;
                    endwhile;
                endif;

                //* B4: đóng kết nối
                mysqli_close($conn);
                ?>
            </tbody>
        </table>

        <div class="modal fade" id="passchange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Cập nhật tài khoản</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="floatingInput" placeholder="">
                            <label for="floatingInput">Họ và Tên</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="Text" class="form-control" id="floatingInput" placeholder="">
                            <label for="floatingInput">Tên tài khoản</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" id="floatingInput" placeholder="">
                            <label for="floatingInput">Mật khẩu cũ</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="password" class="form-control" id="floatingInput" placeholder="">
                            <label for="floatingInput">Mật khẩu mới</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="">
                            <label for="floatingPassword">Xác nhận mật khẩu</label>
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
    function funcDel() {
        if (confirm("Bạn có chắc muốn xoá tài khoản này không? dữ liệu sẽ không thể khôi phục.") == true) {
            alert("Xoá thành công!");
        }
    }

    function funcUpd() {
        if (confirm("Bạn có chắc muốn thực hiện việc thay đổi thông tin này không?") == true) {
            location.reload()
            alert("Cập nhật thành công!");
        }
    }

    function funcAdd() {
        location.reload()
        alert("Thêm tài khoản thành công!")
    }
</script>