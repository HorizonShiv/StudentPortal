<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>C.C.&nbsp;
        <?php
        session_start();

            if (isset($_SESSION['Admin']) == true) {
                echo $_SESSION['Admin_name'];
            } elseif (isset($_SESSION['manager']) == true) {
                echo $_SESSION['manager_name'];
            } elseif (isset($_SESSION['student']) == true) {
                echo $_SESSION['student_name'];
            }elseif (isset($_SESSION['faculty']) == true) {
                echo $_SESSION['faculty_name'];
            }elseif (isset($_SESSION['department']) == true) {
                echo $_SESSION['department_name'];
            }
        ?>
    </title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../vendors/feather/feather.css">
    <link rel="stylesheet" href="../vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="../vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="../js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="../css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="../images/SALFAV.png" />
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../css/custom.css">



    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@40,700,1,200" />

    <!-- Jquery Data table -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>

    <script type="text/javascript">

    </script>

    <style>
        .sidebar{
            width: 250px;
        }
        #aboutlnk{
            text-decoration: none;
            color: white;
        }
        .actionBtn{
            color: #FF4747;
            font-size: 20px;
            text-decoration: none;
            
        }
        .actionBtn:hover{
            opacity: 1;
            color: #ff2121;
        }

        .actionBtnPrimary{
            color: #4C4AA8;
            font-size: 20px;
            text-decoration: none;
            transform: translate(-50%,0%);
        }
        .actionBtnNotice{
            font-size: 20px;
        }
        .nav-link{
            width: 100%;
        }
        .sidebar .nav.sub-menu{
            width: 250px;
            padding-left: 15%;
        }
        .tdDescription{
            white-space: pre-wrap;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
            width: 40%;
            border-radius: 10px;
        }

        .card img{
            border-radius: 10px 10px 00px 0px;
        }

        .card:hover {
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
        }

        .container {
            padding: 16px 16px;
        }
    </style>

</head>

<body>
    <?php
    

    if (isset($_SESSION['success_login']) != TRUE) {
        header('Location:login.php');
    }
    ?>
    <div class="container-scroller">
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                <a class="navbar-brand brand-logo mr-5" href="../pages/index.php"><img src="../images/SALFAV.png" class="mr-2" alt="logo" /></a>
                <a class="navbar-brand brand-logo-mini" href="../pages/index.php"><img src="../images/SALFAV.png" alt="logo" /></a>
            </div>
            <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                    <span class="icon-menu"></span>
                </button>
                <!-- <ul class="navbar-nav mr-lg-2">
                    <li class="nav-item nav-search d-none d-lg-block">
                        <div class="input-group">
                            <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                                <span class="input-group-text" id="search">
                                    <i class="icon-search"></i>
                                </span>
                            </div>
                            <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search">
                        </div>
                    </li>
                </ul> -->
                <ul class="navbar-nav navbar-nav-right">
                    <li class="nav-item mr-1">
                        <span class="text-capitalize theme-color">
                        <?php
                            if (isset($_SESSION['Admin']) == true) {
                                echo $_SESSION['Admin_name'];
                            } elseif (isset($_SESSION['manager']) == true) {
                                echo $_SESSION['manager_name'];
                            } elseif (isset($_SESSION['student']) == true) {
                                echo $_SESSION['student_name'];
                            }elseif (isset($_SESSION['faculty']) == true) {
                                echo $_SESSION['faculty_name'];
                            }elseif (isset($_SESSION['department']) == true) {
                                echo $_SESSION['department_name'];
                            }elseif (isset($_SESSION['aditya']) == true) {
                                echo $_SESSION['aditya_name'];
                            }
                        ?>
                        </span>
                    </li>
                    <li class="nav-item nav-profile dropdown">

                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                            <!-- <span class="material-symbols-outlined">
                                account_circle
                            </span> -->
                            <?php  if ($_SESSION['profile']==NULL): ?>
                            <img src="../images/faces/user.svg" alt="Profile" class="theme-color" />
                            <?php endif;?>

                            <?php  if (isset($_SESSION['profile'])==true): ?>
                            <img src="../images/faces/<?php echo $_SESSION['profile']; ?>" alt="Profile" class="theme-color" />
                            <?php endif;?>
                            <i class="mdi mdi-apple-keyboard-control"></i>

                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                            <a class="dropdown-item" href="../pages/profile.php">
                                <i class="mdi mdi-account-settings text-primary"></i>
                                Profile
                            </a>
                            <a class="dropdown-item" href="../pages/Change_password.php">
                                <i class="mdi mdi-fingerprint text-primary"></i>
                                Change Password
                            </a>
                            <a class="dropdown-item" href="../pages/logout.php">
                                <i class="ti-power-off text-primary"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                </ul>
                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                    <span class="icon-menu"></span>
                </button>
            </div>
        </nav>

        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:partials/_settings-panel.html -->
            <div class="theme-setting-wrapper">
                <div id="settings-trigger"><i class="ti-settings"></i></div>
                <div id="theme-settings" class="settings-panel">
                    <i class="settings-close ti-close"></i>
                    <p class="settings-heading">SIDEBAR SKINS</p>
                    <div class="sidebar-bg-options selected" id="sidebar-light-theme">
                        <div class="img-ss rounded-circle bg-light border mr-3"></div>Light
                    </div>
                    <div class="sidebar-bg-options" id="sidebar-dark-theme">
                        <div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark
                    </div>
                    <p class="settings-heading mt-2">HEADER SKINS</p>
                    <div class="color-tiles mx-0 px-4">
                        <div class="tiles success"></div>
                        <div class="tiles warning"></div>
                        <div class="tiles danger"></div>
                        <div class="tiles info"></div>
                        <div class="tiles dark"></div>
                        <div class="tiles default"></div>
                    </div>
                </div>
            </div>