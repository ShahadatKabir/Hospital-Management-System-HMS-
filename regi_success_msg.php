<?php include('header.php'); ?>

<?php include('Admin/function.php'); ?>



	<div class="login" style="background-color:#fff;">
		<h1 class="text-center" style="background-color:#272327;color: #fff;">Congratulations....!!!</h1>
		 		<p class="text-center">You have been registered!</p>
			<div class="formstyle" style="float: right;padding: 10px;border: 1px solid lightgrey;margin-right: 376px; margin-bottom: 10px;background-color: aliceblue;">
				<form action="" method="post" class="text-center">
					<label>
						Email: <input type="email" name="email"  placeholder="username" required>
					</label><br><br>
					<label>
						Password: <input type="password" name="password"  placeholder="password" required>
					</label><br><br>
					<button name="submit" type="submit">Login</button> <br> <br>



			<?php

				if(isset($_POST["submit"])){
							include('config.php');

							$sql= "SELECT * FROM registration WHERE email= '" . $_POST["email"]."' AND password= '" . $_POST["password"]."'";

							$result = $conn->query($sql);

									if ($result->num_rows > 0) {
										    echo "<script>location.replace('donor/dashboard.php');</script>";
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




 <?php include('footer.php'); ?>



	</div>




	<script src="js/bootstrap.min.js"></script>



</body>
</html>
