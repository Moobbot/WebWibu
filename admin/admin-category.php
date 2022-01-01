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
        <div class="container">
            <h3 class="pt-5 pb-4 fw-bold">Manage Category</h3>

            <button type="button" class="btn btn-primary">Add User</button>


            <div class="container pt-5">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">S.N</th>
                            <th scope="col">Title</th>
                            <th scope="col">Image</th>
                            <th scope="col">Feature</th>
                            <th scope="col">Active</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="align-middle">
                            <th scope="row">1</th>
                            <td>Pizza</td>
                            <td><a href="#"><img src="../images/pizza.jpg" class="img-custom1" alt=""></a></td>
                            <td>Yes</td>
                            <td>Yes</td>
                            <td>
                                <button type="button" class="btn btn-success">Update Category</button>
                                <button type="button" class="btn btn-danger">Delete Category</button>
                            </td>
                        </tr>
                        <tr class="align-middle">
                            <th scope="row">1</th>
                            <td>Burger</td>
                            <td><a href="#"><img src="../images/burger.jpg" class="img-custom1" alt=""></a></td>
                            <td>Yes</td>
                            <td>Yes</td>
                            <td>
                                <button type="button" class="btn btn-success">Update Category</button>
                                <button type="button" class="btn btn-danger">Delete Category</button>
                            </td>
                        </tr>
                        <tr class="align-middle">
                            <th scope="row">1</th>
                            <td>Momo</td>
                            <td><a href="#"><img src="../images/momo.jpg" class="img-custom1" alt=""></a></td>
                            <td>Yes</td>
                            <td>Yes</td>
                            <td>
                                <button type="button" class="btn btn-success">Update Category</button>
                                <button type="button" class="btn btn-danger">Delete Category</button>
                            </td>
                        </tr>
                        <tr class="align-middle">
                            <th scope="row">1</th>
                            <td>Quia est ipsum id id</td>
                            <td><a href="#"><img src="https://i.ytimg.com/vi/ZBgTzx46B8s/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAa0nHwe2IPTnNom6wXgyL1jrbn_g" class="img-custom1" alt=""></a></td>
                            <td>No</td>
                            <td>Yes</td>
                            <td>
                                <button type="button" class="btn btn-success">Update Category</button>
                                <button type="button" class="btn btn-danger">Delete Category</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

</body>

</html>