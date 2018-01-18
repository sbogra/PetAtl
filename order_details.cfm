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
  <CFquery Name="orderpage" DATASOURCE="Project" DBTYPE="ODBC">
 select * from Atl_Order_Details
where order_ID = 111 
  </CFquery>
  
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
       <li><a href="signup.cfm"><font color="green">logged in as</font><span class="glyphicon glyphicon-user"></span> Jasdev Singh </a></li>
            <li><a href="login.cfm"><span class="glyphicon glyphicon-log-in"></span> Signout</a></li>

      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid">    
  <div class="row">
                    <div class="col-sm-12" style="margin-top: 20px">
                    
                  <legend><b><h3>Order Details</h3></b>
                   Order on march|Order# 23744353946
                   <button class="btn btn-success" style="margin-left: 500px">View Or Print</button>
                 </legend>


</div>
</div>
   <form action="" class="form-horizontal">
  <div class="row">
  <CFOUTPUT query="orderpage">
                    <div class="col-sm-3" style="margin-top: 2px">
                  <h5><b>Shipping Address</b></h5>
                  #FNAME# #LNAME#<br>
                  #STREET#<br>
                  #CITY# GA #ZIPCODE#<br>
                  United States<br>
               <button>change</button>
                   </div>
                    <div class="col-sm-3" style="margin-top: 2px">
                  <h5><b>Payment Card Number</b></h5>
                  #CARD#<br>
                  
               <button>change</button>
                   </div>
                    <div class="col-sm-3" style="margin-top: 2px">
                  <h5><b>Apply Gift Card Balance</b></h5>
                   <input type="text" class="form-control"  name="fname" placeholder="Enter code"><br>
                 
               <button><a href="confirm.cfm">Apply Code and Confirm</a></button>
                   </div>
	</CFOUTPUT>
          <div class="col-sm-3" style="margin-top: 2px">
                  <h4><b>Order Summary</b></h4>
                  <table  style="width:100%">
                  <tr><td> Item($)Supportal</td><td align="right"> $51</td></tr>
                  <tr><td> Quantity = </td><td align="right"> 2</td></tr>
                  <tr><td> Item($)Supportal</td><td align="right"> $102</td></tr>				  
                  <tr><td>Shipping and Handling</td><td align="right">  $4.89</td></tr>
                  <tr><td> Free Shipping</td> <td align="right">(-) $4.67</td></tr>
                  <tr><td>Total before Tax</td><td align="right">  $51</td></tr>
                  <tr><td>Estimated Tax to be </td><td align="right"> $3.67</td></tr>
                  <tr><td>Collected </td></tr>
                 <tr><td> <b>Grand Total:</b></td><td align="right"><b> $105.89</b></td></tr>
                  </table>
                 </div>
              </div>
               <legend></legend>
                  <legend></legend>   

               <h2><b>You May Also Like</b></h2>
                <a href=""></a>
 <div class="row">
                    <div class="col-sm-3" style="margin-top: 2px">
<img src="image/1.jpg"><br>
<img src="image/2.jpg"><br>
<img src="image/3.jpg"><br>
<img src="image/4.jpg"><br>
</div>
 <div class="col-sm-6" style="margin-top: 2px">
  <a href="product_details3.cfm"> Pedigree Adult Dog Food Chicken & Vegetables, 3 kg Pack</a><br>
Buy:   $70.00<br>
Condition: New<br>
<button class="btn">Add gift option</button>
<button class="btn">Buy its Again</button>
<br><br><br><br><br><br><br><br><br><br><br>
 <a href="">Real Chicken and Fish protein-rich to help support strong muscles</a><br>
Buy:   $40.00<br>
Condition: New<br>
<button class="btn">Add gift option</button>
<button class="btn">Buy its Again</button>
<br><br><br><br><br><br><br>
 <a href="product_details5.cfm">Small Dog</a><br>
Buy:   $91.00<br>
Condition: New<br>
<button class="btn">Add gift option</button>
<button class="btn">Buy its Again</button>
<br><br><br><br><br><br><br><br>
 <a href="product_details.cfm">Canidae Grain</a><br>
Buy:   $51.00<br>
Condition: New<br>
<button class="btn">Add gift option</button>
<button class="btn">Buy its Again</button>

</div>
 <div class="col-sm-3" style="margin-top: 2px">
<button class="btn btn-success"  style="width: 300px">Track Package</button><br><br>
<button class="btn btn-success"  style="width: 300px"><a href="item_list.cfm">cancel items</button></a><br><br>
<button class="btn btn-success"  style="width: 300px">Archive Order</button><br><br>
 <h4><b>Shipping Speed</b></h5><br>
  <h5>FREE Shipping</h5>
<button class="btn"> Change</button><br><br>
<h4><b>Shipping Preference</b></h5><br>
  <h5>Group my items into as few <br>shipments as possible</h5>
  </div>
   </form>
</body>
</html>