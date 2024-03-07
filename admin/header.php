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
  <style>
  nav ul li 
  {
	  font-size:20px;
  }
  
  
  
  </style>
  </head>
<body>


<?php
		if($_SESSION['adminstatus'] == ""){
			header("location:adminlogin.php");
		}
		
		   

	 ?>


<div class="container-fluid">
		<div class="header_top">
			<span style="font-size:50px;color:#2c2f84;font-weight:bolder;margin-left:15px;">Doctor Appoinment System</span>
		</div>

	<!-- 	this is for menu -->
	
	<div class="container-fluid bg-dark text-light">
<nav class="navbar navbar-expand-sm bg-primary navbar-light end">
<a class="navbar-brand" href="#">WE LISTEN</a>
<ul class="navbar-nav">
<li class="nav-item ">
<a class="nav-link" href="addDoctor2.php">Add Doctor</a>
</li>

<li class="nav-item">
<a class="nav-link" href="viewDoctor.php">View Doctor</a>
</li>
<li class="nav-item">
<a class="nav-link" href="viewCustomer.php">View Patient</a>
</li>
<li class="nav-item">
<a class="nav-link" href="viewAppoinment.php">View Appointment</a>
</li>
<li class="nav-item">
<a class="nav-link" href="viewFeedback.php"> View Feedback</a>
</li>
<li class="nav-item">
<a class="nav-link" href="logout.php">Logout</a>
</li>


</div>
</div>
</ul>
</div>
</nav>
</div>
</div>
</body>
</html>