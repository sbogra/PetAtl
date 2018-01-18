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
     <p class="navbar-brand">PET ALT</p>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav" style="margin-left: 500px">
        <li class="active"><a href="item_list.cfm">Home</a></li>
            <li><a href="product_details.cfm">Product</a></li>
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
                 <cfform class="form-horizontal">
                  <div class="row">
                     <legend align="center"></legend>
                     <div class="col-md-8">
                       <div class="form-group">
                          <div class="col-sm-offset-6 inputGroupContainer">
                        <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <input type="text" class="form-control"  name="username" placeholder="username">
                     </div>
                </div>
              </div>
              <div class="form-group">
              <div class="form-group">
                                     <div class="col-sm-offset-6 inputGroupContainer">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                 <input type="text" class="form-control"  name="email" placeholder="email">
                      </div>
                </div>         
                </div>      
                <div class="form-group">

                        <div class="col-sm-offset-6 inputGroupContainer">
                        <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <input type="password" class="form-control"  name="password" placeholder="password">
                     </div>
                </div>
              </div>
            
                 <div class="form-group">
           <div class="col-sm-offset-6">
      <button type="submit" onclick="submit" class="btn btn-success" name="submit">Register</a></button>
	  <button type="submit" class="btn btn-success" name="btn1"><a href="login.cfm">Proceed to Login</a></button>
	  </div>
  </div>
</div>
</cfform>      
     
          </div>
</form>
<cfif isDefined("form.Submit")>
<cfquery name = 'inst' DATASOURCE="Project" DBTYPE="ODBC" >
			insert into ATL_Customer(username,e_mail, password)
	            VALUES('#Form.username#','#Form.email#','#Form.password#')

 </cfquery>
 </cfif>

</body>
</html>