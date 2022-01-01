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

    <!-- Start Menu Admin -->
    <div class="container-fluid custom-background">
        <div class="container pb-5">
            <h3 class="pt-5 pb-4 fw-bold">Manage Users</h3>

            <button type="button" class="btn btn-primary">Add User</button>

        </div>

        <div class="container">
            <!-- <div class="row g-1 ">
                <div class="col-1">
                    <div class="border-bottom border-dark fw-bold">S.N.</div>
                </div>
                <div class="col-2">
                    <div class="border-bottom border-dark fw-bold">Full Name</div>
                </div>
                <div class="col-2">
                    <div class="border-bottom border-dark fw-bold">Username</div>
                </div>
                <div class="col-6">
                    <div class="border-bottom border-dark fw-bold">Actions</div>
                </div>
            </div>

            <div class="row g-2  justify-content-start pb-2">
                <div class="col-1 pt-4">
                    <div class="">1.</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">Arsenio Leach</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">toduwaxobi</div>
                </div>
                <div class="col-6 pt-3">
                    <div class="">
                        <div class="row g-1">
                                <div class="col-3">
                                    <button class="custom-button1">Change Password</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button2">Update Admin</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button3">Delete Admin</button>
                                </div>

                                <div class="col-3">

                                </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2  justify-content-start pb-2">
                <div class="col-1 pt-4">
                    <div class="">2.</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">Sasha Mendez</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">goxemyde</div>
                </div>
                <div class="col-6 pt-3">
                    <div class="">
                        <div class="row g-1">
                                <div class="col-3">
                                    <button class="custom-button1">Change Password</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button2">Update Admin</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button3">Delete Admin</button>
                                </div>

                                <div class="col-3">

                                </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2  justify-content-start pb-2">
                <div class="col-1 pt-4">
                    <div class="">3.</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">Vijay Thapa</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">vijaythapa</div>
                </div>
                <div class="col-6 pt-3">
                    <div class="">
                        <div class="row g-1">
                                <div class="col-3">
                                    <button class="custom-button1">Change Password</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button2">Update Admin</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button3">Delete Admin</button>
                                </div>

                                <div class="col-3">

                                </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row g-2  justify-content-start pb-2">
                <div class="col-1 pt-4">
                    <div class="">4.</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">Adminstrator</div>
                </div>
                <div class="col-2 pt-4">
                    <div class=" ">admin</div>
                </div>
                <div class="col-6 pt-3">
                    <div class="">
                        <div class="row g-1">
                                <div class="col-3">
                                    <button class="custom-button1">Change Password</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button2">Update Admin</button>
                                </div>

                                <div class="col-3">
                                    <button class="custom-button3">Delete Admin</button>
                                </div>

                                <div class="col-3">

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
                            <th scope="col">Full Name</th>
                            <th scope="col">Username</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="align-middle">
                            <th scope="row">1</th>
                            <td>Arsenio Leach</td>
                            <td>toduwaxobi</td>
                            <td>
                                <button type="button" class="btn btn-primary">Change Password</button>
                                <button type="button" class="btn btn-success">Update Admin</button>
                                <button type="button" class="btn btn-danger">Delete Admin</button>
                            </td>
                        </tr>
                        <tr class="align-middle">
                            <th scope="row">2</th>
                            <td>Sasha Mendez</td>
                            <td>goxemyde</td>
                            <td>
                                <button type="button" class="btn btn-primary">Change Password</button>
                                <button type="button" class="btn btn-success">Update Admin</button>
                                <button type="button" class="btn btn-danger">Delete Admin</button>
                            </td>
                        </tr>
                        <tr class="align-middle">
                            <th scope="row">3</th>
                            <td>Vijay Thapa</td>
                            <td>vijaythapa</td>
                            <td>
                                <button type="button" class="btn btn-primary">Change Password</button>
                                <button type="button" class="btn btn-success">Update Admin</button>
                                <button type="button" class="btn btn-danger">Delete Admin</button>
                            </td>
                        </tr>
                        <tr class="align-middle">
                            <th scope="row">4</th>
                            <td>Adminisator</td>
                            <td>admin</td>
                            <td>
                                <button type="button" class="btn btn-primary">Change Password</button>
                                <button type="button" class="btn btn-success">Update Admin</button>
                                <button type="button" class="btn btn-danger">Delete Admin</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>


        </div>
        <!-- End Admin Menu -->
</body>

</html>