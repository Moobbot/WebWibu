<section class="container vh-100 pt-5">
    <div class="row d-flex justify-content-xl-around mx-auto">
        <?php
// b1: kết nốt csdl
include './config/constants.php';
$sql = "SELECT * FROM monan";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){
        ?>
        <div class="col-xl-3 col-lg-4 col-md-6 px-2 py-2">
            <div class="card text-center" style="width: 16.25em;">
                <img src="<?php echo $row['Hinhanh']; ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?php echo $row['Tenmonan']; ?></h5>
                    <p class="card-text"><?php echo $row['Giathanhpham']; ?></p>
                    <a href="#" class="btn btn-primary">Chi tiết</a>
                </div>
            </div>
        </div>
        <?php
            }
        }
        mysqli_close($conn);
        ?>
    </div>
</section>