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

    <div class="container-fluid custom-background pb-5 h-100">
        <div class="container pb-5">
            <h3 class="pt-5 pb-4 fw-bold">Dashboard</h3>
        </div>

        <div class="container">
            <div class="row g2- pb-4 jutstify-content-around">

                <div class="rounded bg-white col-2 offset-md-1">
                    <div class="container pt-3">
                        <h2 class="text-center fw-bold">4</h2>
                    </div>
                    <div class="container pt-1">
                        <p class="text-center"><i class="fas fa-user"></i> Tài khoản</p>
                    </div>
                </div>

                <div class="rounded bg-white col-2 offset-md-1">
                    <div class="container pt-3">
                        <h2 class="text-center fw-bold">6</h2>
                    </div>
                    <div class="container pt-1">
                        <p class="text-center"><i class="fas fa-utensils"></i> Món ăn</p>
                    </div>
                </div>

                <div class="rounded bg-white col-2 offset-md-1">
                    <div class="container pt-3">
                        <h2 class="text-center fw-bold">3</h2>
                    </div>
                    <div class="container pt-1">
                        <p class="text-center"><i class="fas fa-users"></i> Nhân viên</p>
                    </div>
                </div>

                <div class="rounded bg-white col-2 offset-md-1">
                    <div class="container pt-3">
                        <h2 class="text-center fw-bold">100</h2>
                    </div>
                    <div class="container pt-1">
                        <p class="text-center"><i class="fas fa-cart-plus"></i> Đơn hàng</p>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Start Footer -->
    <div class="footer">
        <div class="container">
            <p class="text-center pt-3 pb-3">footer <a href="#">CSE.TLU</a>
            </p>
        </div>
    </div>
    <!-- End Footer -->
</body>

</html>