<?php include 'header.php' ?>

<!-- Start Main -->
<div class="container-fluid custom-background" style="min-height: 100vh;">
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
                                <input type="text" class="form-control" id="floatingFoodName" placeholder="">
                                <label for="floatingFoodName">Tên món</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingThanhPhan" placeholder="">
                                <label for="floatingThanhPhan">Thành phần</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingDonGia" placeholder="">
                                <label for="floatingDonGia">Đơn giá</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="number" class="form-control" id="floatingSoLuong" placeholder="">
                                <label for="floatingSoLuong">Số lượng</label>
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
                        <!-- </div> -->
                        <!-- </div> -->

                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary" onclick="funcAddSuccess()">Đồng ý</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay lại</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <div class="container mt-4">
            <table id="table_acc" class="cell-border table-bordered">
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Loại</th>
                        <th>Tên món ăn</th>
                        <th>Hình ảnh</th>
                        <th>Mức giá</th>
                        <th>Số lượng</th>
                        <th>Mô tả</th>
                        <th>Ngày nhập</th>
                        <th>Hạn sử dụng</th>
                        <th class="col-1.5">Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- thay đổi dữ liệu theo CSDL -->
                    <?php
                    $anh = array(
                        "https://cdn.tgdd.vn/2020/07/CookRecipe/Avatar/banh-mochi-giot-nuoc-thumbnail.jpg",
                        "https://cdn.tgdd.vn/2020/07/CookRecipe/Avatar/banh-mochi-nhan-dau-do-thumbnail.jpg",
                        "https://cdn.tgdd.vn/2020/07/CookRecipe/Avatar/banh-mochi-tra-xanh-nhan-kem-thumbnail.jpg",
                        "https://cdn.tgdd.vn/2020/08/CookRecipe/Avatar/banh-mochi-nhan-kem-huong-vani-thumbnail.jpg",
                        "https://cdn.tgdd.vn/2020/12/CookRecipe/Avatar/banh-mochi-nhan-kem-dau-tay-pho-mai-thumbnail-2.jpg"
                    );
                    //* B1: Gọi config
                    include '../config/constants.php';
                    //* B2: Truy vấn
                    $i = 0;
                    $sql = "SELECT mamonan, tenmonan, tenloai, mota, soluong, giathanhpham, ngaynhap, hansudung  FROM monan, loai where monan.maloai = loai.maloai";
                    //? lưu kết quả trả về $result
                    $result = mysqli_query($conn, $sql);
                    //* B3: Phân tích sử lý kết quả
                    if (mysqli_num_rows($result) > 0) :
                        while ($row = mysqli_fetch_assoc($result)) :
                    ?>
                            <tr>
                                <th scope="row"><?php echo $row['mamonan']; ?></th>
                                <td><?php echo $row['tenloai']; ?></td>
                                <td><?php echo $row['tenmonan']; ?></td>
                                <td><img src="<?php echo $anh[$i] ?>" alt="" style="width: 4em; height: 6.28em;"></td>
                                <td><?php echo $row['giathanhpham']; ?></td>
                                <td><?php echo $row['soluong']; ?></td>
                                <td><?php echo $row['mota']; ?></td>
                                <td><?php echo $row['ngaynhap']; ?></td>
                                <td><?php echo $row['hansudung']; ?></td>
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

    function funcAddSuccess() {
        location.reload()
        alert("Thêm món ăn thành công!")
    }
</script>