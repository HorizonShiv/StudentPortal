<!-- INCLUDE HEADER -->
<?php include '../inc/header.php'; ?>

<!-- INCLUDE SIDEBAR -->
<?php include '../inc/sidebar.php'; ?>

<?php require_once("../backend/cls_select.php"); ?>

<div class="main-panel">
    <div class="content-wrapper">

        <?php if (isset($_SESSION['Admin']) == true) :?>

        <?php 
            if(isset($_SESSION['certiGen'])){
                echo "<script>alert('Generated');</script>";
                unset($_SESSION['certiGen']);
            }    
        ?>
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Add Certificate</h4>
                        <p class="card-description">
                            Upload jpg/png and X & Y coordinates<br>
                        </p>

                        <form class="forms-sample" method="post" action="../backend/DB_insert.php" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label>File upload</label>
                                        <input type="file" name="document_certi" class="file-upload-default" required>
                                        <div class="input-group col-xs-12">
                                            <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Document">
                                            <span class="input-group-append">
                                                <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-2">
                                    <div class="form-group">
                                        <label for="pc_no">Certificate Name</label>
                                        <input type="text"  class="form-control" name="Certi_name" id="cat_type" placeholder="">
                                    </div>
                                </div>

                                <div class="col-2">
                                    <div class="form-group">
                                        <label for="pc_no">X Co-ordinates</label>
                                        <input type="number"  class="form-control" name="x_co" id="cat_type" placeholder="">
                                    </div>
                                </div>

                                <div class="col-2">
                                    <div class="form-group">
                                        <label for="pc_no">Y Co-ordinates</label>
                                        <input type="number"  class="form-control" name="y_co" id="cat_type" placeholder="">
                                    </div>
                                </div>

                            </div>


                            <!-- Submit Button-->
                            <button type="submit" class="btn btn-primary mr-2" name="add_certificate">Submit</button>
                            <button type="reset" class="btn btn-light">Reset</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>



        <div class="row">
          <div class="col-md-12 grid-margin">
            <div class="row">
              <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                <h3 class="font-weight-bold">Generate Certificate</h3>
                <h6>Select Format for event</h6>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
            <?php
                $obj= new Get();
                $result=$obj->GetCertificate();

                if ($result->num_rows > 0) :
                    foreach ($result as $row) :
            ?>
            <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                    <a href="../backend/certificate_material/<?php echo $row['certi_path']; ?>"><img src="../backend/certificate_material/<?php echo $row['certi_path']; ?>" alt="Avatar" style="width:100%"></a>
                    <div class="container">
                        <div class="row">
                            <div class="col-9">
                                <h4><b><?php echo $row['certi_name'];?></b></h4>
                                <p><?php echo "X Co-ordinate : ".$row['x_coordinates'].' Y Co-ordinate : '.$row['y_coordinates']; ?></p>
                            </div>
                            <div class="col-3">
                                <?php echo '<a href="../backend/fetch_certi.php?certi_id='.$row["certi_id"].'" class="badge badge-primary"> Select </a>'; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php
                    endforeach;
                endif;
            ?>
            
        </div>
        <?php endif;?>


        <?php if (isset($_SESSION['student']) == true) :?>

        <div class="row">
          <div class="col-md-12 grid-margin">
            <div class="row">
              <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                <h3 class="font-weight-bold">Generated Certificate</h3>
                <h6>Select Format for event</h6>
              </div>
            </div>
          </div>
        </div>

        <div class="row">
            <?php
                $obj= new Get();
                $obj->user_id=$_SESSION['student'];
                $result=$obj->GetCertificateByUserId();

                if ($result->num_rows > 0) :
                    foreach ($result as $row) :
            ?>
            <div class="col-md-3 grid-margin stretch-card">
                <div class="card">

                    <a href="../backend/Certificates/<?php echo $row['encerti_path']; ?>"><img src="../backend/Certificates/<?php echo $row['encerti_path']; ?>" alt="Avatar" style="width:100%"></a>
                    <div class="container">
                        <div class="row">
                            <div class="col-9">
                                <h4><b><?php echo $row['certi_name'];?></b></h4>
                            </div>
                            <div class="col-3" hidden>
                                <?php echo '<a href="../backend/fetch_certi.php?certi_id='.$row["certi_id"].'" class="badge badge-primary"> Select </a>'; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>  
            <?php
                    endforeach;
                endif;
            ?>
            
        </div>
        <?php endif;?>

    </div>
</div>
<!-- INCLUDE FOOTER -->
<?php include '../inc/footer.php'; ?>