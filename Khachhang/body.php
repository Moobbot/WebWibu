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
<section class="container-fluid bg-me d-flex" style="min-height: 100vh;">
    <!-- <div class="row"> -->
    <!-- //* Danh mục món -->
    <div class="d-flex align-items-start mt-2">
        <div class="col-lg-1 col-2" style="min-width: 208px;">
            <div class="d-flex flex-column border border-dark border-3 bg-wood mt-3" style="border-radius: 15%;">
                <!-- //*Điều hướng -->
                <a class="h4 text-dark text-decoration-none mt-2 ps-2" href="./">
                    <i class="fas fa-bars px-2"></i> Danh mục
                </a>
                <!-- //* Loại món ăn -->
                <ul class=" nav nav-pills mb-2 align-items-center" id="pills-tab" role="tablist">
                    <?php
                    //* B1: Gọi config
                    include './config/constants.php';
                    //* B2: Truy vấn và lưu kết quả
                    $sql =  "SELECT Tenloai FROM LOAI";
                    $result = mysqli_query($conn, $sql);
                    //* B3: Phân tích sử lý kết quả
                    if (mysqli_num_rows($result) > 0) :
                        $i = 1;
                        while ($row = mysqli_fetch_assoc($result)) :
                            $typefood = "v-pills-typefood" . (string)$i;
                    ?>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link text-start ps-5 text-black h5" id=<?= $typefood . "-tab" ?>
                            data-bs-toggle="pill" data-bs-target=<?= "#" . $typefood ?> type="button" role="tab"
                            aria-controls=<?= $typefood ?> aria-selected="false">
                            <img src="./assets/img/mochi.png" class="me-2"
                                style="width: 10%; height: 10%; border-radius: 50%; min-width: 1.375em;">
                            <?= $row['Tenloai']; ?>
                        </button>
                    </li>
                    <?php
                            // }
                            $i += 1;
                        endwhile;
                    endif;
                    ?>
                </ul>
            </div>
            <!-- Trang FB của cửa hàng -->
            <div class="my-3 border border-dark border-3 pb-3" style="border-radius: 8%;">
                <a href="https://www.facebook.com/dongotvatrangmieng" class="text-decoration-none">
                    <div class="ps-2 pt-2 h4 text-dark">
                        <i class="fas fa-bars px-2"></i> Fanpage
                    </div>
                </a>
                <div class="fb-page" data-href="https://www.facebook.com/dongotvatrangmieng" data-tabs="timeline"
                    data-width="202" data-height="350" data-small-header="false" data-adapt-container-width="true"
                    data-hide-cover="false" data-show-facepile="true">
                    <blockquote cite="https://www.facebook.com/dongotvatrangmieng" class="fb-xfbml-parse-ignore">
                        <a href="https://www.facebook.com/dongotvatrangmieng">Đồ ngọt - Món tráng miệng</a>
                    </blockquote>
                </div>
            </div>
        </div>
        <div class="tab-content col ps-lg-5" id="v-pills-tabContent">
            <!-- Menu món ăn -->
            <div class="tab-pane fade show active" id="v-pills-foodtop" role="tabpanel"
                aria-labelledby="v-pills-foodtop-tab">
                <div class="col-2 bg-hotpink h3 py-2 px-2 border-bottom border-dark border-3 w-100">
                    MENU
                </div>
                <?php include("./Khachhang/cacmonan.php") ?>
            </div>

            <!-- Trang loại món ăn -->
            <?php
            $sql =  "SELECT Tenloai FROM LOAI";
            $result = mysqli_query($conn, $sql);
            //* B3: Phân tích sử lý kết quả
            if (mysqli_num_rows($result) > 0) :
                $i = 1;
                while ($row = mysqli_fetch_assoc($result)) :
                    $typefood = "v-pills-typefood" . (string)$i;
            ?>
            <div class="tab-pane fade" id=<?= $typefood ?> role="tabpanel" aria-labelledby=<?= $typefood . "-tab" ?>>
                <img src="./assets/img/mochi.png " class="me-2" style="width: 10%; height: 10%; border-radius: 50%;">
                <h3 class="text-center">Danh sách các món thuộc loại <?= $row['Tenloai']; ?></h3>
            </div>
            <?php
                    $i += 1;
                endwhile;
            endif;
            //* B4: đóng kết nối
            mysqli_close($conn);
            ?>
        </div>
    </div>
    <!-- </div> -->
</section>