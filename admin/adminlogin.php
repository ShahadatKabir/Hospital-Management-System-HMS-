<?php session_start();  ?>

<!DOCTYPE html>
<html>
<head>
<title>bootstrap</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<body>



	<div class="container">
		<div class="header_top">
			<span style="font-size:50px;color:#2c2f84;font-weight:bolder;margin-left:15px;">Doctor Appoinment System</span>
		</div>

	<!-- 	this is for menu -->
	<div class="container-fluid bg-dark text-light">
<nav class="navbar navbar-expand-sm bg-primary navbar-light end">
<a class="navbar-brand" href="#">WE LISTEN</a>
<ul class="navbar-nav">
<li class="nav-item ">
<a class="nav-link" href="../index.php">HOME</a>
</li>

<li class="nav-item">
<a class="nav-link" href="logout.php">Log Out</a>
</li>



</div>
</div>
</ul>
</div>
</nav>






	<!-- this is for donor registraton -->
	<div class="login">
		<!-- <h1 class="text-center" style="background-color:;color: #fff;">Admin Panel</h1> -->
			<div class="formstyle" style="padding: 10px;border: 1px solid lightgrey;margin-right: 376px;margin-left: 406px; margin-bottom: 25px;background-color:black;">
				<form action="" method="post" class="text-center">
					<label>
						<input type="text" name="username"  placeholder="username" required style="margin-right: 75px;">
					</label><br><br>
					<label>
						<input type="password" name="password"  placeholder="password" required style="margin-right: 75px;">
					</label><br><br>
					<button name="submit" type="submit" style="margin-top:3px;padding:3px 25px; border-radius:4px;float:right;margin-right:75px;">Login</button> <br>

					

					<!-- login validation -->
			<?php 
							$_SESSION['adminstatus']="";
							include('../config.php');
							if(isset($_POST["submit"])){

							$sql= "SELECT * FROM users WHERE username= '" . $_POST["username"]."' AND password= '" . $_POST["password"]."'";

							$result = $conn->query($sql);

									if ($result->num_rows > 0) {
											$_SESSION["username"]= $_POST["username"];
											
											$_SESSION['adminstatus']= "yes";
										    echo "<script>location.replace('viewDoctor.php');</script>";
												// echo "u are supposed to redirect to ur profile";
										} else {
										    echo "<span style='color:red;'>Invalid username or password</span>";
										}
						$conn->close();		
					}
					
 			?>
		<!-- login validation End-->


				</form> <br>&nbsp;&nbsp;&nbsp;
				
				<br>

				
		
				
			
		
	</div>
	
	
</div>
	
<?php include('footer.php'); ?>

	
	</div><!--  containerFluid Ends -->




	<script src="js/bootstrap.min.js"></script>


 
			



	
</body>
</html>

