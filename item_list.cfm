<!DOCTYPE html>
<!--- application.cfm CF Application Framework --->
<!--- Start the Application and Session framework --->
<cfapplication name="UniversityApp" Sessionmanagement="YES">

<!--- Set session variables --->
<CFSET session.apptitle   = "Pet ATL">
<CFSET session.appversion = "(R)">
<CFSET session.hostip     = "#cgi.http_host#">
<CFSET session.webhome    = "http://#cgi.http_host#">
<CFSET session.auname     = "Database Management System Project">
<CFSET session.puname     = ""> 
<html lang="en">
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
  <CFQUERY Name="frontpage" DATASOURCE="Project" DBTYPE="ODBC">
select * from Atl_Product
where item_id=101
</CFQUERY>
<CFQUERY Name="frontpage2" DATASOURCE="Project" DBTYPE="ODBC">
select * from Atl_Product
where item_id=102
</CFQUERY>
<CFQUERY Name="frontpage3" DATASOURCE="Project" DBTYPE="ODBC">
select * from Atl_Product
where item_id=103
</CFQUERY>
<CFQUERY Name="frontpage4" DATASOURCE="Project" DBTYPE="ODBC">
select * from Atl_Product
where item_id=104
</CFQUERY>
<CFQUERY Name="frontpage5" DATASOURCE="Project" DBTYPE="ODBC">
select * from Atl_Product
where item_id=105
</CFQUERY>
</head>
<body>
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <a class="navbar-brand" href="item_list.cfm">PET ALT</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav" style="margin-left: 500px">
	        <li class="active"><a href="item_list.cfm">Home</a></li>
            <li><a href="about.cfm">About Us</a></li>
            <li><a href="contact.cfm">Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <li><a href="signup.cfm"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="login.cfm"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid">    
  <div class="row">
                       <div class="col-sm-12" style="margin-top: 20px">
                    </div>
                  </div>
                 <form action="" class="form-horizontal">
                  <div class="row">
 
<CFOUTPUT query ="frontpage"> 
<div class="col-sm-2" style="margin-top: 2px">
<img src="image/#image#.jpg">
</div>

<div class="col-sm-10" style="margin-top: 2px">
<h2><a href="product_details.cfm">#name#</a></h2><br>
 <font color="red">Price - $#price#</font><br><b>
  <font color="gray">#description#</font><br>
  <font color="black">Manufactured #manufacturer#</font><br><b>
  <form action="payment.cfm">
  <button type="submit" class="btn btn-success"  id="submit" style="width: 100px"><a href="cart.cfm">Buy Now</a></button>
   </form>
<div class="col-sm-offset-9">
 <img src="image/yellow.jpg" height="30px" width="50px"><img src="image/yellow.jpg" height="30px" width="50px">
 <img src="image/yellow.jpg" height="30px" width="50px">
 <img src="image/yellow.jpg" height="30px" width="50px"><br>
 Customer Review: 4 out of 5 stars<br>
 </CFOUTPUT>
</div>

  </div>

</div>

<CFOUTPUT query="frontpage2"> 
  <div class="row">
 <div class="col-sm-2" style="margin-top: 2px">
<img src="image/#image#.jpg">
</div>
<div class="col-sm-10" style="margin-top: 2px">
<h2><a href="product_details2.cfm">#name#</a></h2><br>
 <font color="red">Price - $#price#</font><br><b>
  <font color="gray">#description#</font><br>
<font color="black">Manufactured #manufacturer#</font><br><b>
 <button type="submit" class="btn btn-success" name="btn" id="submit" style="width: 100px"><a href="cart.cfm">Buy Now</a></button>
<div class="col-sm-offset-9">
 <img src="image/yellow.jpg" height="30px" width="50px"><img src="image/yellow.jpg" height="30px" width="50px">
 <img src="image/yellow.jpg" height="30px" width="50px">
 <img src="image/yellow.jpg" height="30px" width="50px"><br>
 Customer Review: 4 out of 5 stars<br>
  </CFOUTPUT>
</div>

  </div>

</div>
<legend></legend>
<CFOUTPUT query="frontpage3">
<div class="row">
 <div class="col-sm-2" style="margin-top: 2px">
<img src="image/#image#.jpg">
</div>
<div class="col-sm-10" style="margin-top: 2px">
<h2><a href="product_details3.cfm">#name#</a></h2><br>
 <font color="red">Price - $#price#</font><br><b>
  <font color="gray">#description#</font><br>
<font color="black">Manufactured #manufacturer#</font><br><b>

 <button type="submit" class="btn btn-success" name="btn" id="submit" style="width: 100px"><a href="cart.cfm">Buy Now</a></button>
<div class="col-sm-offset-9">
 <img src="image/yellow.jpg" height="30px" width="50px"><img src="image/yellow.jpg" height="30px" width="50px">
 <img src="image/yellow.jpg" height="30px" width="50px"><br>
 Customer Review: 3 out of 5 stars<br>
   </CFOUTPUT>
</div>

  </div>

</div>
<CFOUTPUT query="frontpage4">
<div class="row">
 <div class="col-sm-2" style="margin-top: 2px">
<img src="image/#image#.jpg">
</div>
<div class="col-sm-10" style="margin-top: 2px">
<h2><a href="product_details4.cfm">#name#</a></h2><br>
 <font color="red">Price - $#price#</font><br><b>
  <font color="gray">#description#</font><br>
<font color="black">Manufactured #manufacturer#</font><br><b>
  <button type="submit" class="btn btn-success" name="btn" id="submit" style="width: 100px"><a href="cart.cfm">Buy Now</a></button>
<div class="col-sm-offset-9">
  <img src="image/yellow.jpg" height="30px" width="50px"><img src="image/yellow.jpg" height="30px" width="50px">
 <img src="image/yellow.jpg" height="30px" width="50px">
 <img src="image/yellow.jpg" height="30px" width="50px"><br>
 Customer Review: 4 out of 5 stars<br>
 </CFOUTPUT>
</div>

  </div>

</div>
<legend></legend>
<CFOUTPUT query="frontpage5">
<div class="row">
 <div class="col-sm-2" style="margin-top: 2px">
<img src="image/#image#.jpg">
</div>
<div class="col-sm-10" style="margin-top: 2px">
<h2><a href="product_details5.cfm">#name#</a></h2><br>
 <font color="red">Price - $#price#</font><br><b>
  <font color="gray">#description#</font><br>
<font color="black">Manufactured #manufacturer#</font><br><b>
  <button type="submit" class="btn btn-success" name="btn" id="submit" style="width: 100px"><a href="payment.cfm">Buy Now</a></button>
<div class="col-sm-offset-9">
  <img src="image/yellow.jpg" height="30px" width="50px"><img src="image/yellow.jpg" height="30px" width="50px">
 <img src="image/yellow.jpg" height="30px" width="50px"><br>
 Customer Review: 3 out of 5 stars<br>
  </CFOUTPUT>
</div>

  </div>

</div>
</form>
</body>
</html>