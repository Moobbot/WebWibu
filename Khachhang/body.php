<!-- Search -->
<section id="bg-search" class="container-fluid d-flex justify-content-center align-items-center">
    <div class="col-8">
        <div class="input-group rounded">
            <span class="input-group-text pe-3">
                <i class="fas fa-search"></i>
            </span>
            <input type="search" class="form-control rounded" placeholder="Tìm kiếm" aria-label="Search"
                aria-describedby="search-addon" />
        </div>
    </div>
</section>
<section class="container-fluid bg-wood d-flex" style="min-height: 100vh;">
    <!-- <div class="row"> -->
    <!-- Danh mục món -->
    <div class="d-flex align-items-start mt-2">
        <div class="col-lg-1 col-2" style="min-width: 208px;">
            <div class="d-flex flex-column border" style="border-radius: 15%;">
                <!-- Điều hướng -->
                <a class="h4 text-dark text-decoration-none mt-2 ps-2" href="./">Danh mục</a>
                <ul class="nav nav-pills mb-2 align-items-center h5" id="pills-tab" role="tablist">
                    <!-- <li class="nav-item pt-2" role="presentation">
                        <button class="nav-link active h4" id="v-pills-foodtop-tab" data-bs-toggle="pill"
                            data-bs-target="#v-pills-foodtop" type="button" role="tab" aria-controls="v-pills-foodtop"
                            aria-selected="true">Danh mục</button>
                    </li> -->
                    <?php
                    $loaimon = 4;
                    for ($i = 1; $i <= $loaimon; $i++) {
                        $typefood = "v-pills-typefood" . (string)$i
                    ?>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link red4" id=<?= $typefood . "-tab" ?> data-bs-toggle="pill"
                            data-bs-target=<?= "#" . $typefood ?> type="button" role="tab"
                            aria-controls=<?= $typefood ?> aria-selected="false">
                            <img src="./assets/img/mochi.png" class="me-2"
                                style="width: 10%; height: 10%; border-radius: 50%; min-width: 1.375em;">
                            Mochi
                        </button>
                    </li>
                    <?php
                    }
                    ?>
                </ul>
            </div>
            <div class="my-3">
                <h4 class="border ps-2 py-2" style="border-radius: 15%;">Fanpage</h4>
                <div class="fb-page" data-href="https://www.facebook.com/dongotvatrangmieng" data-tabs="timeline"
                    data-width="208" data-height="350" data-small-header="false" data-adapt-container-width="true"
                    data-hide-cover="false" data-show-facepile="true">
                    <blockquote cite="https://www.facebook.com/dongotvatrangmieng" class="fb-xfbml-parse-ignore"><a
                            href="https://www.facebook.com/dongotvatrangmieng">Đồ ngọt - Món tráng miệng</a>
                    </blockquote>
                </div>
            </div>
        </div>
        <div class="tab-content col ps-lg-5" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="v-pills-foodtop" role="tabpanel"
                aria-labelledby="v-pills-foodtop-tab">
                <div class="col-2 bg-hotpink h4 py-2 px-2" style="border-radius: 10%; min-width: 10em;">
                    Món ăn nổi bật
                </div>
                <?php include("./Khachhang/test.php") ?>
            </div>
            <?php
            $loaimon = 4;
            for ($i = 1; $i <= $loaimon; $i++) {
                $typefood = "v-pills-typefood" . (string)$i
            ?>
            <div class="tab-pane fade" id=<?= $typefood ?> role="tabpanel" aria-labelledby=<?= $typefood . "-tab" ?>>
                <img src="./assets/img/mochi.png " class="me-2" style="width: 10%; height: 10%; border-radius: 50%;">
                <h3 class="text-center"><?= $typefood ?></h3>
            </div>
            <?php
            }
            ?>
        </div>
    </div>
    <!-- </div> -->
</section>