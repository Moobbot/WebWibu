<?php include 'header.php' ?>

<!-- Start Main -->
<div class="container-fluid custom-background" style="min-height: 85vh; height: auto; max-height: 200vh;">
    <div class="container pb-5">
        <h3 class="pt-5 pb-4 fw-bold">Quản lý món ăn</h3>

        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-food-modal">
            <i class="fas fa-plus pe-2"></i>Thêm món ăn</button>

        <div class="modal fade" id="add-food-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thêm món ăn</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body row">
                        <!-- <div class="container-fluid"> -->
                        <!-- <div class="row"> -->
                        <div class="col-md-6">
                            <div class="form-floating mb-3">
                                <select id="loai" class="form-select form-select-sm mb-3" required>
                                    <!-- Lấy dữ liệu từ database -->
                                    <?php
                                    //? mở kết nối
                                    include '../config/constants.php';
                                    $sql = "SELECT * FROM loai";
                                    $result = mysqli_query($conn, $sql);
                                    //? xác thực
                                    if (mysqli_num_rows($result) > 0) {
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            echo '<option value="' . $row['Maloai'] . '">' . $row['Tenloai'] . '</option>';
                                        }
                                    }
                                    mysqli_close($conn);
                                    ?>
                                </select>
                                <label>Loại</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="ten" placeholder="">
                                <label>Tên món</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="gia" placeholder="">
                                <label>Giá thành phẩm</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="sl" placeholder="">
                                <label>Số lượng</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="date" class="form-control" id="hsd" placeholder="">
                                <label>Hạn sử dụng</label>
                            </div>
                        </div>

                        <div class="col-md-6 ms-auto">
                            <div class="form-floating mb-3">
                                <img src="https://cf.shopee.vn/file/71a0d3bd42c6a7bbf54574745eebb82c" class="img-thumbnail" alt="...">
                            </div>
                            <div class="form-floating mb-3">
                                <input type="button" value="Hình ảnh" onclick="document.getElementById('file').click()" />
                                <input type="file" id="file" style="display:none" />
                            </div>
                        </div>
                        <!-- </div> -->
                        <!-- </div> -->

                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" id="add">Đồng ý</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay lại</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <div class="container mt-4">
            <table id="table_acc" class="cell-border table-bordered table-responsive-md">
                <thead>
                    <tr class="text-center">
                        <th>STT</th>
                        <th>Loại</th>
                        <th>Tên món ăn</th>
                        <th>Hình ảnh</th>
                        <th>Giá thành phẩm</th>
                        <th>Số lượng</th>
                        <!-- <th>Mô tả</th> -->
                        <th>Ngày nhập</th>
                        <th>Hạn sử dụng</th>
                        <th>Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- thay đổi dữ liệu theo CSDL -->
                    <?php
                    //* B1: Gọi config
                    include '../config/constants.php';
                    //* B2: Truy vấn
                    $i = 1;
                    $sql = "SELECT mamonan, tenmonan, tenloai, hinhanh, mota, soluong, giathanhpham, ngaynhap, hansudung  FROM monan, loai where monan.maloai = loai.maloai";
                    //? lưu kết quả trả về $result
                    $result = mysqli_query($conn, $sql);
                    //* B3: Phân tích sử lý kết quả
                    if (mysqli_num_rows($result) > 0) :
                        while ($row = mysqli_fetch_assoc($result)) :
                    ?>
                            <tr>
                                <th><?php echo  $i; ?></th>
                                <td><?php echo $row['tenloai']; ?></td>
                                <td><?php echo $row['tenmonan']; ?></td>
                                <td class="text-center"><img src="<?php echo $row['hinhanh']; ?>" alt="" style="width: 10.625em; height: 5.875em;"></td>
                                <td class="text-end"><?php echo $row['giathanhpham']; ?></td>
                                <td class="text-end"><?php echo $row['soluong']; ?></td>
                                <!-- <td style=""></?php echo $row['mota']; ?></td> -->
                                <td class="text-center"><?php echo $row['ngaynhap']; ?></td>
                                <td class="text-center"><?php echo $row['hansudung']; ?></td>
                                <!-- <td class="d-flex justify-content-evenly"> -->
                                <td class="text-center">
                                    <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#passchange">Sửa</button>
                                    <button type="button" class="btn btn-danger del" name="<?php echo $row['mamonan'] ?>">Xóa</button>
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

            <div class="modal fade" id="passchange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Cập nhật món ăn</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" id="floatingInput" placeholder="">
                                            <label for="floatingInput">Tên món</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" id="floatingInput" placeholder="">
                                            <label for="floatingInput">Thành phần</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input type="text" class="form-control" id="floatingInput" placeholder="">
                                            <label for="floatingInput">Đơn giá</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input type="number" class="form-control" id="floatingInput" placeholder="">
                                            <label for="floatingInput">Số lượng</label>
                                        </div>
                                        <div class="form-floating mb-3">
                                            <textarea class="form-control" aria-label="With textarea"></textarea>
                                            <label for="floatingInput">Mô tả</label>
                                        </div>
                                    </div>

                                    <div class="col-md-6 ms-auto">
                                        <div class="form-floating mb-3">
                                            <img src="https://cf.shopee.vn/file/71a0d3bd42c6a7bbf54574745eebb82c" class="img-thumbnail" alt="...">
                                        </div>
                                        <div class="form-floating mb-3">
                                            <input type="button" value="Hình ảnh" onclick="document.getElementById('file').click()" />
                                            <input type="file" id="file" style="display:none" />
                                        </div>
                                    </div>
                                </div>
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

</div>
<!-- End Main -->

<?php include("./footer.php") ?>

<script>
    $(document).ready(function() {
        $('#table_acc').DataTable();
    });
</script>

<script>
    function funcUpd() {
        if (confirm("Bạn có chắc muốn cập món ăn này không?") == true) {
            location.reload()
            alert("Cập nhật thành công!");
        }
    }

    function funcAddSuccess() {
        location.reload()
        alert("Thêm món ăn thành công!")
    }
</script>

<script>
    $(document).ready(function() {
        $('#add').click(function() {
            $loai = $('#loai').val();
            $ten = $('#ten').val();
            $gia = $('#gia').val();
            $sl = $('#sl').val();
            $hsd = $('#hsd').val();

            if ($loai == "" || $ten == "" || $gia == "" || $sl == "" || $hsd == "") {
                alert("Vui lòng nhập đủ thông tin");
            } else {
                $.ajax({
                    type: "post",
                    url: "./process/add-food.php",
                    data: {
                        loai: $loai,
                        ten: $ten,
                        gia: $gia,
                        sl: $sl,
                        hsd: $hsd,
                    },
                    success: function(response) {
                        if (response == "success") {
                            alert("Thêm món ăn thành công");
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
            if (confirm("Bạn có chắc muốn món này không?")) {
                //? nếu đồng ý
                $.ajax({
                    type: "post",
                    url: "./process/del-food.php",
                    data: {
                        delId: $delId,
                    },
                    success: function(response) {
                        if (response == "success") {
                            alert("Xoá món ăn thành công!")
                            location.reload()
                        } else if (response == 'error') {
                            alert("Xoá món ăn thất bại")
                        }
                    }
                });
            } else return false;
        });

    });
</script>