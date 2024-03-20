<!DOCTYPE html>
<html lang="en">

<head>

 <?php require_once('include\top.php');?>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
      <?php require_once('include\sidebar.php');?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <?php include_once('include\navbar.php');?>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Add Expense</h1>
          <div class="row">
              <div class="col">
              <form action="" method="POST" enctype="multipart/form-data">
                    <div class="form-goup">
                      <label>Amount</label>
                      <input type="number" name="expense_amount" class="form-control" required />
                    </div><br>

                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Select Category</label>
                          <select class="form-control" name="category_id" required>
                            <option disabled>Select Category</option>
                            <?php 
                            require_once('include/db.php');
                            
                            $select_category = "SELECT * FROM category WHERE category_purpose='expense'"; // only category expense is showning
                            $run_category = mysqli_query($conn,$select_category);
                              while($row_category = mysqli_fetch_array($run_category))
                              {
                                $category_id = $row_category['category_id'];
                                $category_name = $row_category['category_name'];

                            ?>
                            <option value="<?php echo $category_id;?>"><?php echo $category_name;?></option>
                             <?php } ?>
                          </select>
                        </div>
                      </div><br>
                      <div class="col-md-6">
                        <div class="form-group">
                          <lable>Receipt</label>
                          <input type="file" class="form-control" name="expense_receipt" />
                        </div>
                      </div><br>
                    </div>
                          <div class="form-gorup">
                            <labe>Date</label>
                            <input type="date" class="form-control" name="expense_date" />
                          </div><br>
                          <div class="form-gorup">
                            <labe>Details</label>
                            <textarea class="form-control" name="expense_details"></textarea>
                          </div><br>
                          <div class="form-gorup">
                            <input type="submit" class="btn btn-success" value="Add Expense" name="insert_btn" />
                          </div>
                 </form>
                 <?php
                          require_once('include/db.php');

                        if(isset($_POST['insert_btn']))
                        {
                          $expense_amount  = $_POST['expense_amount'];
                          $category_id    = $_POST['category_id'];
                          $expense_details = $_POST['expense_details'];
                          $expense_date    = $_POST['expense_date'];
                          $expense_receipt_name = $_FILES['expense_receipt'] ['name'];
                          $expense_receipt_tmp_name = $_FILES['expense_receipt'] ['tmp_name'];
                          

                          $month = Date('m');
                          $year  = Date('Y');

                          $insert_expense = "INSERT INTO expense(expense_amount,category_id,expense_details,expense_receipt,expense_date,expense_month,expense_year) 
                                                        VALUES('$expense_amount','$category_id','$expense_details','$expense_receipt_name','$expense_date','$month','$year')";
                          
                            $run_expense = mysqli_query($conn,$insert_expense);

                          if($run_expense == true)
                            {
                                echo "<div class='alert alert-success'>Expense Record Added</div>";

                                move_uploaded_file($expense_receipt_tmp_name,"upload/$expense_receipt_name");
                            }
                          else
                            {
                              echo "<div class='alert alert-danger'>Failed, Try Again...</div>";
                            }
                        }

                  ?>
              </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
            <?php require_once('include\footer.php');?>
      <!-- End of Footer -->

      </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>

<?php  require_once('include/footer.php');?>
