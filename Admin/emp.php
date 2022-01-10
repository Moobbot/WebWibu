<?php include './header.php' ?>

<!-- Start Menu Admin -->
<div class="container-fluid custom-background">
    <div class="container pb-5">
        <h3 class="pt-5 pb-4 fw-bold">Quản lý nhân viên</h3>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-modal"><i class="fas fa-user-plus"></i>Thêm nhân viên</button>
        <div class="container pt-4" style="min-height: 65vh; height: auto; max-height: 105vh;">
            <table id="table_emp" class="cell-border table-bordered">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Họ tên</th>
                        <th>Tên tài khoản</th>
                        <th>Ngày sinh</th>
                        <th>Ngày bắt đầu làm việc</th>
                        <th>Địa chỉ</th>
                        <th>Điện thoại</th>
                        <th>Lương</th>
                        <th>Thưởng</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- thay đổi dữ liệu theo CSDL -->
                    <?php
                    //* B1: Gọi config
                    include '../config/constants.php';
                    //* B2: Truy vấn
                    $sql = "SELECT manhanvien, hoten, tentaikhoan, ngaybatdaulamviec, diachi, dienthoai, luong, ngaysinh, tienthuong  FROM taikhoan, nhanvien WHERE taikhoan.mataikhoan = nhanvien.mataikhoan  AND TAIKHOAN.Capdo = 2";

                    //? lưu kết quả trả về $result
                    $result = mysqli_query($conn, $sql);
                    $i = 1;
                    //* B3: Phân tích sử lý kết quả
                    if (mysqli_num_rows($result) > 0) :
                        while ($row = mysqli_fetch_assoc($result)) :
                    ?>
                            <tr>
                                <th scope="row"><?php echo $i; ?></th>
                                <td><?php echo $row['hoten']; ?></td>
                                <td><?php echo $row['tentaikhoan']; ?></td>
                                <td><?php echo $row['ngaysinh']; ?></td>
                                <td><?php echo $row['ngaybatdaulamviec']; ?></td>
                                <td><?php echo $row['diachi']; ?></td>
                                <td><?php echo $row['dienthoai']; ?></td>
                                <td class="text-end"><?php echo $row['luong']; ?></td>
                                <td class="text-end"><?php echo $row['tienthuong']; ?></td>
                                <td class="d-flex justify-content-evenly">
                                    <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#passchange">Sửa</button>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete" onclick="funcDel()">Xóa</button>
                                </td>
                            </tr>
                    <?php
                            $i++;
                        endwhile;
                    endif;
                    //* B4: đóng kết nối
                    mysqli_close($conn);
                    ?>
                </tbody>
            </table>

            <div class="modal fade" id="add-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Thêm nhân viên</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="name" placeholder="" required>
                                <label>Họ và tên</label>
                            </div>
                            <div class="form-floating mb-3">
                                <select id="id" class="form-select form-select-sm mb-3" required>
                                    <!-- Lấy dữ liệu từ database -->
                                    <?php
                                    //? mở kết nối
                                    include '../config/constants.php';
                                    $sql = "SELECT * FROM taikhoan WHERE Trangthai = 0";
                                    $result = mysqli_query($conn, $sql);
                                    //? xác thực
                                    if (mysqli_num_rows($result) > 0) {
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            echo '<option value="' . $row['Mataikhoan'] . '">' . $row['Tentaikhoan'] . '</option>';
                                        }
                                    }
                                    mysqli_close($conn);
                                    ?>
                                </select>
                                <label>Tên tài khoản</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="date" class="form-control" id="birth" placeholder="" required>
                                <label>Ngày sinh</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="date" class="form-control" id="start" placeholder="" required>
                                <label>Ngày bắt đầu làm việc</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="addr" placeholder="" required>
                                <label>Địa chỉ</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="phone" placeholder="" required>
                                <label>Điện thoại</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="salary" placeholder="" required>
                                <label>Lương</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="bonus" placeholder="" required>
                                <label>Thưởng</label>
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

        <div class="modal fade" id="passchange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Cập nhật tài khoản</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="name" placeholder="" required>
                            <label>Họ và tên</label>
                        </div>
                        <div class="form-floating mb-3">
                            <select id="id" class="form-select form-select-sm mb-3" required>
                                <!-- Lấy dữ liệu từ database -->
                                <?php
                                //? mở kết nối
                                include '../config/constants.php';
                                $sql = "SELECT * FROM taikhoan where Trangthai = 0";
                                $result = mysqli_query($conn, $sql);
                                //? xác thực
                                if (mysqli_num_rows($result) > 0) {
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        echo '<option value="' . $row['Mataikhoan'] . '">' . $row['Tentaikhoan'] . '</option>';
                                    }
                                }
                                mysqli_close($conn);
                                ?>
                            </select>
                            <label>Tên tài khoản</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="date" class="form-control" id="start" placeholder="" required>
                            <label>Ngày bắt đầu làm việc</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="addr" placeholder="" required>
                            <label>Địa chỉ</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="phone" placeholder="" required>
                            <label>Điện thoại</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="text" class="form-control" id="salary" placeholder="" required>
                            <label>Lương</label>
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
        $('#table_emp').DataTable();
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
</script>

<script>
    $(document).ready(function() {
        $('#add').click(function() {
            $id = $('#id').val();
            $name = $('#name').val();
            $addr = $('#addr').val();
            $birth = $('#birth').val();
            $phone = $('#phone').val();
            $start = $('#start').val();
            $salary = $('#salary').val();
            $bonus = $('#bonus').val();

            if ($id == "" || $name == "" || $addr == "" || $phone == "" || $start == "" || $salary == "" || $birth == "" || $bonus == "") {
                alert("Vui lòng nhập đủ thông tin");
            } else {
                $.ajax({
                    type: "post",
                    url: "./process/add-emp.php",
                    data: {
                        id: $id,
                        name: $name,
                        addr: $addr,
                        phone: $phone,
                        start: $start,
                        salary: $salary,
                        birth: $birth,
                        bonus: $bonus

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
        })
    });
</script>