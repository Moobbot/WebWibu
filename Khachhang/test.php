<div class="container-fluid">
    <div class="row col-md-11 d-flex justify-content-between mx-auto">
        <?php
        $mon = 12;
        for ($i = 1; $i <= $mon; $i++) {
        ?>
        <div class="col-xl-3 col-lg-4 col-md-6 px-2 py-2 d-flex justify-content-evenly">
            <div class="card text-center" style="width: 16em; max-height: 19.44em;">
                <!-- 2:3.24 -->
                <img src="./assets/img/food<?= $i ?>.jpg" class="card-img-top img-fluid" alt="..."
                    style="min-height: 8.5em; height: auto; max-height: 8.875em;">
                <div class="card-body">
                    <h5 class="card-title">food<?= $i ?></h5>
                    <p class="card-text"><?= rand(100000, 999000) ?> đồng</p>
                    <!-- <a href="./Khachhang/chitietmonan.php" class="btn btn-primary">Chi tiết</a> -->
                    <ul class="nav nav-pills d-flex justify-content-center" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link btn btn-primary text-white" id="pills-chitietmonan-tab"
                                data-bs-toggle="pill" data-bs-target="#pills-chitietmonan" type="button" role="tab"
                                aria-controls="pills-chitietmonan" aria-selected="false"
                                style="background-color: #0d6efd;">Chi tiết</button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <?php
        }
        ?>
    </div>
</div>