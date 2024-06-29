<!-- INCLUDE HEADER -->
<?php include '../inc/header.php'; ?>

<!-- INCLUDE SIDEBAR -->
<?php include '../inc/sidebar.php'; ?>

<!-- INCLUDE  -->
<?php require_once("../backend/cls_select.php"); ?>

<div class="main-panel">
    <div class="content-wrapper">



    

        <?php 
            if(isset($_SESSION['Admin']) || isset($_SESSION['faculty'])){
                $obj = new Get();

                if(isset($_SESSION['Admin'])){
                    $userName=$_SESSION['Admin_name'];
                    $obj->user_id = $_SESSION['Admin'];
                }
                elseif(isset($_SESSION['faculty'])){
                    $userName=$_SESSION['faculty_name'];
                    $obj->user_id = $_SESSION['faculty'];
                }

                $resultFooterInfo=$obj->GetFooterStamp();

                if($resultFooterInfo->num_rows == 0){
                    $resultUserInfo=$obj->GetUserDetail();

                    if ($resultUserInfo->num_rows > 0) {
                        foreach ($resultUserInfo as $row) {
                            $clgId=$row['clg_id'];
                            $clg=$row['clg_name'];
                            $email=$row['email'];
                            $contact=$row['mobile_number'];
        
                        }
                    }
                }
            }

        ?>

        <div class="row">
          <div class="col-md-12 grid-margin">
            <div class="row">
              <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                <h3 class="font-weight-bold">Profile</h3>
                <!-- <h6>Select Format for event</h6> -->
              </div>
            </div>
          </div>
        </div>


        <div class="row">

            <div class="col-md-6 grid-margin transparent">
              <div class="row">
                <div class="col-md-12 mb-4 stretch-card transparent">
                  <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Footer Stamp</h4>
                        <p class="card-description">
                        
                        </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <?php if(isset($_SESSION['Admin']) || isset($_SESSION['faculty'])): ?>

            <div class="col-md-6 grid-margin transparent">
              <div class="row">
                <div class="col-md-12 mb-4 stretch-card transparent">
                  <div class="card">
                    <div class="card-body">
                        
                        <div class="row">
                            <div div class="col-11 ">
                                <h4 class="card-title">Footer Stamp</h4>
                                <p class="card-description">
                                <?php 
                                    if($resultFooterInfo->num_rows == 0){
                                        echo "Fill it correctly";
                                    } 
                                ?>
                                </p>
                            </div>
                            <div div class="col-1 ">
                            
                        <?php 
                                if ($resultFooterInfo->num_rows > 0):
                                    foreach ($resultFooterInfo as $row):
                                        echo '<a onclick="return cnfdel();" class="actionBtn" href="../backend/DB_delete.php?footId='.$row['fs_id'].'"><i class="mdi mdi-delete-forever"></i></a>';
                        ?>
                        </p>
                            
                            </div>
                        </div>  

                            <div class="row">
                                <div class="col-md-4 ">
                                    <div class="card-body">
                                        <p class="card-description">
                                            Name
                                        </p>
                                        <p>
                                            <?php echo $row['userName']; ?>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-4 ">
                                    <div class="card-body">
                                        <p class="card-description">
                                            Position
                                        </p>
                                        <p>
                                            <?php echo $row['userPosition']; ?>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-4 ">
                                    <div class="card-body">
                                        <p class="card-description">
                                            Contact Number
                                        </p>
                                        <p>
                                            <?php echo $row['userNumber']; ?>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-5 ">
                                    <div class="card-body">
                                        <p class="card-description">
                                            Email
                                        </p>
                                        <p>
                                            <?php echo $row['userMail']; ?>
                                        </p>
                                    </div>
                                </div>
                                
                                <div class="col-md-7 ">
                                    <div class="card-body">
                                        <p class="card-description">
                                            College Name
                                        </p>
                                        <p>
                                            <?php echo $row['userClg']; ?>
                                        </p>
                                    </div>
                                </div>
                               
                            </div>

                        <?php 
                                    endforeach;
                                endif;
                        ?>

                        
                        <?php if($resultFooterInfo->num_rows == 0): ?>
                            </div>
                        </div>
                        <form class="forms-sample" method="post" action="../backend/DB_insert.php" enctype="multipart/form-data">

                            

                            <div class="form-group">
                                <label for="pc_no">Name</label>
                                <input type="text" class="form-control" name="UserName" id="" value="<?php echo $userName; ?>" placeholder="Enter Existing Password" required>
                            </div>

                            <!-- Old PW -->
                            <div class="form-group">
                                <label for="pc_no">Position</label>
                                <input type="text" class="form-control" name="UserPosition" id="" placeholder="Enter position you hold on" required>
                            </div>

                            <!-- Old PW -->
                            <div class="form-group" hidden>
                                <label for="pc_no">Clg Id</label>
                                <input type="text" class="form-control" name="UserClgId" id="" value="<?php echo $clgId; ?>" placeholder="Enter Existing Password" readonly>
                            </div>

                            <div class="form-group">
                                <label for="pc_no">Clg Full Name</label>
                                <input type="text" class="form-control" name="UserClg" id="" value="<?php echo $clg; ?>" placeholder="Enter Existing Password" required>
                            </div>

                            <!-- Old PW -->
                            <div class="form-group">
                                <label for="pc_no">Email</label>
                                <input type="text" class="form-control" name="UserMail" id="" value="<?php echo $email; ?>" placeholder="Enter Existing Password" required>
                            </div>

                            <!-- Old PW -->
                            <div class="form-group">
                                <label for="pc_no">Contact Number</label>
                                <input type="text" class="form-control" name="UserNumber" id="" value="<?php echo $contact; ?>" placeholder="Enter Existing Password" required>
                            </div>

                            <!-- Submit Button-->
                            <button type="submit" class="btn btn-primary mr-2" name="FooterStamp">Submit</button>
                            <button type="reset" class="btn btn-light" id="resetbtn">Reset</button>
                        </form>
                        <?php endif;?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <?php endif; ?>

        </div>


   
</div>

<!-- Chnage Password Validation -->
<script>
    function validate() {
        var ps = document.getElementById('ps').value;
        var cps = document.getElementById('cps').value;
        var error = document.getElementById('errorprint');

        if (ps == cps) {
            alert("Password Change Successully.")
            return true;
        } else {
            error.innerHTML = "password must be same";
            return false;
        }
    }
</script>
<!-- INCLUDE FOOTER -->
<?php include '../inc/footer.php'; ?>