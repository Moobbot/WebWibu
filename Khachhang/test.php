<div class="container-fluid">
    <div class="row d-flex justify-content-xl-around mx-auto">
        <?php
        $mon = 4;
        for ($i = 1; $i <= $mon; $i++) {
        ?>
        <div class="col-xl-3 col-lg-4 col-md-6 px-2 py-2">
            <div class="card text-center" style="width: 16.25em;">
                <img src="./assets/img/timthumb.jpg" class="card-img-top" alt="...">
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