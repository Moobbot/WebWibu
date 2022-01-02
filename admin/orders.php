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
    <div class="container-fluid custom-background pb-5">
        <div class="container">
            <h3 class="pt-5 pb-4 fw-bold">Quản lý đơn hàng</h3>
        </div>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">S.N</th>
                        <th scope="col">Tên món</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Tổng tiền</th>
                        <th scope="col">Ngày đặt</th>
                        <th scope="col">Tình trạng</th>
                        <th scope="col">Tên khách</th>
                        <th scope="col">Liên hệ</th>
                        <th scope="col">Email</th>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col">Chức năng</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="align-middle">
                        <th scope="row">1</th>
                        <td>Mixed Pizza</td>
                        <td>10.00</td>
                        <td>2</td>
                        <td>20.00</td>
                        <td>2020-11-30 04:07:17</td>
                        <td class="text-success">Delivered</td>
                        <td>Jana Bush</td>
                        <td>+1(562)101-2028</td>
                        <td>tydujy@mailnator.com</td>
                        <td>Minima iure ducimus</td>
                        <td class="bg-success">Update Order</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr class="align-middle">
                        <th scope="row">2</th>
                        <td>Best Burger</td>
                        <td>4.00</td>
                        <td>4</td>
                        <td>16.00</td>
                        <td>2020-11-30 04:07:17</td>
                        <td class="text-success">Delivered</td>
                        <td>Kelly Dillard</td>
                        <td>+1(562)101-2028</td>
                        <td>fexekihor@mailnator.com</td>
                        <td>Incidunt ipsum ad d</td>
                        <td class="bg-success">Update Order</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr class="align-middle">
                        <th scope="row">3</th>
                        <td>Sadeko Momo</td>
                        <td>6.00</td>
                        <td>3</td>
                        <td>18.00</td>
                        <td>2020-11-30 04:07:17</td>
                        <td class="text-danger">Cancelled</td>
                        <td>Bradley Farrell</td>
                        <td>+1(562)101-2028</td>
                        <td>tydujy@mailnator.com</td>
                        <td>Minima iure ducimus</td>
                        <td class="bg-success">Update Order</td>
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