<?php
$email=$_REQUEST['email'];
$password=$_REQUEST['password'];
$dbname="matrimony";
$dbh = mysqli_connect('localhost','root', '');
mysqli_select_db($dbh,$dbname);

$query1="SELECT email,password from login where email='$email'and password='$password'";
$result=mysqli_query($dbh,$query1);
$row=$result->fetch_assoc();
if ($row['email']== $email && $row['password'] == $password){
    
    header("Location: search.html");
//echo "login success!! welcome ".$row['email'];
    
} 

else{
    header("Location: index.html");
echo "failed to login!";

}


?>