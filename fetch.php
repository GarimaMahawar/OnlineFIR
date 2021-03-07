<?php
include("connect.php");
?>

<html>
<head>
<style>

table{
	 font-family:arial, sans-serif;
	 border-collapse:collapse;
	 width=100%;
	 }
	 
	 td,th{
		 border:2px solid #000;
		 text-align:left;
		 padding:8px;
	      }
		  
		  tr:nth-child(even) {
			background-color:#FFD700;  
		  }
</style>
</head>
<body>


<table width="1184" border="0">
  <tr bgcolor="#e06377">
    <th width="57" scope="col">S.no.</th>
    <th width="73" scope="col">Name</th>
    <th width="92" scope="col">Parent name</th>
    <th width="48" scope="col">Age</th>
    <th width="82" scope="col">Address</th>
    <th width="74" scope="col">Gender</th>
    <th width="84" scope="col">Inc date time</th>
    <th width="115" scope="col">Reg date time</th>
    <th width="110" scope="col">Complaint</th>
    <th width="76" scope="col">Section</th>
    <th width="95" scope="col">Category</th>
    <th width="48" scope="col">FIR No.</th>
    <th width="67" scope="col">Status</th>
    <th width="105" scope="col">Information</th>
    
  </tr>
  <?php
  $i=0;
  $q=mysqli_query($conn,"select * from fir order by s_no");
 $num = mysqli_num_rows($q); //return number of rows from mysql table
  if($num>0)
  {
	  while($row=mysqli_fetch_array($q) )
  		{	
   if($i%2==0)
    $bg="#FFD700"; 
   else
    $bg="#f2ae72";
  ?>

  <tr bgcolor="<?php echo $bg ?>">
    <td><?php  echo $row[0] ?></td>
    <td><?php  echo $row[1] ?></td>
    <td><?php  echo $row[2] ?></td>
    <td><?php  echo $row[3] ?></td>
    <td><?php  echo $row[4] ?></td>
    <td><?php  echo $row[5] ?></td>
    <td><?php  echo $row[6] ?></td>
    <td><?php  echo $row[7] ?></td>
    <td><?php  echo $row[8] ?></td>
    <td><?php  echo $row[9] ?></td>
    <td><?php  echo $row[10] ?></td>
    <td><?php  echo $row[11].$row[12] ?></td>
    <td><?php  echo $row[13] ?></td>
    <td><?php  echo $row[14] ?></td>
  </tr>
  <?php
  $i++;
    }
  }
  else{
 ?>
  
  <tr>
    <td colspan="14" style="text-align:center">No Record Found</td>
  </tr>
  <?php
  }
  ?>
</table>
</body>
</html>
