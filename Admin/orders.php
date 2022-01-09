<?php include 'header.php' ?>

<body>
    <!-- Start Main -->
    <div class="container-fluid custom-background pb-5">
        <div class="container">
            <h3 class="pt-5 pb-4 fw-bold">Quản lý đơn hàng</h3>
        </div>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col-1">Số hóa đơn</th>
                        <th scope="col-1">Mã khách hàng</th>
                        <th scope="col-1">Số món</th>
                        <th scope="col-1">Số lượng</th>
                        <th scope="col-2">Tổng tiền gốc</th>
                        <th scope="col-1">Tổng tiền giảm</th>
                        <th scope="col-2">Thành tiền</th>
                        <th scope="col-1">Thời gian đặt đơn</th>
                        <th scope="col-1">Thời gian </br>hẹn giao</th>
                        <th scope="col-1">Thời gian giao đơn</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- b1: Kết nối database -->
                    <?php
                        include '../config/constants.php';
                        // b2: Truy vấn sql
                        $sql = "SELECT * FROM vw_Donhang_Thongke";
                        // Lưu kết quả
                        $result = mysqli_query($conn, $sql);
                        if(mysqli_num_rows($result) > 0)
                        {
                            while ($row = mysqli_fetch_assoc($result)) {
                    ?>
                    <tr class="align-middle">
                        <th ><?php echo $row['Sohoadon'];?></th>
                        <td class="text-center"><?php echo $row['Makhachhang'];?></td>
                        <td class="text-end col-1"><?php echo $row['Somon'];?></td>
                        <td class="text-end col-1"><?php echo $row['Soluong'];?></td>
                        <td class="text-end col-1"><?php echo $row['Tongtiengoc'];?></td>
                        <td class="text-end col-1"><?php echo $row['Tongtiengiam'];?></td>
                        <td class="text-end col-1" ><?php echo $row['Thanhtien'];?></td>
                        <td class="text-end col-2"><?php echo $row['Thoigiandatdon'];?></td>
                        <td class="text-end col-2"><?php echo $row['Thoigianhengiao'];?></td>
                        <td class="text-end col-2" ><?php echo $row['Thoigiangiaodon'];?></td>
                    </tr>
                    <?php
                     }
                    }
                    // b4: đóng kết nối
                    mysqli_close($conn);
                    ?>
                </tbody>
            </table>
        </div>
    </div>
    <!-- End Main -->

    <!-- Start Footer -->
    <?php include("./footer.php") ?>
    <!-- End Footer -->

</body>

</html>