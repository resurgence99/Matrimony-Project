<html>
    <head>
        <title>NO Divorce Matrimony</title>
    </head>
    <body>
        
    






<?php
$dbname="matrimony";
$dbh = mysqli_connect('localhost','root', '');
$result9=mysqli_select_db($dbh,$dbname);

$email = $_REQUEST['email'];
$password = $_REQUEST['password'];
$salary = $_REQUEST['salary'];
$religion = $_REQUEST['religion'];
$educationlevel = $_REQUEST['educationlevel'];
$educationfield = $_REQUEST['educationfield'];
$createdby = $_REQUEST['createdby'];
$fname = $_REQUEST['fname'];
$lname = $_REQUEST['lname'];
$description = $_REQUEST['description'];
$height = $_REQUEST['height'];
$companyname = $_REQUEST['companyname'];
$position = $_REQUEST['position'];
$gender = $_REQUEST['sex'];
$phone = $_REQUEST['phone'];
$hobbies = $_REQUEST['hobbies'];

$query1 = "INSERT INTO login VALUES ('$email','$password')";
$result1 = mysqli_query($dbh,$query1);

    
$query2 = "INSERT INTO education VALUES ('$email','$educationfield','$educationlevel')";
$result2 = mysqli_query($dbh,$query2);

$query3 = "INSERT INTO work VALUES ('$email','$companyname','$salary','$position')";
$result3 = mysqli_query($dbh,$query3);

$query4 = "INSERT INTO general_details VALUES ('$email','$gender','$phone','$createdby','$religion')";
$result4 = mysqli_query($dbh,$query4);

$query5 = "INSERT INTO about VALUES ('$email','$description','$fname','$lname','$hobbies','$height')";
$result5 = mysqli_query($dbh,$query5);
echo "SUCCEFULLY REGISTERED PLZ GO BACK AND LOGIN FROM HOME PAGE!!!!";
    
    
/*$var=mysql_query("SELECT * FROM matrimony");

echo"<table>";
echo"<tr><th>EMAIL</th><td><th>PASSWORD</th>";
while($arr=mysql_fetch_row($var))
{echo"<tr><td>$arr[0]</td><td>$arr[1]</td><td>$arr[2]</td></tr>";
}
echo"</table>"*/
    
?>


<br><br>



<button><a href="index.html">Home Page</a></button><br><br>

</body>
    
</html>
