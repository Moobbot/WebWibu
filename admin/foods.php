<?php include 'header.php' ?>

<!-- Start Main -->
<div class="container-fluid custom-background" style="min-height: 100vh;">
    <div class="container pb-5">
        <h3 class="pt-5 pb-4 fw-bold">Quản lý món ăn</h3>

        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-food-modal">
            <i class="fas fa-plus pe-2"></i>Thêm
            món ăn</button>

        <div class="modal fade" id="add-food-modal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thêm món ăn</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
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
                            <input type="text" class="form-control" id="floatingInput" placeholder="">
                            <label for="floatingInput">Mô tả</label>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="funcAddSuccess()">Đồng ý</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay lại</button>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="container">
        <table id="table_acc" class="cell-border table-bordered">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên món ăn</th>
                    <th>Hình ảnh</th>
                    <th>Mức giá</th>
                    <th>Số lượng</th>
                    <th>Thành phần</th>
                    <th>Mô tả</th>
                    <th class="col-1.5">Chức năng</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>01</td>
                    <td>Mochi</td>
                    <td>Image</td>
                    <td class="text-end">10000</td>
                    <td class="text-end">100</td>
                    <td>Bột gạo</td>
                    <td>Món ăn ngọt truyền thống Nhật Bản</td>

                    <td class="d-flex justify-content-evenly">
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                            data-bs-target="#passchange">Sửa</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete"
                            onclick="funcDel()">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>01</td>
                    <td>Mochi</td>
                    <td>Image</td>
                    <td class="text-end">10000</td>
                    <td class="text-end">100</td>
                    <td>Bột gạo</td>
                    <td>Món ăn ngọt truyền thống Nhật Bản</td>

                    <td class="d-flex justify-content-evenly">
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                            data-bs-target="#passchange">Sửa</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete"
                            onclick="funcDel()">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>01</td>
                    <td>Mochi</td>
                    <td>Image</td>
                    <td class="text-end">10000</td>
                    <td class="text-end">100</td>
                    <td>Bột gạo</td>
                    <td>Món ăn ngọt truyền thống Nhật Bản</td>

                    <td class="d-flex justify-content-evenly">
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                            data-bs-target="#passchange">Sửa</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete"
                            onclick="funcDel()">Xóa</button>
                </tr>
                <tr>
                    <td>01</td>
                    <td>Mochi</td>
                    <td>Image</td>
                    <td class="text-end">10000</td>
                    <td class="text-end">100</td>
                    <td>Bột gạo</td>
                    <td>Món ăn ngọt truyền thống Nhật Bản</td>

                    <td class="d-flex justify-content-evenly">
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                            data-bs-target="#passchange">Sửa</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete"
                            onclick="funcDel()">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>01</td>
                    <td>Mochi</td>
                    <td>Image</td>
                    <td class="text-end">10000</td>
                    <td class="text-end">100</td>
                    <td>Bột gạo</td>
                    <td>Món ăn ngọt truyền thống Nhật Bản</td>

                    <td class="d-flex justify-content-evenly">
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                            data-bs-target="#passchange">Sửa</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete"
                            onclick="funcDel()">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>01</td>
                    <td>Mochi</td>
                    <td>Image</td>
                    <td class="text-end">10000</td>
                    <td class="text-end">100</td>
                    <td>Bột gạo</td>
                    <td>Món ăn ngọt truyền thống Nhật Bản</td>

                    <td class="d-flex justify-content-evenly">
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                            data-bs-target="#passchange">Sửa</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete"
                            onclick="funcDel()">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>01</td>
                    <td>Mochi</td>
                    <td>Image</td>
                    <td class="text-end">10000</td>
                    <td class="text-end">100</td>
                    <td>Bột gạo</td>
                    <td>Món ăn ngọt truyền thống Nhật Bản</td>

                    <td class="d-flex justify-content-evenly">
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                            data-bs-target="#passchange">Sửa</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete"
                            onclick="funcDel()">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>01</td>
                    <td>Mochi</td>
                    <td>Image</td>
                    <td class="text-end">10000</td>
                    <td class="text-end">100</td>
                    <td>Bột gạo</td>
                    <td>Món ăn ngọt truyền thống Nhật Bản</td>

                    <td class="d-flex justify-content-evenly">
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                            data-bs-target="#passchange">Sửa</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete"
                            onclick="funcDel()">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>01</td>
                    <td>Mochi</td>
                    <td>Image</td>
                    <td class="text-end">10000</td>
                    <td class="text-end">100</td>
                    <td>Bột gạo</td>
                    <td>Món ăn ngọt truyền thống Nhật Bản</td>

                    <td class="d-flex justify-content-evenly">
                        <button type="button" class="btn btn-warning" data-bs-toggle="modal"
                            data-bs-target="#passchange">Sửa</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete"
                            onclick="funcDel()">Xóa</button>
                    </td>
                </tr>
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
                            <input type="text" class="form-control" id="floatingInput" placeholder="">
                            <label for="floatingInput">Mô tả</label>
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