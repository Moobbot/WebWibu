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
    <div class="container-fluid custom-background pb-5">
        <div class="container">
            <h3 class="pt-5 pb-4 fw-bold">Manage Order</h3>
        </div>
        <div class="container">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">S.N</th>
                        <th scope="col">Food</th>
                        <th scope="col">Price</th>
                        <th scope="col">Qty.</th>
                        <th scope="col">Total</th>
                        <th scope="col">Order Date</th>
                        <th scope="col">Status</th>
                        <th scope="col">Customer Name</th>
                        <th scope="col">Contact</th>
                        <th scope="col">Email</th>
                        <th scope="col">Address</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="align-middle">
                        <th scope="row">1</th>
                        <td>Mixed Pizza</td>
                        <td>10.00</td>
                        <td>2</td>
                        <td>20.00</td>
                        <td>2020-11-30 04:07:17</td>
                        <td class="text-success">Delivered</td>
                        <td>Jana Bush</td>
                        <td>+1(562)101-2028</td>
                        <td>tydujy@mailnator.com</td>
                        <td>Minima iure ducimus</td>
                        <td class="bg-success">Update Order</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr class="align-middle">
                        <th scope="row">2</th>
                        <td>Best Burger</td>
                        <td>4.00</td>
                        <td>4</td>
                        <td>16.00</td>
                        <td>2020-11-30 04:07:17</td>
                        <td class="text-success">Delivered</td>
                        <td>Kelly Dillard</td>
                        <td>+1(562)101-2028</td>
                        <td>fexekihor@mailnator.com</td>
                        <td>Incidunt ipsum ad d</td>
                        <td class="bg-success">Update Order</td>
                    </tr>
                </tbody>
                <tbody>
                    <tr class="align-middle">
                        <th scope="row">3</th>
                        <td>Sadeko Momo</td>
                        <td>6.00</td>
                        <td>3</td>
                        <td>18.00</td>
                        <td>2020-11-30 04:07:17</td>
                        <td class="text-danger">Cancelled</td>
                        <td>Bradley Farrell</td>
                        <td>+1(562)101-2028</td>
                        <td>tydujy@mailnator.com</td>
                        <td>Minima iure ducimus</td>
                        <td class="bg-success">Update Order</td>
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