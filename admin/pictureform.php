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
</head>
<body>
  <?php
  if(isset($_POST["b1"]))
  {
    $n=$_FILES["upload"]["name"];
    $target_file="img/".$n;
    $p=move_uploaded_file($_FILES["upload"]["tmp_name"],$target_file);

$cn=mysqli_connect("localhost","root","","projectmms");
$q="insert into pictures(name,description,pic) value ('".$_POST['name']."','".$_POST['des']."','".$n."')";
$a=mysqli_query($cn,$q);
echo $a;
if($a>0)
{
  echo "<script>alert('record inserted')</script>";
}
}


  ?>
<div class="container">
<form method="post" enctype="multipart/form-data">
<div class="form-group">
      <label class="control-label">Name<span style="color: red;">*</span></label>
      <div>
          <input type="text" class="form-control input-sm" name="name" >
      </div>
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">description</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="des"></textarea>
  </div>

  <div class="form-group">
    <label for="exampleFormControlFile1">pic</label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1" name="upload">
  </div>

<div class="row">
<div class="col-md-2">
<button type="submit" class="btn btn-primary" name="b1">Submit</button>
</div>
<div class="col-md-2">
<button type="submit" class="btn btn-primary" >reset</button>
</div>
</div>
</div>
</form>
</div>
</body>
</html>