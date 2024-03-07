<?php include('header.php'); ?>





	<div class="login" style="background-color:#fff;">
		<h1 class="text-center" style="background-color:#272327;color: #fff;">Congratulations....!!!</h1>
		 		<p class="text-center">You have been registered!</p>
			<div class="formstyle" style="float: right;padding:20px;border: 1px solid lightgrey;margin-right:650px; margin-bottom:30px;background-color:#f3f3f8;color:#141313;">
				<form action="" method="post" class="text-center">
					<label>
						Email: <input type="email" name="email"  placeholder="username" required>
					</label><br><br>
					<label>
						Password: <input type="password" name="password"  placeholder="password" required>
					</label><br><br>
					<button name="submit" type="submit" style="margin-left:36px;width: 85px;border-radius: 3px;">Login</button> <br>

			<?php

							include('config.php');
							if(isset($_POST["submit"])){


							$sql= "SELECT * FROM patient WHERE email= '" . $_POST["email"]."' AND password= '" . $_POST["password"]."'";

							$result = $conn->query($sql);

									if ($result->num_rows > 0) {

										    echo "<script>location.replace('patient/dashboard.php');</script>";
										} else {
										    echo "<span style='color:red;'>Please, check  username and password</span>";
										}
						$conn->close();
					}

 			?>


				</form> <br>&nbsp;&nbsp;&nbsp;

				<br>






	</div>


</div>



<!-- 
 <?php include('footer.php'); ?> -->



	</div>




	<script src="js/bootstrap.min.js"></script>



</body>
</html>
