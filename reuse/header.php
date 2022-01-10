<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wibu</title>
    <!-- Bootstrap 5 -->
    <!-- Link css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/bootstrap-5.1.1-dist/css/bootstrap.min.css">
    <!-- Link fontawesome -->
    <script src="https://kit.fontawesome.com/a4208f5cfb.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="./assets/fontawesome/css/all.min.css">
    <!-- <link rel="stylesheet" href="/assets/style.css"> -->
    <link rel="stylesheet" href="./assets/style.css">
    <div id="fb-root"></div>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v12.0"
        nonce="d2A7IJId"></script>

    <!-- datatable -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="./assets/datatable/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script src="./assets/datatable/jquery.dataTables.min.js"></script>
    <!-- <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.0.1/css/buttons.dataTables.min.css">
    <script src="https://cdn.datatables.net/buttons/2.0.1/js/dataTables.buttons.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css">
    <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script> -->
</head>

<body>

<div class="container-fluid d-flex justify-content-center">
    <div class="col-lg-11">
        <header
            class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-between border-bottom">
            <a class="navbar-brand" href="./">
                <img src="./assets/img/Logo.jpg" class="img-fluid" alt="Logo-WowFood"
                    style="width: 120px; height: 60px;">
            </a>

            <!-- Điều hướng -->
            <ul class="nav nav-pills col-10 col-md-auto mb-2 justify-content-center mb-md-0 h5" id="pills-tab"
                role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link red4" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home"
                        type="button" role="tab" aria-controls="pills-home" aria-selected="false">Trang chủ</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link red4" id="pills-foodtop-tab" data-bs-toggle="pill"
                        data-bs-target="#pills-foodtop" type="button" role="tab" aria-controls="pills-foodtop"
                        aria-selected="false">Món ăn nổi bật</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link red4" id="pills-listfood-tab" data-bs-toggle="pill"
                        data-bs-target="#pills-listfood" type="button" role="tab" aria-controls="pills-listfood"
                        aria-selected="false">Danh sách món ăn</button>
                </li>
            </ul>

            <div class="col-md-2 me-lg-5" style="width: 202px;">
                <button type="button" class="btn btn-outline-primary me-2" data-bs-toggle="modal"
                    data-bs-target="#ModalLogin">Đăng nhập</button>
                <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal"
                    data-bs-target="#ModalSignup">Đăng ký</button>
            </div>
        </header>
    </div>
</div>
<?php include("./modal_dangnhap.php")?>
<?php include("./modal_dangky.php")?>
