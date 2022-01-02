<!-- Search -->
<section id="bg-search" class="container-fluid d-flex justify-content-center align-items-center">
    <div class="col-8">
        <div class="input-group rounded">
            <span class="input-group-text border-0 pe-3">
                <i class="fas fa-search"></i>
            </span>
            <input type="search" class="form-control rounded" placeholder="Tìm kiếm" aria-label="Search"
                aria-describedby="search-addon" />
        </div>
    </div>
</section>
<section class="container-fluid bg-wood d-flex justify-content-start" style="min-height: 100vh;">
    <!-- <div class="row"> -->
    <!-- Danh mục món -->
    <div class="d-flex align-items-start mt-2">
        <div class="col-2">
            <div class="bg-white" style="border-radius: 5%;">
                <!-- width: 200px; -->
                <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical"
                    style="min-height: 20em;">
                    <button class="nav-link text-start text-dark h4 px-0" id="v-pills-foodtop-tab" data-bs-toggle="pill"
                        data-bs-target="#v-pills-foodtop" type="button" role="tab" aria-controls="v-pills-foodtop"
                        aria-selected="true"
                        style="width: 160px; background-color: pink; border-radius: 5%; border-bottom-width: 1px 0;">
                        Danh mục
                    </button>
                    <?php
                    $loaimon = 4;
                    for ($i = 1; $i <= $loaimon; $i++) {
                        $typefood = "v-pills-typefood" . (string)$i
                    ?>
                    <button class="nav-link text-start" id=<?= $typefood . "-tab" ?> data-bs-toggle="pill"
                        data-bs-target=<?= "#" . $typefood ?> type="button" role="tab" aria-controls=<?= $typefood ?>
                        aria-selected="false">
                        <img src="./assets/img/mochi.png " class="me-2"
                            style="width: 10%; height: 10%; border-radius: 50%; min-width: 1.375em;">
                        Mochi
                    </button>
                    <?php
                    }
                    ?>

                </div>
            </div>
            <div>
                <h4>Fanpage</h4>
            </div>
        </div>
        <div class="tab-content col-10" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="v-pills-foodtop" role="tabpanel"
                aria-labelledby="v-pills-foodtop-tab">
                <div class="col-2 bg-hotpink h4 py-2 px-2"
                    style="background-color: pink; border-radius: 10%; min-width: 10em;">
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