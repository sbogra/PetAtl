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
  <CFQUERY Name="productdetail" DATASOURCE="Project" DBTYPE="ODBC">
select * from atl_product
where prod_id=102
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
<CFOUTPUT query="productdetail">    
  <div class="row">
                       <div class="col-sm-12" style="margin-top: 20px">
                    </div>
                  </div>
                 <form action="" class="form-horizontal">
                  <h3>	<br>

<div class="row">
  <div class="col-sm-8">
    <div class="col-sm-4">
<img src="image/#image#.jpg">
</div>
<div class="col-sm-8">
<h1>#name#</h1><br>
  <img src="image/yellow.jpg" height="30px" width="50px"><img src="image/yellow.jpg" height="30px" width="50px">
   <img src="image/yellow.jpg" height="30px" width="50px"><img src="image/yellow.jpg" height="30px" width="50px">
   4 star customer reviews
   <legend></legend>
Price:    <font color="red"> PRICE - $#price#</font> <b>#Delivery#<br>
Inclusive of all taxes<br><br>
<br>
<br>
<font color="">PROPERTIES  </font>
<br>
<li>
Made of real chicken</li>
<li>
Help to maintain healthy body</li>
<li>
Keep bones and muscles strong</li>
<li>
Keeps coat shiny and healthy</li><br>
<h2> Manufacturer's Description</h2>
</br>
<b>#Description#</b><br>
  </div> 
   </div> 
   <div class="col-sm-4">
   <form action="">
 <div class="inner">
  <label for="qut" style="margin-left: 50px">Qunatity</label>
    <select name="qut" id=" qut">
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
  </select>
<br>
    <input type="image" name="submit"
    <legend></legend>
    <button class="btn btn-basic" style="width: 350px"><a href="cart.cfm">Buy Now</a></button>
  </div>
<br>
</form>
<div class="inner">
  <h4><b>Delivery Options</b></h4>
	<br>
  <b>#COD#</b><br> 
  </div>
  <div class="inner">
  <br>
    <h4><b>Manufacturer's Offer</b></h4>
	</br>
	<font color="red">#offer#</font>
  </div>
   </div>
   </div> 
   <legend></legend> 
     <h4><b><font color="red">Product Copyright</font></b></h4>   
	<br>
	<h4><b>Online Sell Copyright @PetATL</b></h4>

<legend></legend>
</div>
</form>
</CFOUTPUT>
</body>
</html>