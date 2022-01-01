<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <!-- Start Nav -->
    <nav class="navbar navbar-expand-lg navbar-light border-bottom border-1 border-dark">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="admin-home.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="admin-admin.php">Admin</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="admin-category.php">Category</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="admin-food.php">Food</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="admin-order.php">Order</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link custom-color fw-bold" href="#">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Nav -->


    <!-- Start Main -->
    <div class="container-fluid custom-background">
        <div class="container pb-5">
            <h3 class="pt-5 pb-4 fw-bold">Manage Food</h3>

            <button type="button" class="btn btn-primary">Add Food</button>
        </div>
        <!-- 
        <div class="container">
            <div class="row g-1 pb-4 justify-content-start">
                <div class="col-1">
                    <div class="border-bottom border-dark fw-bold">S.N.</div>
                </div>
                <div class="col-3">
                    <div class="border-bottom border-dark fw-bold">Title</div>
                </div>
                <div class="col-1">
                    <div class="border-bottom border-dark fw-bold">Price</div>
                </div>
                <div class="col-2">
                    <div class="border-bottom border-dark fw-bold">Image</div>
                </div>
                <div class="col-1">
                    <div class="border-bottom border-dark fw-bold">Featured</div>
                </div>
                <div class="col-1">
                    <div class="border-bottom border-dark fw-bold">Active</div>
                </div>
                <div class="col-3">
                    <div class="border-bottom border-dark fw-bold">Actions</div>
                </div>
            </div>

            <div class="row g-2  justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">1.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Dumplings Specials</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$5.00</div>
                </div>
                <div class="col-2">
                    <div class="">
                        <a href="">
                            <img src="../images/menu-momo.jpg" alt="momo">
                        </a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2 justifield justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">2.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Best Burger</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$4.00</div>
                </div>
                <div class="col-2">
                    <div class=" ">
                        <a href="">
                            <img src="../images/menu-burger.jpg" alt="burger">
                        </a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2 justifield justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">3.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Smoky BBQ Pizza</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$6.00</div>
                </div>
                <div class="col-2">
                    <div class=" ">
                        <a href="">
                            <img src="../images/menu-pizza.jpg" alt="pizza">
                        </a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2 justifield justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">4.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Sadeko Momo</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$6.00</div>
                </div>
                <div class="col-2">
                    <div class="">
                        <a href="">
                            <img src="../images/menu-momo.jpg" alt="momo">
                        </a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2 justifield justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">5.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Mixed Pizza</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$10.00</div>
                </div>
                <div class="col-2">
                    <div class=" ">
                        <a href="">
                            <img src="../images/menu-pizza.jpg" alt="pizza">
                        </a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2 justifield justify-content-start pb-4">
                <div class="col-1 pt-4">
                    <div class="">6.</div>
                </div>
                <div class="col-3 pt-4">
                    <div class=" ">Sed ipsum cilum in</div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">$52.00</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">
                        <a href="#">Image Not Added</a>
                    </div>
                </div>
                <div class="col-1 pt-4">
                    <div class=" ">Yes</div>
                </div>
                <div class="col-1 pt-4">
                    <div class="">Yes</div>
                </div>
                <div class="col-3 pt-3">
                    <div class="">
                        <div class="row g-2 justify-content-start ">
                            <div class="col-5">
                                <button type="button" class="btn btn-success text-dark fw-bold">Update Food</button>
                            </div>
                            <div class="col-5">
                                <button type="button" class="btn btn-danger fw-bold">Delete Food</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">S.N</th>
                        <th scope="col">Title</th>
                        <th scope="col">Price</th>
                        <th scope="col">Image</th>
                        <th scope="col">Feature</th>
                        <th scope="col">Active</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="align-middle">
                        <th scope="row">1</th>
                        <td>Dumplings Specials</td>
                        <td>$5.00</td>
                        <td><a href="#"><img src="../images/menu-momo.jpg" class="img-custom" alt=""></a></td>
                        <td>Yes</td>
                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Update Food</button>
                            <button type="button" class="btn btn-danger">Delete Food</button>
                        </td>
                    </tr>
                    <tr class="align-middle">
                        <th scope="row">2</th>
                        <td>Best Burger</td>
                        <td>$4.00</td>
                        <td><a href="#"><img src="../images/menu-burger.jpg" class="img-custom" alt=""></a></td>
                        <td>Yes</td>
                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Update Food</button>
                            <button type="button" class="btn btn-danger">Delete Food</button>
                        </td>
                    </tr>
                    <tr class="align-middle">
                        <th scope="row">3</th>
                        <td>Smokey BBQ Pizza</td>
                        <td>$6.00</td>
                        <td><a href="#"><img src="../images/menu-pizza.jpg" class="img-custom" alt=""></a></td>
                        <td>No</td>
                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Update Food</button>
                            <button type="button" class="btn btn-danger">Delete Food</button>
                        </td>
                    </tr>
                    <tr class="align-middle">
                        <th scope="row">4</th>
                        <td>Sadeko Momo</td>
                        <td>$6.00</td>
                        <td><a href="#"><img src="../images/menu-momo.jpg" class="img-custom" alt=""></a></td>
                        <td>Yes</td>
                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Update Food</button>
                            <button type="button" class="btn btn-danger">Delete Food</button>
                        </td>
                    </tr>
                    <tr class="align-middle">
                        <th scope="row">5</th>
                        <td>Mixed Pizza</td>
                        <td>$10.00</td>
                        <td><a href="#"><img src="../images/menu-pizza.jpg" class="img-custom" alt=""></a></td>
                        <td>Yes</td>
                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Update Food</button>
                            <button type="button" class="btn btn-danger">Delete Food</button>
                        </td>
                    </tr>
                    <tr class="align-middle">
                        <th scope="row">6</th>
                        <td>Sed ipsum cillum in</td>
                        <td>$52.00</td>
                        <td><a href="#">Image not Added</a></td>
                        <td>Yes</td>
                        <td>Yes</td>
                        <td>
                            <button type="button" class="btn btn-success">Update Food</button>
                            <button type="button" class="btn btn-danger">Delete Food</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <!-- End Main -->

    <!-- Start Footer -->
    <div class="footer">
        <div class="container">
            <p class="text-center pt-3 pb-3">2020 All rights reserved. Food House. Developed By <a href="#">CSE.TLU</a>
            </p>
        </div>
    </div>
    <!-- End Footer -->
</body>

</html>