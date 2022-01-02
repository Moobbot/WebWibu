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
                        <a class="nav-link custom-color fw-bold" href="index.php"><i class="fas fa-home"></i>Trang
                            chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="accounts.php">Tài khoản</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="#">Nhân viên</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="foods.php">Món ăn</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="orders.php">Đơn hàng</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Nav -->


    <!-- Start Main -->
    <div class="container-fluid custom-background">
        <div class="container pb-5">
            <h3 class="pt-5 pb-4 fw-bold">Quản lý món</h3>

            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-food-modal">Thêm
                món</button>

            <div class="modal fade" id="add-food-modal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Thêm người dùng</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control" id="floatingInput" placeholder="abc">
                                <label for="floatingInput">Tên món</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="email" class="form-control" id="floatingInput"
                                    placeholder="name@example.com">
                                <label for="floatingInput">Giá</label>
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
        <!-- 
        <div class="container">
            <div class="row g-1 pb-4 justify-content-start">
                <div class="col-1">
                    <div class="border-bottom border-dark fw-bold">S.N.</div>
                </div>
                <div class="col-3">
                    <div class="border-bottom border-dark fw-bold">Title</div>
                </div>
                <div class="col-1">
                    <div class="border-bottom border-dark fw-bold">Price</div>
                </div>
                <div class="col-2">
                    <div class="border-bottom border-dark fw-bold">Image</div>
                </div>
                <div class="col-1">
                    <div class="border-bottom border-dark fw-bold">Featured</div>
                </div>
                <div class="col-1">
                    <div class="border-bottom border-dark fw-bold">Active</div>
                </div>
                <div class="col-3">
                    <div class="border-bottom border-dark fw-bold">Actions</div>
                </div>
            </div>

            <div class="row g-2  justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">1.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Dumplings Specials</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$5.00</div>
                </div>
                <div class="col-2">
                    <div class="">
                        <a href="">
                            <img src="../images/menu-momo.jpg" alt="momo">
                        </a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2 justifield justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">2.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Best Burger</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$4.00</div>
                </div>
                <div class="col-2">
                    <div class=" ">
                        <a href="">
                            <img src="../images/menu-burger.jpg" alt="burger">
                        </a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2 justifield justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">3.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Smoky BBQ Pizza</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$6.00</div>
                </div>
                <div class="col-2">
                    <div class=" ">
                        <a href="">
                            <img src="../images/menu-pizza.jpg" alt="pizza">
                        </a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2 justifield justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">4.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Sadeko Momo</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$6.00</div>
                </div>
                <div class="col-2">
                    <div class="">
                        <a href="">
                            <img src="../images/menu-momo.jpg" alt="momo">
                        </a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2 justifield justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">5.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Mixed Pizza</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$10.00</div>
                </div>
                <div class="col-2">
                    <div class=" ">
                        <a href="">
                            <img src="../images/menu-pizza.jpg" alt="pizza">
                        </a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2 justifield justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">6.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Sed ipsum cilum in</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$52.00</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">
                        <a href="#">Image Not Added</a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
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
                        <th scope="col">Tên món</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Hình ảnh</th>
                        <th scope="col">Tình trạng</th>
                        <th scope="col">Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="align-middle">
                        <th scope="row">1</th>
                        <td>Dumplings Specials</td>
                        <td>$5.00</td>
                        <td><a href="#"><img src="../images/menu-momo.jpg" class="img-custom" alt=""></a></td>

                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Sửa thông tin</button>
                            <button type="button" class="btn btn-danger">Xóa</button>
                        </td>
                    </tr>
                    <tr class="align-middle">
                        <th scope="row">2</th>
                        <td>Best Burger</td>
                        <td>$4.00</td>
                        <td><a href="#"><img src="../images/menu-burger.jpg" class="img-custom" alt=""></a></td>
                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Sửa thông tin</button>
                            <button type="button" class="btn btn-danger">Xóa</button>
                        </td>
                    </tr>
                    <tr class="align-middle">
                        <th scope="row">3</th>
                        <td>Smokey BBQ Pizza</td>
                        <td>$6.00</td>
                        <td><a href="#"><img src="../images/menu-pizza.jpg" class="img-custom" alt=""></a></td>
                        <td>No</td>
                        <td>
                            <button type="button" class="btn btn-success">Sửa thông tin</button>
                            <button type="button" class="btn btn-danger">Xóa</button>
                        </td>
                    </tr>
                    <tr class="align-middle">
                        <th scope="row">4</th>
                        <td>Sadeko Momo</td>
                        <td>$6.00</td>
                        <td><a href="#"><img src="../images/menu-momo.jpg" class="img-custom" alt=""></a></td>
                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Sửa thông tin</button>
                            <button type="button" class="btn btn-danger">Xóa</button>
                        </td>
                    </tr>
                    <tr class="align-middle">
                        <th scope="row">5</th>
                        <td>Mixed Pizza</td>
                        <td>$10.00</td>
                        <td><a href="#"><img src="../images/menu-pizza.jpg" class="img-custom" alt=""></a></td>
                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Sửa thông tin</button>
                            <button type="button" class="btn btn-danger">Xóa</button>
                        </td>
                    </tr>
                    <tr class="align-middle">
                        <th scope="row">6</th>
                        <td>Sed ipsum cillum in</td>
                        <td>$52.00</td>
                        <td><a href="#">Chưa được thêm</a></td>
                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Sửa thông tin</button>
                            <button type="button" class="btn btn-danger">Xóa</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <!-- End Main -->

    <!-- Start Footer -->
    <div class="footer">
        <div class="container">
            <p class="text-center pt-3 pb-3">2020 All rights reserved. Food House. Developed By <a href="#">CSE.TLU</a>
            </p>
        </div>
    </div>
    <!-- End Footer -->
</body>

</html>