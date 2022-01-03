<div class="container-fluid">
    <div class="row col-md-11 d-flex justify-content-between mx-auto">
        <?php
        $mon = 12;
        for ($i = 1; $i <= $mon; $i++) {
        ?>
        <div class="col-xl-3 col-lg-4 col-md-6 px-2 py-2 d-flex justify-content-evenly">
            <div class="card text-center" style="width: 16.25em; max-height: 17.75em;">
                <img src="./assets/img/food<?= $i ?>.jpg" class="card-img-top" alt="..." style="max-height: 8.875em;">
                <div class="card-body">
                    <h5 class="card-title">Tên món</h5>
                    <p class="card-text">999.000</p>
                    <a href="#" class="btn btn-primary">Chi tiết</a>
                </div>
            </div>
        </div>
        <?php
        }
        ?>
    </div>
</div>