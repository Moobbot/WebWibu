<!-- Lỗi chưa sửa -->




















<div class="container-fluid">
    <div class="row col-md-11 d-flex justify-content-between mx-auto">
        <?php
        //* B1: Gọi config
        // include './config/constants.php';
        //* B2: Truy vấn và lưu kết quả
        $sql =  "SELECT Mamonan, Tenmonan, Hinhanh, Giathanhpham FROM MONAN";
        $result = mysqli_query($conn, $sql);
         //* B3: Phân tích sử lý kết quả
        if (mysqli_num_rows($result) > 0) :
            $i = 1;
            while ($row = mysqli_fetch_assoc($result)) :
            $chitietmonan = "v-pills-chitietmonan" . (string)$row['Mamonan'];
        ?>
        <div class="col-xl-3 col-lg-4 col-md-6 px-2 py-2 d-flex justify-content-evenly">
            <div class="card text-center" style="width: 16em; max-height: 19.44em;">
                <!-- 2:3.24 -->
                <!-- <img src="./assets/img/food</= $i ?>.jpg" class="card-img-top img-fluid" alt="..." -->
                <img src="<?= $row['Hinhanh']; ?>" class="card-img-top img-fluid" alt="<?= $row['Tenmonan']; ?>"

                    style="min-height: 8.5em; height: auto; max-height: 8.875em;">
                <div class="card-body">
                    <h5 class="card-title"><?= $row['Giathanhpham']; ?>VND</h5>
                    <p class="card-text"><?= $row['Tenmonan']; ?></p>
                    <!-- <a href="./Khachhang/chitietmonan.php" class="btn btn-primary">Chi tiết</a> -->
                    <ul class="nav nav-pills d-flex justify-content-center" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link btn btn-primary text-white" id=<?= $chitietmonan . "-tab" ?>
                                data-bs-toggle="pill" data-bs-target=<?= "#" . $chitietmonan ?> type="button" role="tab"
                                aria-controls=<?= $chitietmonan ?> aria-selected="false"
                                style="background-color: #0d6efd;">Chi tiết</button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <?php
            $i += 1;
            endwhile;
        endif;
        ?>
    </div>
</div>