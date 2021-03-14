<?php
ini_set('display_errors',1);
error_reporting(E_ALL);
extract($_REQUEST);
require_once('conn.php');
$conn="SELECT * FROM voters WHERE voters_id='$voters_id'";
$result=mysqli_query($con,$conn);
if(mysqli_num_rows($result)){
    echo"studentID already Registerd Please Try Another";
}else{
    echo"";
}
?>