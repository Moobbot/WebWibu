<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap 5 -->
    <!-- Link css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Link fontawesome -->
    <script src="https://kit.fontawesome.com/a4208f5cfb.js" crossorigin="anonymous"></script>
    <!-- <link rel="stylesheet" href="/assets/style.css"> -->
    <link rel="stylesheet" href="../assets/style.css">

    <!-- datatable -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.0.1/css/buttons.dataTables.min.css">
    <script src="https://cdn.datatables.net/buttons/2.0.1/js/dataTables.buttons.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css">
    <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>

    <title>WibuFoods</title>
    <style>
    .row {
        padding-top: 40px;
    }
    </style>
</head>

<body>
    <!-- Menu -->
    <div class="container-fluid d-flex justify-content-center">
        <div class="col-lg-11">
            <header
                class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-between border-bottom">
                <a class="navbar-brand" href="#">
                    <img src="../assets/img/Logo.jpg" class="img-fluid" alt="Logo-WowFood"
                        style="width: 120px; height: 60px;">
                </a>

                <ul class="nav col-10 col-md-auto mb-2 justify-content-center mb-md-0 h5">
                    <li class="nav-item">
                        <a href="./" class="nav-link px-4 red4">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a href="./foodtop.php" class="nav-link px-4 red4">Món ăn nổi bật</a>
                    </li>
                    <li class="nav-item">
                        <a href="./listfood.php" class="nav-link px-4 red4">Danh sách món ăn</a>
                    </li>
                </ul>

                <div class="col-md-2 me-lg-5" style="width: 160px;">
                    <button type="button" class="btn btn-outline-primary me-2">Login</button>
                    <button type="button" class="btn btn-primary">Sign-up</button>
                </div>
            </header>
        </div>
    </div>
    <!-- main -->
    <div class="container">
        <div class="row pt-3">
            <div class="col-md-6">
                <div class="row" style="width: 452px">
                    <div id="carouselExampleControls" class="carousel slide w-100" data-bs-ride="carousel">
                        <div class="carousel-inner mb-1">
                            <div class="carousel-item active">
                                <img src="../assets/img/banh-ngot-nhat-ban-wagashi.webp" class="d-block w-100 img-fluid"
                                    alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="../assets/img/banh-ngot-nhat-ban-wagashi.webp" class="d-block w-100 img-fluid"
                                    alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="../assets/img/banh-ngot-nhat-ban-wagashi.webp" class="d-block w-100 img-fluid"
                                    alt="...">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>

                </div>
                <div class="row" style="width: 452px">
                    <div class="col-md-4">
                        <img src="../assets/img/banh-ngot-nhat-ban-wagashi.webp" alt="Ảnh" class="img-fluid">
                    </div>
                    <div class="col-md-4">
                        <img src="../assets/img/banh-ngot-nhat-ban-wagashi.webp" alt="Ảnh" class="img-fluid">
                    </div>
                    <div class="col-md-4">
                        <img src="../assets/img/banh-ngot-nhat-ban-wagashi.webp" alt="Ảnh" class="img-fluid">
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <!-- ten mon an -->
                <div class="row" style="font-size: 24px; font-weight: 700;">Combo 4 loại bánh ngọt: Mochi Matcha, Mochi Socola, Mochi Matcha, Mochi Socola </div>
                <!-- gia tien -->
                <div class="row" style="font-size: 40px;color: #ee4d2d;">10.000đ</div>
                <!-- so luong -->
                <div class="row align-items-sm-center">
                    <div class="col-md-3 p-0" style="font-size: 24px;"> Số lượng</div>
                    <div class="col-md-3 d-flex h-75 ">
                        <button class="btn-outline-secondary"><i class="fas fa-minus"></i></button>
                        <input type="number" class="w-50 text-end" value="1"></input>
                        <button class="btn-outline-secondary"><i class="fas fa-plus"></i></button>
                    </div>
                    <div class="col-md-4 text-secondary ps-0">100 sản phảm hiện có</div>
                </div>
                <!-- khuyen mai -->
                <div class="row d-flex align-items-sm-center">

                    <div class="col-md-3 p-0" style="font-size: 24px">Khuyến mãi </div>
                    <div class="col-md-2 text-center ms-2"
                        style="font-size: 14px; color: red; background-color: #fbebed;">Giảm 1k</div>
                    <div class="col-md-2 text-center ms-2"
                        style="font-size: 14px; color: red; background-color: #fbebed;">Giảm 1k</div>
                    <div class="col-md-2 text-center ms-2"
                        style="font-size: 14px; color: red; background-color: #fbebed;">Giảm 1k</div>
                </div>
                <!-- them gio hang -->
                <div class="row" style="font-size: 24px">
                    <button class=" btn btn-outline-danger w-50"><i class="fas fa-cart-plus"></i>
                        Thêm vào giỏ hàng</button>
                </div>


            </div>
        </div>
        <div class="row border-bottom"></div>
        <div class="row border-bottom ps-2" style="font-size: 24px; font-weight: 700;"> Chi tiết sản phẩm</div>
        <!-- mô tả -->
        <div class="row mt-4">
            <p>Bánh mochi Nhật Bản là một đặc trưng của đất nước mặt trời mọc. Ở Nhật Bản, bánh mochi là món bánh truyền
                thống được sử dụng trong rất nhiều dịp từ lễ tết đến các lễ hội truyền thống hay dùng làm món bánh tráng
                miệng.</p>
            <p>Bánh mochi Nhật Bản là một đặc trưng của đất nước mặt trời mọc. Ở Nhật Bản, bánh mochi là món bánh truyền
                thống được sử dụng trong rất nhiều dịp từ lễ tết đến các lễ hội truyền thống hay dùng làm món bánh tráng
                miệng.</p>
            <p>Bánh mochi Nhật Bản là một đặc trưng của đất nước mặt trời mọc. Ở Nhật Bản, bánh mochi là món bánh truyền
                thống được sử dụng trong rất nhiều dịp từ lễ tết đến các lễ hội truyền thống hay dùng làm món bánh tráng
                miệng.</p>
            <p>Bánh mochi Nhật Bản là một đặc trưng của đất nước mặt trời mọc. Ở Nhật Bản, bánh mochi là món bánh truyền
                thống được sử dụng trong rất nhiều dịp từ lễ tết đến các lễ hội truyền thống hay dùng làm món bánh tráng
                miệng.</p>
        </div>
    </div>

    <footer class="bd-footer py-5 mt-5 bg-light">
        <div class="container py-2">
            <p class="text-center h4">
                Designed By <a href="https://github.com/Moobbot/WebWibu">Wibu</a>
            </p>
        </div>
    </footer>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<!-- Link JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous">
</script>


<!-- code js -->
<script>

</script>
</html>