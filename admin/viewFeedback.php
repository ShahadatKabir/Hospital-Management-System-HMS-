<?php if(!isset($_SESSION)){
	session_start();
	}  
?>

<?php include('header.php'); ?>






	<!-- this is for donor registraton -->
	<div class="dashboard" style="background-color:#fff;">
		<h3 class="text-center" style="background-color:#272327;color: #fff;padding: 5px;">Customer</h3>
		
		
	</div>
		
			<div class="all_user" style="margin-top:0px; margin-left: 40px;">
			<table class="table table-dark-striped">
			<tr>
			<td>S No.</td>
			<td>Email</td>
			<td>Expertise</td>
			<td>avaliable</td>
			<td>rating</td>
			<td>feedback</td>	
			<td>Action</td>
			</tr>
			<?php
			$cn=mysqli_connect("localhost","root","","projectmms");
			$query="select * from feedback";
			$res=mysqli_query($cn,$query);
			$x=0;
			while($r=mysqli_fetch_array($res))
			{
				$x++;
			
			?>

			<tr>
			<td><?php echo $x; ?></td>
			<td> <?php echo $r[1]; ?></td>
			<td> <?php echo $r[2]; ?></td>
			<td> <?php echo $r[3]; ?></td>
			<td> <?php echo $r[4]; ?></td>
			<td> <?php echo $r[5]; ?></td>
			<td> <a href="delete.php?id=<?php echo $r[0]; ?>">Delete</a>

			</tr>
				<?php } ?>
				</table>
			</div>
		
	
	
	
	
	</div><!--  containerFluid Ends -->





	<script src="js/bootstrap.min.js"></script>


 
			



	
</body>
</html>
