<?php include 'header.php' ?>

<!-- Start Menu Admin -->
<div class="container-fluid custom-background">
    <div class="container pb-5">
        <h3 class="pt-5 pb-4 fw-bold">Quản lý người dùng</h3>

        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-modal">Thêm
            người dùng</button>
        <div class="modal fade" id="add-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thêm người dùng</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="abc">
                            <label for="floatingInput">Tên</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                            <label for="floatingInput">Tên đăng nhập</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                            <label for="floatingPassword">Mật khẩu</label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Thêm</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
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
                    <th>Tên tài khoản</th>
                    <th>Mật khẩu</th>
                    <th>Họ tên</th>
                    <th class="col-2">Hành động</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>01</td>
                    <td>loofeht</td>
                    <td>123456</td>
                    <td>Nguyễn Văn A</td>
                    <td class="d-flex justify-content-evenly">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#passchange">Sửa</button>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete">Xóa</button>
                    </td>
                </tr>


            </tbody>
        </table>
        <div class="modal fade" id="passchange" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thay đổi mật khẩu</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="">
                            <label for="floatingInput">Mật khẩu cũ</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" id="floatingInput" placeholder="">
                            <label for="floatingInput">Mật khẩu mới</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="">
                            <label for="floatingPassword">Xác nhận mật khẩu</label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Sửa</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Xóa</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="accountupdate" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <h4>Bạn chắc chắn muốn nâng cấp quyền ?</h4>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Đồng ý</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="delete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <h4>Bạn chắc chắn muốn xóa tài khoản ?</h4>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Đồng ý</button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Admin Menu -->
    <?php include 'footer.php' ?>

    <script>
        $(document).ready(function() {
            $('#table_acc').DataTable();
        });
    </script>