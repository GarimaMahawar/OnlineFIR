<?php

include("connect.php");  // connectivity code

 if (isset($_POST['b1'] )  && !empty($_POST['q1'])   	)
																	
{	
 $i =   rand(10000,50000);
						
mysqli_query($conn,"insert into fir set
			 								 
											 name			  	  = '".$_POST['q1']."'  ,
											 parent_name   		  = '".$_POST['q2']."'  , 
											 age  				  = '".$_POST['q3']."'  , 
										     address       		  = '".$_POST['q4']."'  ,
										   	 gender     		  = '".$_POST['q5']."'  ,              
											 inc_datetime	      = '".$_POST['q6']."'  , 
										     reg_datetime  		  = '".$_POST['q7']."'  ,
											 complaint            = '".$_POST['q8']."'  , 
											 section			  = '".$_POST['q9']."'  , 
										     category   		  = '".$_POST['q10']."' ,
											 qid2				  = '".$i."'						 ");
						
			 if (isset($_POST['b1'] )  && !empty($_POST['q1'])  			)
			 {
			echo "<b>Your FIR Registered Successfully<br>your FIR no is $i . kindly remember this no for further assistence";														
			 }
			
  }

?>

<html lang="en">
 <head>

   <!-- Required meta tags -->
<meta charset="utf-8">
    <link rel="stylesheet" href="Login/css/firstat.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 
 
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

   
    <title>Register your complaint</title>
    <style type="text/css">
        .registerform{
            margin-top: 5%;
            width:50vw;
            max-width: 90vw;
        }
        .form-group{
            margin: 2vw;
        }
		
		
    </style>
  </head>
  <body>
  <h1 align="center">Register Your Complaint Here</h1>

  <center>
    <div class=" card registerform">
        <form name="frm" action="?" method="post" align="center">
        
          <div class="form-group">
            <label>Name</label>
            <input type="text" class="form-control" placeholder="Enter name" name="q1" id="q1">
          </div>
          
          <div class="form-group">
            <label>Father/Mother name</label>
            <input type="text" class="form-control" placeholder="Enter name of father or mother" name="q2" id="q2">
          </div>
          
          <div class="form-group">
            <label>Age</label>
            <input type="number"class="form-control" placeholder="Enter Age" name="q3" id="q3">
          </div>
          
          <div class="form-group">
            <label>Address</label>
            <textarea class="form-control" placeholder="Enter address" name="q4" id="q4"></textarea>
          </div>
          
		  <div class="form-group">
            <label>Gender</label>
            <input type="text" class="form-control" placeholder="Enter Gender" name="q5" id="q5">
          </div>
          
           <div class="form-group">
            <label>Date and time of incidence</label>
            <input type="datetime-local" class="form-control" placeholder="Enter date and time" name="q6" id="q6">
          </div>
          
           <div class="form-group">
            <label>Date and time of registeration</label>
            <input type="datetime-local" class="form-control" placeholder="Enter date and time" name="q7" id="q7">
          </div>
          
           <div class="form-group">
            <label>Complaint</label>
   			<textarea type="text" class="form-control" placeholder="Enter complaint" name="q8" id="q8"></textarea>
          </div>
          
           <div class="form-group">
            <label>Section</label>
            <input type="text" class="form-control" placeholder="section" name="q9" id="q9">
          </div>
          
          <div class="form-group">
            <label>Select Complaint Type</label>
            <select class="form-control" name="q10" id="q10">
              <option>Attempt to Murder</option>
              <option>Theft				</option>
              <option>Domestic Violence	</option>
              <option>Lost and Found	</option>
              <option>Stolen Vehical	</option>
              <option>Missing Person	</option>
              <option>Others			</option>
            </select>
          </div>
          
          
          
          <button class="btn btn-primary" style="background-color:#333" type="submit" id="b1" name="b1">Submit</button>
        </form>
       
    </div>
     </center>
  </body>
</html>
