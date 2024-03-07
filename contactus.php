<?php include('header.php'); ?>
<!DOCTYPE html>
<html>
<head>
<title>bootstrap</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>




	<!-- this is for donor registraton -->
	<?php
	if(isset($_POST["send"]))
	{
		$cn=mysqli_connect("localhost","root","","projectmms");
		$q="insert into contact(firstname,lastname,email,comment) values ('".$_POST["fname"]."','".$_POST["lname"]."','".$_POST["email"]."','".$_POST["textarea"]."')";
		$a=mysqli_query($cn,$q);
		if($a>0)
		{
			echo "<script>alert('send');</script>";
		}
	}
	?>
	<div class="contactus"  style="background-color:#fff;">
		<h3 class="text-center" style="background-color:#272327;color: #fff;">Contact Us</h3>
		<div >
		
<ul class="breadcrumb">
<li class="breadcrumb-item"><a  href="#">Home</a></li>
<li class="breadcrumb-item active">Contact us</li>
</ul>
</div>
<div class="row">
<div class="col-md-6">
<p><span class="glyphicon glyphicon-phone"></span>Admin 9876543210</p>
</div>
<div class="col-md-6">
<p><span class="glyphicon glyphicon-bell"></span>Admin ad@gmail.com</p>
</div>
</div>

<div class="formstyle" style="padding:70px;height:500px; width:500px;border: 1px solid lightgrey;margin-right: 293px;margin-bottom: 30px;background-color:#f3f3f8;color:#141313;width: 530px;margin-left: 400px;">
<form style="height:480px" method="post" enctype="multipart/form-data">
  <div class="row">
    <div class="col">
      <input type="text" class="form-control" placeholder="First name" name="fname">
    </div>
    <div class="col">
      <input type="text" class="form-control" placeholder="Last name" name="lname">
    </div>
  </div>
  <br><div class="form-group row">
    <div class="col-sm-12">
      <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email">
    </div>
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Your message</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="textarea"></textarea>
  </div>
  
<div class="row">
<div class="col-md-5">
<div>
<div class="col-md-7" style="margin-left:100px">
<button type="submit" class="btn btn-primary" name="send" style=" width:150px; height:50px">Send</button>
</div>

</div>
</form>
</div>


<div>
</div>
		

	







	</div><!--  containerFluid Ends -->


<!-- <?php include('footer.php'); ?>

	<script src="js/bootstrap.min.js"></script> -->



<!-- contact information inserting -->
				


</body>
</html>
