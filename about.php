<?php include('header.php'); ?>
<!-- this is for donor registraton -->
	<div class="main_content" style="background-color:#fff;">
	</br><div>
<ul class="breadcrumb">
<li class="breadcrumb-item"><a  href="#">Home</a></li>
<li class="breadcrumb-item active">About us</li>
</ul>
</div>
		<h3 class="text-center" style="background-color:#272327;color: #fff;">About WE LISTEN</h3>
		<div class="row">
		
			<div class="col-md-6">
				<img src="img/charu.jpg" alt="" class="img-responsive" width="93%">
			</div>

			<div class="col-md-6">
				<article>
					<h3 style="color:#0616BC;">We are Beside you</h3><br>
					<p >Everything can be done online these days and looking at current times with the world in a pandemic state, we know that it’s the best alternative and that something similar can be done in the case of booking medical appointments, overall improving the system and also making it easy for the management of the work place. It can eliminate/reduce the problems prevailing in the current manual system being practised and can lead to an error free, secure, reliable and fast management system for good performance and better services for their patients.


				</article>
			</div>
		
</div>

		<div class="col-md-12">
			<div class="col-md-6">
				<article>
					<h3 style="color:#0616BC;">Why Choose WE LISTEN?</h3>

				</article>
			</div>

		</div>
	

    </div>
<div class="row">
<?php

$cn=mysqli_connect("localhost","root","","projectmms");
$q=mysqli_query($cn,"select * from pictures");
while($r=mysqli_fetch_array($q))
{
?>
<div class="col-md-6">

<img src="admin/img/<?php echo $r[3]; ?>" alt="a" height="300px" width="700px" ></br>&nbsp;&nbsp;&nbsp;

</div>
<div class="col-md-6">
<h1 class="text-center"><?php echo $r[1]; ?></h1></p>
<p class="text-center"><?php echo $r[2]; ?></p>
</div>
<?php
}
?>
</div>	

	</div><!--  containerFluid Ends -->
	<div class="map">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d109189.61600246835!2d75.68881179886829!3d31.215866825449638!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391af4e8654ed27b%3A0x44f046dd6942ae0d!2sPhagwara%2C%20Punjab!5e0!3m2!1sen!2sin!4v1614881057776!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

</div>
	<div>
		<ul class="pagination justify-content-center">
<li classs="page-item"><a class="page-link" href="#">previous</li>
<li classs="page-item"><a class="page-link" href="#">1</li>
<li classs="page-item"><a class="page-link" href="#">2</li>
<li classs="page-item"><a class="page-link" href="#">next</li>
</ul>
</div>
<?php include('footer.php'); ?>



	<script src="js/bootstrap.min.js"></script>






</body>
</html>
