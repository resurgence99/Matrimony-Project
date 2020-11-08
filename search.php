<!--
<html>
    <head>
        <title>Search</title>
        
    </head>
    <body>
        <table>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Description</th>
            </tr>
-->
            
          
<!--
//            $dbname="matrimony";
//$dbh = mysqli_connect('localhost','root', '');
//$conn = mysqli_select_db($dbh,$dbname);
            
//            $email = $_REQUEST['email'];
//$password = $_REQUEST['password'];
//$salary = $_REQUEST['salary'];
//$religion = $_REQUEST['religion'];
//$educationlevel = $_REQUEST['educationlevel'];
//$educationfield = $_REQUEST['educationfield'];
//$createdby = $_REQUEST['createdby'];
//$fname = $_REQUEST['fname'];
//$lname = $_REQUEST['lname'];
//$description = $_REQUEST['description'];
//$height = $_REQUEST['height'];
//$companyname = $_REQUEST['companyname'];
//$position = $_REQUEST['position'];
//$gender = $_REQUEST['sex'];
//$phone = $_REQUEST['phone'];
//$hobbies = $_REQUEST['hobbies'];
            
//            $sql="SELECT a.fname,a.lname,a.description
//FROM login l,about a, general_details g, education e,work w
//where (l.email=g.email AND
//       l.email=e.email AND
//       l.email= w.email AND
//       l.email=a.email AND
//       e.education_level='$educationlevel' AND
//       e.education_field='$educationfield' AND
//       w.salary>'$salary' AND
//       g.religion='$religion' AND
//       w.position='$position'
//      )";
            
            /*$sql="SELECT a.fname,a.lname,a.description
FROM login l,about a, general_details g, education e,work w
where (l.EMAIL=g.EMAIL AND
       l.EMAIL=e.EMAIL AND
       l.EMAIL= w.EMAIL AND
       l.EMAIL=a.EMAIL AND
  
       
       e.EDUCATION_LEVEL='$educationlevel' AND
       e.EDUCATION_FIELD='$educationfield' AND
       w.salary>'$salary' AND
       g.RELIGION='$religion''  AND
       w.position='$position'
      )";
            $result = $conn-> query($sql);
            
            if($result->num_rows >0)
            {
                while($row=$result-> fetch_assoc()){
                    echo "<tr><td>".$row["fname"]."</td><td>".$row["lname"]."</td><td>".$row["description"]."</td>";
                }
               
                
            }
        
-->
<!--
        </table>
    </body>
</html>
-->










<html>
    <head>
        <title>No divorce Matrimony</title>
        <style>
            body{
                background-color: black;
                color: white;
            }
            
            h1{
                font-family: 'Exo', sans-serif;
            }
            
            table{
                border-collapse: collapse;
                width: 100%;
            }
            
            th,td{
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            
            tr:hover 
            {
                background-color: #f5f5f5;
            color:black;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap.css">
</head>
  <body>
 
     <button><a href="search.html">Search Again</a></button>
     <button><a href="index.html">Log Out</a></button>
      <center><h1>Details</h1>
      <table>
          <tr>
              <th>First Name</th>
              <th>Last Name</th>
              <th>Description</th>
              </tr>
              
            
              <?php
          $conn=mysqli_connect("localhost","root","","matrimony");
          
          $educationlevel = $_REQUEST['educationlevel'];
          $educationfield = $_REQUEST['educationfield'];
          $position = $_REQUEST['position'];
          $salary = $_REQUEST['salary'];
          $religion = $_REQUEST['religion'];
          $sex = $_REQUEST['sex'];
          //$height = $_REQUEST['height'];
          
          
          $sql="SELECT a.fname,a.lname,a.description
FROM login l,about a, general_details g, education e,work w
where (l.email=g.email AND
       l.email=e.email AND
       l.email= w.email AND
       l.email=a.email AND
       e.education_level='$educationlevel' AND
       e.education_field='$educationfield' AND
       w.salary>'$salary' AND
       g.religion='$religion' AND
       w.position='$position' AND
       g.gender='$sex' 
       )";
          
          $res=mysqli_query($conn,$sql);
          while(($row=mysqli_fetch_array($res)))
          {
              $fname=$row['fname'];
              $lname=$row['lname'];
              $description=$row['description'];
              echo"<tr><td>$fname</td><td>$lname</td><td>$description</td></tr>";
          }
          ?>
<!--
      </table>
      a.height<'$height'
      </center>
      
      
  </body>    
-->
   
  
 
























