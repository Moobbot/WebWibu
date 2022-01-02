<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="https://kit.fontawesome.com/2b6d70a29b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <!-- Start Nav -->
    <nav class="navbar navbar-expand-lg navbar-light border-bottom border-1 border-dark">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <img src="https://raw.githubusercontent.com/Moobbot/WebWibu/main/assets/img/Logo.jpg" width="100"
                height=auto alt="">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto ms-auto mb-2 mb-lg-0 fs-3">
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="admin-home.php"><i class="fas fa-home"></i>Trang
                            chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="admin-admin.php">Tài khoản</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="admin-category.php">Nhân viên</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="admin-food.php">Món ăn</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="admin-order.php">Đơn hàng</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Nav -->

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
                                <input type="email" class="form-control" id="floatingInput"
                                    placeholder="name@example.com">
                                <label for="floatingInput">Tên đăng nhập</label>
                            </div>
                            <div class="form-floating">
                                <input type="password" class="form-control" id="floatingPassword"
                                    placeholder="Password">
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
            <!-- <div class="row g-1 ">
                <div class="col-1">
                    <div class="border-bottom border-dark fw-bold">S.N.</div>
                </div>
                <div class="col-2">
                    <div class="border-bottom border-dark fw-bold">Full Name</div>
                </div>
                <div class="col-2">
                    <div class="border-bottom border-dark fw-bold">Username</div>
                </div>
                <div class="col-6">
                    <div class="border-bottom border-dark fw-bold">Actions</div>
                </div>
            </div>

            <div class="row g-2  justify-content-start pb-2">
                <div class="col-1 pt-4">
                    <div class="">1.</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">Arsenio Leach</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">toduwaxobi</div>
                </div>
                <div class="col-6 pt-3">
                    <div class="">
                        <div class="row g-1">
                                <div class="col-3">
                                    <button class="custom-button1">Change Password</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button2">Update Admin</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button3">Delete Admin</button>
                                </div>

                                <div class="col-3">

                                </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2  justify-content-start pb-2">
                <div class="col-1 pt-4">
                    <div class="">2.</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">Sasha Mendez</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">goxemyde</div>
                </div>
                <div class="col-6 pt-3">
                    <div class="">
                        <div class="row g-1">
                                <div class="col-3">
                                    <button class="custom-button1">Change Password</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button2">Update Admin</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button3">Delete Admin</button>
                                </div>

                                <div class="col-3">

                                </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2  justify-content-start pb-2">
                <div class="col-1 pt-4">
                    <div class="">3.</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">Vijay Thapa</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">vijaythapa</div>
                </div>
                <div class="col-6 pt-3">
                    <div class="">
                        <div class="row g-1">
                                <div class="col-3">
                                    <button class="custom-button1">Change Password</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button2">Update Admin</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button3">Delete Admin</button>
                                </div>

                                <div class="col-3">

                                </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2  justify-content-start pb-2">
                <div class="col-1 pt-4">
                    <div class="">4.</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">Adminstrator</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">admin</div>
                </div>
                <div class="col-6 pt-3">
                    <div class="">
                        <div class="row g-1">
                                <div class="col-3">
                                    <button class="custom-button1">Change Password</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button2">Update Admin</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button3">Delete Admin</button>
                                </div>

                                <div class="col-3">

                                </div>
                        </div>
                    </div>
                </div>
            </div> -->

            <div class="container">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">S.N</th>
                            <th scope="col">Tên</th>
                            <th scope="col">Tên đăng nhập</th>
                            <th scope="col">Chức năng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="align-middle">
                            <th scope="row">1</th>
                            <td>Arsenio Leach</td>
                            <td>toduwaxobi</td>
                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#passchange">Thay đổi mật khẩu</button>
                                <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                    data-bs-target="#accountupdate">Nâng cấp quyền</button>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#delete">Xóa tài khoản</button>
                            </td>
                        </tr>
                        <tr class="align-middle">
                            <th scope="row">2</th>
                            <td>Sasha Mendez</td>
                            <td>goxemyde</td>
                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#passchange">Thay đổi mật khẩu</button>
                                <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                    data-bs-target="#accountupdate">Nâng cấp quyền</button>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#delete">Xóa tài khoản</button>
                            </td>
                        </tr>
                        <tr class="align-middle">
                            <th scope="row">3</th>
                            <td>Vijay Thapa</td>
                            <td>vijaythapa</td>
                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#passchange">Thay đổi mật khẩu</button>
                                <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                    data-bs-target="#accountupdate">Nâng cấp quyền</button>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#delete">Xóa tài khoản</button>
                            </td>
                        </tr>
                        <tr class="align-middle">
                            <th scope="row">4</th>
                            <td>Adminisator</td>
                            <td>admin</td>
                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#passchange">Thay đổi mật khẩu</button>
                                <button type="button" class="btn btn-success" data-bs-toggle="modal"
                                    data-bs-target="#accountupdate">Nâng cấp quyền</button>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#delete">Xóa tài khoản</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="modal fade" id="passchange" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
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
            <div class="modal fade" id="accountupdate" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
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
</body>

</html>