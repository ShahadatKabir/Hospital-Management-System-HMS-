<?php
if(isset($_REQUEST["booking_id"]))
{
    $cn=mysqli_connect("localhost","root","","projectmms");
    $q="delete from booking where booking_id='".$_REQUEST["booking_id"]."'";
    $res=mysqli_query($cn,$q);
    if($res>0)
    {
        
        echo "<script> alert(' deleted')</script>" ;
        ?>
        <script>
        window.location="view_booking.php";
        </script>
        <?php
    }
}

?>