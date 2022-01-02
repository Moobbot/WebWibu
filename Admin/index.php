<?php include('../reuse/header.php') ?>

<body>
    <div class="container-fluid d-flex justify-content-center">
        <div class="col-lg-11">
            <header
                class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-between border-bottom">
                <a class="navbar-brand" href="#">
                    <img src="../assets/img/Logo.jpg" class="img-fluid" alt="Logo-WowFood"
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
                        <button class="nav-link red4" id="pills-acc-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-acc"
                            aria-selected="false">Tài khoản</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link red4" id="pills-emp-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-emp" type="button" role="tab" aria-controls="pills-emp"
                            aria-selected="false">Nhân viên</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link red4" id="pills-menu-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-menu" type="button" role="tab" aria-controls="pills-menu"
                            aria-selected="false">Món ăn</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link red4" id="pills-order-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-order" type="button" role="tab" aria-controls="pills-order"
                            aria-selected="false">Đơn hàng</button>
                    </li>
                </ul>

                <div class="col-md-2 me-lg-5" style="width: 160px;">
                   
                </div>
            </header>
        </div>
    </div>
    <!-- contents -->
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
            <?php include('./home.php') ?>
        </div>
        <div class="tab-pane fade show active" id="pills-acc" role="tabpanel" aria-labelledby="pills-acc-tab">
            <?php include('./accounts.php') ?>
        </div>
    </div>

    </body>

   
<?php include('../reuse/footer.php') ?>

<script>
    $(document).ready( function () {
        $("#pills-home" ).click(function() {
        $('#table_acc').DataTable();
    });
    
} );
</script>