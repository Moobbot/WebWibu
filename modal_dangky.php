<!-- Modal Signup -->
<div class="modal fade" id="ModalSignup" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <!-- Login Form -->
            <form action ="proc_dangky.php" method = "POST">
                <div class="modal-header">
                    <h5 class="modal-title">Đăng ký</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="Username">Tên tài khoản<span class="text-danger">*</span></label>
                        <input type="text" name="username" class="form-control" id="Username"
                            placeholder="Enter Username">
                    </div>

                    <div class="mb-3">
                        <label for="Password1">Mật khẩu<span class="text-danger">*</span></label>
                        <input type="password" name="password1" class="form-control" id="Password1"
                            placeholder="Enter Password">
                    </div>
                    <div class="mb-3">
                        <label for="Password2">Xác nhận mật khẩu<span class="text-danger">*</span></label>
                        <input type="password" name="password2" class="form-control" id="Password2"
                            placeholder="Enter Password">
                    </div>
                    <div class="mb-3">
                        <label for="hoten">Họ Tên<span class="text-danger">*</span></label>
                        <input type="text" name="hoten" class="form-control" id="hoten" placeholder="Enter your name">
                    </div>
                    <div class="mb-3">
                        <label for="diachi">Địa chỉ<span class="text-danger">*</span></label>
                        <input type="text" name="diachi" class="form-control" id="diachi" placeholder="Enter your house">
                    </div>
                    <div class="mb-3">
                        <label for="email">Email<span class="text-danger">*</span></label>
                        <input type="email" name="email" class="form-control" id="email" placeholder="Enter your email">
                    </div>
                    <div class="mb-3">
                        <label for="sodienthoai">Số điện thoại<span class="text-danger">*</span></label>
                        <input type="tel" name="sodienthoai" class="form-control" id="sodienthoai"
                            placeholder="Enter your phone number">
                    </div>
                </div>
                <div class="modal-footer pt-4">
                    <button type="submit" class="btn btn-success mx-auto w-100" name="btn-dangky" , id="btn-dangky">Đăng
                        ký</button>
                </div>
                <p class="text-center">Đã có tài khoản, <button type="submit" class="btn p-0 mb-1 text-success"
                        name="btn-dangnhap" id="btn-dangnhap">Đăng nhập</button></p>
            </form>
        </div>
    </div>
</div>