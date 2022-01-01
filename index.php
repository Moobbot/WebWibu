<?php include('./reuse/header.php') ?>

<body>
    <div class="container-fluid d-flex justify-content-center">
        <div class="col-lg-11">
            <header
                class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-between border-bottom">
                <a class="navbar-brand" href="#">
                    <img src="./assets/img/Logo.jpg" class="img-fluid" alt="Logo-WowFood"
                        style="width: 120px; height: 60px;">
                </a>
                <!-- Điều hướng -->
                <ul class="nav nav-pills col-10 col-md-auto mb-2 justify-content-center mb-md-0 h5" id="pills-tab"
                    role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link red4 active" id="pills-home-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home"
                            aria-selected="true">Trang chủ</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link red4" id="pills-profile-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile"
                            aria-selected="false">Món ăn nổi bật</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link red4" id="pills-contact-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact"
                            aria-selected="false">Danh sách món ăn</button>
                    </li>
                </ul>

                <div class="col-md-2 me-lg-5" style="width: 160px;">
                    <button type="button" class="btn btn-outline-primary me-2">Login</button>
                    <button type="button" class="btn btn-primary">Sign-up</button>
                </div>
            </header>
        </div>
    </div>
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
            <?php include('./Khachhang/body.php') ?>
        </div>
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
            <?php include('./Khachhang/foodtop.php') ?>
        </div>
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
            <?php include('./Khachhang/listfood.php') ?>
        </div>
    </div>
</body>

<?php include('./reuse/footer.php') ?>