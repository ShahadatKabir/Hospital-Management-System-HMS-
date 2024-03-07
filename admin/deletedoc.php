<?php
if(isset($_REQUEST["id"]))
{
    $cn=mysqli_connect("localhost","root","","projectmms");
    $q="delete from doctor where doc_id='".$_REQUEST["id"]."'";
    $res=mysqli_query($cn,$q);
    if($res>0)
    {
        echo "<script> alert(' deleted')</script>" ;
        
        ?>
        <script>
        window.location="../signin.php";
        </script>
        <?php
    }
}

?>