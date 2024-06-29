<!-- partial:partials/_sidebar.html -->
<nav class="sidebar sidebar-offcanvas" id="sidebar">

    <ul class="nav">

        <!-- Dashboard -->
        <li class="nav-item">
            <a class="nav-link" href="index.php">
                <i class="icon-grid menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>

        <!-- Admin Sidebar -->
        <?php
        if (isset($_SESSION['Admin']) == true) :
            require_once("../backend/cls_select.php");
            $obj = new Get();
            $result_doc  = $obj->document();
        ?>

            <li class="nav-item">
                <a class="nav-link" href="../pages/add_notice.php">
                    <i class="mdi mdi-file-document menu-icon"></i>
                    <span class="menu-title">Assign Notice</span>
                </a>
            </li>

            <!-- <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-Complaint" aria-expanded="false" aria-controls="ui-Complaint">
                    <i class="mdi mdi-eye menu-icon"></i>
                    <span class="menu-title">View Complaint</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-Complaint">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_complaints.php?cat_type=0">Lab Complaint</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_complaints.php?cat_type=1">Class Complaint</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_complaints.php?cat_type=2">Library Complaint</a></li>
                    </ul>
                </div>
            </li> -->

            <!-- Technician -->
            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-technician" aria-expanded="false" aria-controls="ui-technician">
                    <i class="icon-head menu-icon"></i>
                    <span class="menu-title">Technician</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-technician">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="../pages/Add_technician.php">Add Technician</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_technician.php?role=1">View Technician</a></li>
                    </ul>
                </div>
            </li>

            <!-- Student -->
            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-student" aria-expanded="false" aria-controls="ui-student">
                    <i class="mdi mdi-account-multiple-outline menu-icon"></i>
                    <span class="menu-title">Student</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-student">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="../pages/Add_student.php">Add Student</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_student.php?role=2">View Student</a></li>
                    </ul>
                </div>
            </li>

            <!-- Lab -->
            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-lab" aria-expanded="false" aria-controls="ui-lab">
                    <i class="mdi mdi-desktop-mac menu-icon"></i>
                    <span class="menu-title">Lab</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-lab">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="../pages/Add_lab.php">Add Lab</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_lab.php">View Lab</a></li>
                    </ul>
                </div>
            </li>

            <!-- Register Complaint -->
            <!-- <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-doc-process" aria-expanded="false" aria-controls="ui-doc-process">
                    <i class="mdi mdi-comment-alert-outline menu-icon"></i>
                    <span class="menu-title">Document Requests</span>&nbsp;&nbsp;
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-doc-process">
                    <ul class="nav flex-column sub-menu">
                        <?php
                        if ($result_doc->num_rows > 0) :
                            foreach ($result_doc as $row) :
                        ?>

                                <li class="nav-item"> <a class="nav-link" href="../pages/view_doc_request.php?id=<?php echo $row['doc_id']; ?>"><?php echo $row['doc_name']; ?></a></li>
                        <?php
                            endforeach;
                        endif;
                        ?>
                    </ul>
                </div>
            </li> -->

            <!-- <li class="nav-item">
                <a class="nav-link" href="../pages/create_certificate.php">
                    <i class="mdi mdi-file-document menu-icon"></i>
                    <span class="menu-title">Generate Certificate</span>
                </a>
            </li> -->

            <!-- <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-100Activity" aria-expanded="false" aria-controls="ui-100Activity">
                    <i class="mdi mdi-desktop-mac menu-icon"></i>
                    <span class="menu-title">100 Activity point</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-100Activity">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="../pages/ActivityCat.php">Add Categories</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/ViewActivityCerti.php">View 100 Activity</a></li>
                    </ul>
                </div>
            </li>
                                 -->
            <!-- Report -->
            <li class="nav-item">
                <a class="nav-link" href="../pages/report.php">
                    <i class="mdi mdi-file-document menu-icon"></i>
                    <span class="menu-title">Report</span>
                </a>
            </li>

            <!-- Inactive -->
            <li class="nav-item">
                <a class="nav-link" href="../pages/inactive_user.php">
                    <i class="mdi mdi-block-helper menu-icon"></i>
                    <span class="menu-title">Inactive user</span>
                </a>
            </li>





            <!-- <li class="nav-item">
                <a class="nav-link" href="../pages/view_doc_request.php">
                    <i class="mdi mdi-file-document menu-icon"></i>
                    <span class="menu-title">Document Requests</span>
                </a>
            </li> -->




        <?php
        endif;
        ?>

        <!-- Manager Sidebar -->
        <?php
        if (isset($_SESSION['manager']) == true) :
        ?>

            <!-- <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-Complaint" aria-expanded="false" aria-controls="ui-Complaint">
                    <i class="mdi mdi-eye menu-icon"></i>
                    <span class="menu-title">View Complaint</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-Complaint">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_complaints.php?cat_type=0">Lab Complaint</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_complaints.php?cat_type=1">Class Complaint</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_complaints.php?cat_type=2">Library Complaint</a></li>
                    </ul>
                </div>
            </li> -->

            <li class="nav-item">
                <a class="nav-link" href="../pages/report.php">
                    <i class="icon-search menu-icon"></i>
                    <span class="menu-title">Search by</span>
                </a>
            </li>

        <?php
        endif;
        ?>

        <!-- Student Sidebar -->
        <?php
        require_once("../backend/cls_select.php");
        $obj = new Get();
        $result_doc  = $obj->document();
        if (isset($_SESSION['student']) == true) :
        ?>
            <!-- Register Complaint
            <li class="nav-item">
                <a class="nav-link" href="../pages/register_complaints.php">
                    <i class="mdi mdi-comment-alert-outline menu-icon"></i>
                    <span class="menu-title">Register Complaint</span>
                </a>
            </li> -->

            <!-- Register Complaint -->
            <!-- <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-regi-complaint" aria-expanded="false" aria-controls="ui-regi-complaint">
                    <i class="mdi mdi-comment-alert-outline menu-icon"></i>
                    <span class="menu-title">Register Complaint</span>&nbsp;&nbsp;
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-regi-complaint">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="../pages/register_complaints.php?cat_type=0">Lab Complaint</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/register_complaints.php?cat_type=1">Class Complaint</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/register_complaints.php?cat_type=2">Library Complaint</a></li>
                    </ul>
                </div>
            </li> -->

            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-Complaint" aria-expanded="false" aria-controls="ui-Complaint">
                    <i class="mdi mdi-eye menu-icon"></i>
                    <span class="menu-title">View Complaint</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-Complaint">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_complaints.php?cat_type=0">Lab Complaint</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_complaints.php?cat_type=1">Class Complaint</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_complaints.php?cat_type=2">Library Complaint</a></li>
                        <!-- <li class="nav-item"> <a class="nav-link" href="../pages/view_complaints.php?cat_type=3">Campus Complaint</a></li> -->
                    </ul>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-doc-process" aria-expanded="false" aria-controls="ui-doc-process">
                    <i class="mdi mdi-comment-alert-outline menu-icon"></i>
                    <span class="menu-title">Request Document</span>&nbsp;&nbsp;
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-doc-process">
                    <ul class="nav flex-column sub-menu">
                        <?php
                        if ($result_doc->num_rows > 0) :
                            foreach ($result_doc as $row) :
                        ?>

                                <li class="nav-item"> <a class="nav-link" href="../pages/apply_document.php?id=<?php echo $row['doc_id']; ?>"><?php echo $row['doc_name']; ?></a></li>
                                <!-- <li class="nav-item"> <a class="nav-link" href="../pages/apply_document.php">Apply</a></li> -->
                        <?php
                            endforeach;
                        endif;
                        ?>
                        <li class="nav-item"> <a class="nav-link" href="../pages/view_doc_request.php">View Document</a></li>
                        <!-- <li class="nav-item"> <a class="nav-link" href="../pages/register_complaints.php?cat_type=3">Infrastucture Complaint</a></li> -->
                    </ul>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="../pages/create_certificate.php">
                    <i class="mdi mdi-file-document menu-icon"></i>
                    <span class="menu-title">My Certificates</span>
                </a>
            </li>

            <!-- <li class="nav-item">
                <a class="nav-link" href="../pages/activityCerti.php">
                    <i class="mdi mdi-file-document menu-icon"></i>
                    <span class="menu-title">100 Point Activity</span>
                </a>
            </li> -->

            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-100-acitivty" aria-expanded="false" aria-controls="ui-100-acitivty">
                    <i class="mdi mdi-comment-alert-outline menu-icon"></i>
                    <span class="menu-title">100 Point Activity</span>&nbsp;&nbsp;
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-100-acitivty">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="../pages/activityCerti.php">Add Certificate</a></li>
                        <li class="nav-item"> <a class="nav-link" href="../pages/ViewActivityCerti.php">View Certificate</a></li>
                    </ul>
                </div>
            </li>



        <?php
        endif;
        ?>

        <?php
        if (isset($_SESSION['faculty']) == true) :
        ?>

            <li class="nav-item">
                <a class="nav-link" href="../pages/view_doc_request.php">
                    <i class="mdi mdi-file-document menu-icon"></i>
                    <span class="menu-title">Document Requests</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="../pages/add_notice.php">
                    <i class="mdi mdi-file-document menu-icon"></i>
                    <span class="menu-title">Assign Notice</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="../pages/ViewActivityCerti.php">
                    <i class="mdi mdi-file-document menu-icon"></i>
                    <span class="menu-title">100 Activity point</span>
                </a>
            </li>


        <?php
        endif;
        ?>

        <?php
        if (isset($_SESSION['department']) == true) :
        ?>

            <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#ui-doc-process" aria-expanded="false" aria-controls="ui-doc-process">
                    <i class="mdi mdi-comment-alert-outline menu-icon"></i>
                    <span class="menu-title">Document Requests</span>&nbsp;&nbsp;
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-doc-process">
                    <ul class="nav flex-column sub-menu">
                        <?php
                        if ($result_doc->num_rows > 0) :
                            foreach ($result_doc as $row) :
                        ?>

                                <li class="nav-item"> <a class="nav-link" href="../pages/view_doc_request.php?id=<?php echo $row['doc_id']; ?>"><?php echo $row['doc_name']; ?></a></li>
                                <!-- <li class="nav-item"> <a class="nav-link" href="../pages/apply_document.php">Apply</a></li> -->
                        <?php
                            endforeach;
                        endif;
                        ?>
                        <!-- <li class="nav-item"> <a class="nav-link" href="../pages/register_complaints.php?cat_type=3">Infrastucture Complaint</a></li> -->
                    </ul>
                </div>
            </li>



        <?php
        endif;
        ?>

        <?php
        if (isset($_SESSION['aditya']) == true) :
        ?>

            <li class="nav-item">
                <a class="nav-link" href="../pages/view_doc_request.php">
                    <i class="mdi mdi-file-document menu-icon"></i>
                    <span class="menu-title">Document Requests</span>
                </a>
            </li>
        <?php
        endif;
        ?>


        <!-- About Us -->
        <li class="nav-item">
            <a class="nav-link" href="../pages/aboutus.php">
                <i class="mdi mdi-information-outline menu-icon"></i>
                <span class="menu-title">About Us</span>
            </a>
        </li>

    </ul>
</nav>