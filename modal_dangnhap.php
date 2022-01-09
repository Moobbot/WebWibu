<!-- <button type="button" class="btn btn-success d-table my-5 mx-auto" data-bs-toggle="modal" data-bs-target="#ModalForm">
    Bootstrap Modal Form
</button> -->

<!-- Modal Login -->
<div class="modal fade" id="ModalLogin" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <!-- Login Form -->
            <form action="">
                <div class="modal-header">
                    <h5 class="modal-title">Đăng nhập</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="Username">Tên tài khoản<span class="text-danger">*</span></label>
                        <input type="text" name="username" class="form-control" id="Username"
                            placeholder="Enter Username">
                    </div>

                    <div class="mb-3">
                        <label for="Password">Mật khẩu<span class="text-danger">*</span></label>
                        <input type="password" name="password" class="form-control" id="Password"
                            placeholder="Enter Password">
                    </div>
                    <div class="mb-3">
                        <input class="form-check-input" type="checkbox" value="" id="remember" required>
                        <label class="form-check-label" for="remember">Ghi nhớ</label>
                        <a href="#" class="float-end">Quên mật khẩu</a>
                    </div>
                </div>
                <div class="modal-footer pt-4">
                    <button type="button" class="btn btn-success mx-auto w-100">Đăng nhập</button>
                </div>
                <p class="text-center">Không có tài khoản, <a href="#">Đăng ký</a></p>
            </form>
        </div>
    </div>
</div>