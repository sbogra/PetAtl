<!DOCTYPE html>
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
     <a class="navbar-brand" href="#">PET ALT</a>
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
                    
                  <legend><b><h3>Your Cart <span style="margin-left: 1400px">Price</span></h3></b>
                  </legend>


</div>
</div>
   <form action="" class="form-horizontal">
  <div class="row">
   <div class="col-sm-2" style="margin-top: 2px">
<img src="image/4.jpg">
</div>
<div class="col-sm-8" style="margin-top: 2px">
<h4><a href="product_details.cfm">Canidae Grain Free</a></h4><br>
    <font color="black">Quantity :  </font><br>
   `<select name="date1" class="form-control">
                      <option name="01">01</option>
                      <option name="02">02</option>
                      <option name="03">03</option>
	</select>
   <font color="gray">by Canidae</font><br>
 

   <button type="submit" class="btn btn-success"  id="submit" style="width: 100px"><a href="item_list.cfm">Delete</a></button>
</div>
<div class="col-sm-offset-9">
 <font size="5px" color="red">$51.00</font><br><b>
</div>

  

</div>
<div class="row">
   <div class="col-sm-2" style="margin-top: 2px">
<img src="image/7.jpg">
</div>
<div class="col-sm-8" style="margin-top: 2px">
<h4><a href="product_details.cfm">Pedigree</a></h4><br>
   <font color="black">Quantity :  </font><br>
   `<select name="date1" class="form-control">
                      <option name="01">01</option>
                      <option name="02">02</option>
                      <option name="03">03</option>
	</select>
   <font color="gray">by Pedigree</font><br>
 
  <button type="submit" class="btn btn-success"  id="submit" style="width: 100px"><a href="payment.cfm">Buy Now</a></button>
   <button type="submit" class="btn btn-success"  id="submit" style="width: 100px"><a href="item_list.cfm">Delete</a></button>
</div>
<div class="col-sm-offset-9">
 <font size="5px" color="red">$70.00</font><br><b>
</div>

  

</div>
 <legend></legend>
            </div>       
   </form>
</body>
</html>