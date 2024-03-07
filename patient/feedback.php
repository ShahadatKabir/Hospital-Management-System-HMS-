<?php session_start();  ?>
<?php include('header.php'); ?>
<?php include('uptomenu.php'); ?>


	<div class="login" style="background-color:#fff;">
		<h3 class="text-center" style="background-color:#272327;color: #fff;">My Feedback</h3>
			<div class="formstyle" style="float: right;padding:20px;height:500px; width:500px;border: 1px solid lightgrey;margin-right:650px; margin-bottom:30px;background-color:#f3f3f8;color:#141313;">
				<form action="" method="post" class="text-center form-group" style="font-size:16px;">
					<label style="color:black;">Doctor Expertise </label>
<select class="form-control"  name="expertise">
<option  >Excellent</option>
<option>Good</option>
<option>Bad</option>
<option>Others</option>
</select>
<br>
<label style="color:black;">Doctor Availability </label>
<select class="form-control" name="available">
	<option>Highly available</option>
	<option>available mostly</option>
	<option>frequently available</option>
	<option>not available</option>
</select>
<br>
<label style="color:black;">HOW WOULD YOU RATE OF YOUR SATISFACTION!? </label>
<select class="form-control" name="rating">
	<option>5</option>
	<option>4</option>
	<option>3</option>
	<option>2</option>
	<option>1</option>
	<option>0</option>
</select>
<br>
<label>
						<span> any other valuable comment:</span><textarea name="feedback" id="" cols="40" rows="4" required></textarea>
					</label><br><br>

<button name="submit" type="submit" style="margin-left:43px;width:108px;border-radius: 3px; border: 4px thin black; background-color: grey; color:black; padding:10px; font-size:12px; " class="btn btn-info">Send</button> 
					<a  class="btn btn-info" href="logout.php" style="margin-left:43px;width:108px;border-radius: 3px; border: 4px thin black; background-color: grey; color:black; padding:10px;">Close</a> 
					


					<!-- login validation -->
			<?php 
					
							include('../config.php');
							if(isset($_POST['submit'])){
							

							$sql = "INSERT INTO feedback (email,expertise,available,rating,feedback)	VALUES ('" . $_SESSION["email"] ."','".$_POST["expertise"]."','".$_POST["available"]."','".$_POST["rating"]."','" . $_POST["feedback"] ."')";

							if ($conn->query($sql) === TRUE) {
							    echo "<script>alert('Thanks for your feedback!');</script>";
							} else {
							    echo "<script>alert('There was an Error')<script>";
							}

							$conn->close();
						}
					
 			?>
		<!-- login validation End-->


				</form> <br>&nbsp;&nbsp;&nbsp;
				
				<br>

				
		
				
			
		
	</div>
	
	
</div>
 


</body>
</html>
