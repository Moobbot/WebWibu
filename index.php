<?php include('./reuse/header.php') ?>

<body>
    <?php include("./Khachhang/menu.php") ?>
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
            <?php include('./Khachhang/body.php') ?>
        </div>
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
            <h2 class="text-center py-3">Top những món ăn nổi bật nhất</h2>
            <?php include('./Khachhang/foodtop.php') ?>
        </div>
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
            <?php include('./Khachhang/listfood.php') ?>
        </div>
    </div>
</body>

<?php include('./reuse/footer.php') ?>