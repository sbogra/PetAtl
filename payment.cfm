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
     <a class="navbar-brand" >PET ALT</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav" style="margin-left: 500px">
        <li class="active"><a href="item_list.cfm">Home</a></li>
      
                           <li><a href="">About Us</a></li>
            <li><a href="">Contact Us</a></li>
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
                    
                  <legend><b><h3>Payment</h3></b></legend>
</div>
</div>

   <cfform action="" class="form-horizontal">
  <div class="row">
                    <div class="col-sm-6" style="margin-top: 20px">
                  
                <h4>Billing Contact</h4>
                   
                         <div class="form-group">

                        <div class="col-sm-6 inputGroupContainer">
                        <div class="input-group">
                             <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <input type="text" class="form-control"  name="firstname" placeholder="First Name">
                     </div>
                </div>
                                     <div class="col-sm-6 inputGroupContainer">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                 <input type="text" class="form-control"  name="lname" placeholder="Last name">
                      </div>
                </div>         
                </div>         
           
                              
                <div class="form-group">

                        <div class="col-sm-6 inputGroupContainer">
                        <div class="input-group">
                             <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <input type="text" class="form-control"  name="street" placeholder="Street">
                     </div>
                </div>
                                     <div class="col-sm-6 inputGroupContainer">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                 <input type="text" class="form-control"  name="city" placeholder="City">
                      </div>
                </div>         
                </div>        
                 <div class="form-group">

                        <div class="col-sm-6 inputGroupContainer">
                        <div class="input-group">
                             <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <input type="text" class="form-control"  name="zip" placeholder="Zipcode">
                     </div>
                </div>
                                     <div class="col-sm-6 inputGroupContainer">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                 <input type="text" class="form-control"  name="phone" placeholder="phone">
                      </div>
                </div>         
                </div>        
                 <div class="form-group">

                        <div class="col-sm-12 inputGroupContainer">
                        <div class="input-group">
                             <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <input type="text" class="form-control"  name="email" placeholder="Email Address">
                     </div>
                </div>
              </div>
              <h4>Billing Address</h4>
                     
                         <div class="form-group">

                        <div class="col-sm-12 inputGroupContainer">
                        <div class="input-group">
                             <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <input type="text" class="form-control"  name="billingname" placeholder="Name">
                     </div>
                </div>
              </div>
              <div class="form-group">
                                     <div class="col-sm-12 inputGroupContainer">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                 <input type="text" class="form-control"  name="billingstreet" placeholder="Street">
                      </div>
                </div>         
                </div>         
           
                              
                <div class="form-group">

                        <div class="col-sm-12 inputGroupContainer">
                        <div class="input-group">
                             <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <input type="text" class="form-control"  name="apt" placeholder="Apt(buliding,block)">
                     </div>
                </div>
              </div>
              <div class="form-group">
                                     <div class="col-sm-4 inputGroupContainer">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                 <input type="text" class="form-control"  name="zip" placeholder="Zip code">
                      </div>
                </div>         
                <div class="col-sm-6 inputGroupContainer">
                        <div class="input-group">
                      </div>
                </div>         
                </div>             

                 
                
              <div class="form-group">
                                     <div class="col-sm-12 inputGroupContainer">
                        <div class="input-group">
                        <label class="checkbox"><input type="checkbox" name="Checkbox" checked=""><i> </i> &nbsp Save as my default Debit/credit card information</label>
                      </div>
                </div>         
                </div>        
              

                            
                              </div>
      <div class="col-sm-6">

 <h4>Payment Method</h4>
 <div class="form-group">

                        <div class="col-sm-8 inputGroupContainer">
                        <div class="input-group">
                              <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <input type="text" class="form-control"  name="CardNumber" placeholder="Debit/credit card number">
                     </div>
                </div>
                                     <div class="col-sm-4 inputGroupContainer">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                 <input type="text" class="form-control"  name="lname" placeholder="Security code / CVV ">
                      </div>
                </div>         
                </div>      
                <div class="form-group">
                  <label class="col-md-3 control-label"><h5>Expires</h5></label>
                        <div class="col-sm-3 ">
                        <div class="input-group">
                            
                      <select name="date1" class="form-control">
                      <option name="01">01</option>
                      <option name="02">02</option>
                      <option name="03">03</option>
                      <option name="04">04</option>
                      <option name="05">05</option>
                      <option name="06">06</option>
                      <option name="07">07</option>
                      <option name="08">08</option>
                      <option name="09">09</option>
                      <option name="10">10</option>
                      <option name="11">11</option>
                      <option name="12">12</option>
                     </select>
                     </div>
                </div>
                                     <div class="col-sm-3 ">
                        <div class="input-group">
                        
                <select name="date1" class="form-control">
                      <option name="2017">2017</option>
                      <option name="2018">2018</option>
                       <option name="2019">2019</option>
                      <option name="2020">2020</option> 
                      <option name="2021">2021</option>
                      <option name="2022">2022</option>
                       <option name="2023">2023</option>
                      <option name="2024">2024</option>
                     </select>
                      </div>
                </div>         
                </div>         
         
         <h3>We Accept</h3>
 <div class="col-sm-5" style="margin-top: 2px">
<img src="image/cards.png">
<img src="image/Bofa.png">
</div>


  </div>

      </div>
    </div>
  
       <div class="panel panel-default">
      <div class="panel-heading">
          <h4 class="panel-title">
            
            <button type="submit" class="btn btn-success" name="submit" id="submit" style="margin-left: 1100px">Add Card and Details</button>
			<button type="submit" class="btn btn-success" name="" id="" style="margin-left: 1100px"><a href="order_details.cfm">Continue</a></button>
          </h4>
      </div>
</div>
  <cfif isDefined("form.Submit")>
<cfquery name = 'payment' DATASOURCE="Project" DBTYPE="ODBC" >
			insert into ATL_Payment
	            VALUES(131,'#Form.firstname#','#Form.lname#','#Form.street#','#Form.city#',#Form.zip#,'#Form.phone#','#Form.email#','#Form.CardNumber#')

 </cfquery>
 </cfif>
	

 </cfform>
</body>
</html>