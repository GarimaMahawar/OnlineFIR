<?php
include("connect.php");
if(isset($_REQUEST['b1']) && !empty($_GET['q']) ){
	$q = mysqli_query($conn,"select *  from fir where qid2 = '".$_GET['q']."' ");
	$num  =  mysqli_num_rows($q);
	if($num>0){
	$row = mysqli_fetch_array($q);
	?>
				<div style="float:right;"> <a href="login.php?todo=logout" style="color:#FFF"> Sign Out  </a> </div>
<hr>
<?php
}else{
	echo "Registration number not exist";
}
}
?>
<html>
<head>
<title> Know your status </title>
       <meta name="viewport" content="width=device-width, initial-scale=1">
	   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body bgcolor="#8F8F8F">

<h2 style="text-align:center">To Know Your complaint Status Write Your FIR Nunber in Search Box</h2>
<form name="frm1" action="?" method="get" align="center">
  <input type="text"  name="q" id="q">
  <input type="submit" name="b1" value="Search Status"  />
</form>

</body>
</html>
<?php
if(isset($row)){
	echo "<br>";


				echo "FIR Logged by ----> ".$row[1];
				echo "<br>";
				echo "Fir Date ---->". $row[7];
				echo "<br>";
				echo "Your FIR Number was --->". $row[11].$row[12];
				echo "<br>";
				echo "Your FIR status is ---> ".$row[13];
				echo "<br>";
				echo "RESULT ---> " . $row[14];
		 }
?>

