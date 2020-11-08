<?php

    $email = $_REQUEST['email'];
    $password = $_REQUEST['password'];

$dbname="matrimony";
$dbh = mysqli_connect('localhost','root', '');
mysqli_select_db($dbh,$dbname);

$query1 ="SELECT email,password FROM login where email='$email' and password='$password'";
$result1 = mysqli_query($dbh,$query1);

$row=$result1->fetch_assoc();

if($row['email']==$email && $row['password'] == $password){
    //echo "Login Success";
        header("Location : search.html");
}

else{
    echo"Failed to login";
     header("Location : index.html");
}

?>