<?php include("./header.php")?>

    <div class="container-fluid custom-background pb-5" style="min-height:85vh; height: auto; max-height: 90vh;">
        <div class="container py-5">
            <h3 class="pb-4 fw-bold">Thông tin cửa hàng</h3>
        </div>

        <!-- Kết nối database -->
        <?php 
                // b1: kết nối
        include '../config/constants.php';
        // b2: Truy vấn
        $sql = "SELECT * FROM vw_Thongke_Cuahang";
        // gán biến lưu kết quả truy vấn
        $result = mysqli_query($conn, $sql);
        // b3: Phân tích kết quả
        if (mysqli_num_rows($result) > 0){
            $row = mysqli_fetch_assoc($result);
        }

        ?>
        <div class="container">
            <div class="row g2- pb-4 jutstify-content-around">

                <div class="rounded bg-white col-2 offset-md-1">
                    <div class="container pt-3">
                        <h2 class="text-center fw-bold"><?php echo $row['Tongsotaikhoan'];?></h2>
                    </div>
                    <div class="container pt-1">
                        <p class="text-center"><i class="fas fa-user"></i> Tài khoản</p>
                    </div>
                </div>

                <div class="rounded bg-white col-2 offset-md-1">
                    <div class="container pt-3">
                        <h2 class="text-center fw-bold"><?php echo $row['Tongsomonan'];?></h2>
                    </div>
                    <div class="container pt-1">
                        <p class="text-center"><i class="fas fa-utensils"></i> Món ăn</p>
                    </div>
                </div>

                <div class="rounded bg-white col-2 offset-md-1">
                    <div class="container pt-3">
                        <h2 class="text-center fw-bold"><?php echo $row['Tongsonhanvien'];?></h2>
                    </div>
                    <div class="container pt-1">
                        <p class="text-center"><i class="fas fa-users"></i> Nhân viên</p>
                    </div>
                </div>

                <div class="rounded bg-white col-2 offset-md-1">
                    <div class="container pt-3">
                        <h2 class="text-center fw-bold"><?php echo $row['Tongsohoadon'];?></h2>
                    </div>
                    <div class="container pt-1">
                        <p class="text-center"><i class="fas fa-cart-plus"></i> Đơn hàng</p>
                    </div>
                </div>

            </div>
        </div>
        <?php
        // Đóng kết nối database
        mysqli_close($conn);
        ?>
    </div>

    <!-- Start Footer -->
    <?php include("./footer.php") ?>
    <!-- End Footer -->