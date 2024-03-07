<?php if(!isset($_SESSION)){
	session_start();
	}  
?>

<?php include('header.php'); ?>
<?php include('uptomenu.php'); ?>



	<!-- this is for donor registraton -->
	<div class="dashboard" style="background-color:#fff;">
		<h3 class="text-center" style="background-color:#272327;;color: #fff;padding: 5px;">Change Password</h3>
		<div class="formstyle" style="float: right;padding:20px;height:500px; width:500px;border: 1px solid lightgrey;margin-right:600px; margin-bottom:30px;background-color:#f3f3f8;color:#141313;">
				<form action="" method="POST" class="text-center"style="font-size:16px;">
					<label>
						<span style="color: #000">Old Password:</span><input type="password" name="password"  placeholder="Current password" required>
					</label><br><br>
					<label>
						<span style="color: #000">new Password:</span><input type="password" name="newpassword"  placeholder="New password" required>
					</label><br><br>
					<label>
						<span style="color: #000">confirm Password:</span><input type="password" name="confpassword"  placeholder=" confirm password" required>
					</label><br><br>
					<button name="submit" type="submit" style="margin-left:43px;width:108px;border-radius: 3px; border: 4px thin black; background-color: grey; color:black; padding:10px; font-size:12px; " class="btn btn-info">UpdatePassword</button> 
				 <a  class="btn btn-info" href="logout.php" style="margin-left:43px;width:108px;border-radius: 3px; border: 4px thin black; background-color: grey; color:black; padding:10px;">Close</a> 
				 </form> <br>&nbsp;&nbsp;&nbsp;
				
				<br>


					<!-- login validation -->
			<?php 
					
							
							include('../config.php');
							
							if(isset($_POST["submit"])){
								$newpassword=$_POST["newpassword"];
								$confpassword=$_POST["confpassword"];
							
							$sql= "SELECT * FROM patient WHERE email= '" . $_SESSION["email"]."' AND password= '" . $_POST["password"]."'";

							$query=mysqli_query($conn,$sql);
							$row=mysqli_num_rows($query);

							if($row>0){
								//check the new password
								if($newpassword==$confpassword){
								
								$sql1="UPDATE patient SET password='" . $_POST["newpassword"]  ."' WHERE email='" .$_SESSION["email"] ."'";
								mysqli_query($conn,$sql1);
								mysqli_close($conn);
								echo "<script>alert('Password Has been Updated');</script>";
								
								}else{
									echo "<script>alert('Password did not match');</script>";

								}


							}else{
								echo "<script>alert('Input Correct Password');</script>";
							}		
					}
					
 			?>
		<!-- login validation End-->


				

				
		
				
			
		
	</div>
		
		
			
		
	</div>
	
	

<!-- 	
 <?php include('../footer.php'); ?> -->


	
	</div><!--  containerFluid Ends -->




	<script src="js/bootstrap.min.js"></script>


 
			



	
</body>
</html>
