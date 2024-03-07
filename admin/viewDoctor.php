<?php if(!isset($_SESSION)){
	session_start();
	}  
?>
<?php include('header.php'); ?>
<div class="dashboard" style="background-color:#fff;">
		<h3 class="text-center" style="background-color:#272327;color: #fff;padding: 5px;">All registered Doctor List</h3>
		</div>
				<div class="all_user" style="margin-top:0px; margin-left: 40px;">
			<table class="table table-dark-striped">
			<th>Name</th>
<th>Address</th>
<th>Mobile</th>
<th>Email</th>
<th>Expert in</th>
<th>Fee</th>
<th>Action</th>
			</tr>
			<?php
			$cn=mysqli_connect("localhost","root","","projectmms");
			$query="select * from doctor";
			$res=mysqli_query($cn,$query);
			$x=0;
			while($r=mysqli_fetch_array($res))
			{
				$x++;
			
			?>
			<tr>
			<td><?php echo $x; ?></td>
			<td> <?php echo $r[2]; ?></td>
			<td> <?php echo $r[3]; ?></td>
			<td> <?php echo $r[5]; ?></td>
			<td> <?php echo $r[6]; ?></td>
			<td> <?php echo $r[8]; ?></td>
			<td> <a href="deletedoc.php?id=<?php echo $r[0]; ?>">Delete</a>
	</tr>
				<?php } ?>
				</table>
			</div>
	</div><!--  containerFluid Ends -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
