<?php include 'header.php' ?>

<!-- Start Main -->
<div class="container-fluid custom-background" style="min-height: 85vh; height: auto; max-height: 100vh;">
    <div class="container pb-5">
        <h3 class="pt-5 pb-4 fw-bold">Quản lý món ăn</h3>

        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-food-modal">
            <i class="fas fa-plus pe-2"></i>Thêm món ăn</button>
        <div class="container mt-4">
            <table id="table_acc table-responsive-md" class="cell-border table-bordered">
                <thead>
                    <tr>
<<<<<<< HEAD:admin/foods.php
                        <th>STT</th>
                        <th>Loại</th>
                        <th>Tên món ăn</th>
                        <th>Hình ảnh</th>
                        <th>Mức giá</th>
                        <th>Số lượng</th>
                        <!-- <th>Mô tả</th> -->
                        <th>Ngày nhập</th>
                        <th>Hạn sử dụng</th>
                        <th class="col-1.5">Chức năng</th>
=======
                        <th class="text-center">STT</th>
                        <th class="text-center">Loại</th>
                        <th class="text-center">Tên món ăn</th>
                        <th class="text-center">Hình ảnh</th>
                        <th class="text-center">Mức giá</th>
                        <th class="text-center">Số lượng</th>
                        <!-- <th class="text-center">Mô tả</th> -->
                        <th class="text-center">Ngày nhập</th>
                        <th class="text-center">Hạn sử dụng</th>
                        <th class="text-center">Chức năng</th>
>>>>>>> main:Admin/foods.php
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
<<<<<<< HEAD:admin/foods.php
                                <th scope="row"><?php echo $row['mamonan']; ?></th>
                                <td><?php echo $row['tenloai']; ?></td>
                                <td><?php echo $row['tenmonan']; ?></td>
                                <td class="text-center"><img src="<?php echo $anh[$i] ?>" alt="" style="width: 6em; height: 4em;"></td>
                                <td class="text-end"><?php echo $row['giathanhpham']; ?></td>
                                <td class="text-end"><?php echo $row['soluong']; ?></td>
                                <!-- <td><?php echo $row['mota']; ?></td> -->
                                <td><?php echo $row['ngaynhap']; ?></td>
                                <td><?php echo $row['hansudung']; ?></td>
                                <td class="align-middle text-center">
=======
                                <th class="col-1 text-center"><?php echo  $i; ?></th>
                                <td class="col-1"><?php echo $row['tenloai']; ?></td>
                                <td class="col-2"><?php echo $row['tenmonan']; ?></td>
                                <td class="col-1"><img class="img-fluid" src="<?php echo $row['hinhanh'];?>" alt=""></td> 
                                <!-- style="width: 6em; height: 9.72em;"></td> -->
                                <td class="col-1 text-end"><?php echo $row['giathanhpham']; ?></td>
                                <td class="col-1 text-center"><?php echo $row['soluong']; ?></td>
                                <!-- <td style=""></?php echo $row['mota']; ?></td> -->
                                <td class="col-1 text-center"><?php echo $row['ngaynhap']; ?></td>
                                <td class="col-1 text-center"><?php echo $row['hansudung']; ?></td>
                                <!-- <td class="d-flex justify-content-evenly"> -->
                                <td class="col-1">
>>>>>>> main:Admin/foods.php
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
                                    <input type="text" class="form-control loaiMon" id="floatingFoodId" placeholder="">
                                    <label for="floatingFoodName">Loại</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control tenMon" id="floatingFoodName" placeholder="">
                                    <label for="floatingFoodName">Tên món</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control donGia" id="floatingDonGia" placeholder="">
                                    <label for="floatingDonGia">Đơn giá</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="number" class="form-control soLuong" id="floatingSoLuong" placeholder="">
                                    <label for="floatingSoLuong">Số lượng</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <textarea class="form-control moTa" aria-label="With textarea"></textarea>
                                    <label for="floatingInput">Mô tả</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="date" class="form-control hsd" id="floatingInput" placeholder="">
                                    <label for="floatingInput">Hạn sử dụng</label>
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
                                        <div class="form-floating mb-3">
                                            <input type="date" class="form-control" id="floatingInput" placeholder="">
                                            <label for="floatingInput">Hạn sử dụng</label>
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
    function funcDel() {
        if (confirm("Bạn có chắc muốn xoá món ăn này không? dữ liệu sẽ không thể khôi phục.") == true) {
            alert("Xoá thành công!");
        }
    }

    function funcUpd() {
        if (confirm("Bạn có chắc muốn cập món ăn này không?") == true) {
            location.reload()
            alert("Cập nhật thành công!");
        }
    }
</script>

<script>
    $(document).ready(function() {
        $('#add').click(function() {
            $loaiMon = $('.loaiMon').val();
            $tenMon = $('.tenMon').val();
            $soLuong = $('.soLuong').val();
            $donGia = $('.donGia').val();
            $moTa = $('.moTa').val();
            $hsd = $('.hsd').val();

            if ($loaiMon == "" || $tenMon == "" || $soLuong == "" || $donGia == "" ||
                $moTa == "" || $hsd == "") {
                alert("Vui lòng nhập đủ thông tin");
            } else {
                $.ajax({
                    type: "post",
                    url: "./process/add-food.php",
                    data: {
                        loaiMon: $loaiMon,
                        tenMon: $tenMon,
                        soLuong: $soLuong,
                        donGia: $donGia,
                        moTa: $moTa,
                        hsd: $hsd
                    },
                    success: function(response) {
                        if (response == "success") {
                            alert("Thêm thành công");
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