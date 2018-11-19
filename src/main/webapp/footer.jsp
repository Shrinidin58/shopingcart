<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="com.teamsankya.shoppingcart.dto.Category" %>
<%@page import="com.teamsankya.shoppingcart.dto.Details" %>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .affix {
      top: 0;
      width: 100%;
  }
  .affix + .container-fluid {
      padding-top: 70px;
  }
   .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 20%;
      margin: auto;
  </style>
</head>
<body>

<header class="container-fluid" >
<nav class="navbar navbar-inverse navbar-fixed-top">
  <ul class="nav navbar-nav">
    <li class="active"><a href="#">Home</a></li>
    <li><a href="#">About</a></li>
	<li><a href="#">Contact Us</a></li>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span> Account</a></li>	
			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Track Orders</a></li>
		</ul>
		<div class="input-group input-group-sm col-xs-2">
		<input type="text" class="form-control" placeholder="Search">
		<div class="input-group-btn">
        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
		</div>
		</div>
       
  </ul>
</nav>
  
</header>


<script>
$(document).ready(function(){
    /* affix the navbar after scroll below header */
    $(".navbar").affix({offset: {top: $("header").outerHeight(true)} });
});
</script>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>  
    </ol>
<% List<Details> dbean=(List<Details>)request.getAttribute("detailsBean"); %>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="GUOU-Women-s-Watches-Luxury-Rhinestone-Diamond-Watch-Women-Watches-Genuine-Leather-Ladies-Watch-Clock-saat.jpg_640x640.jpg" alt="Chania" width="460" height="345">
     <div class="carousel-caption">
          <h3> <p class="text-success text-left">Get 50% off</p></h3>
          <h3><p class="text-success text-left">Watch out on new arrivals..</p></h3></h3>
        </div>
	 </div>

      <div class="item">
        <img src="OLGITUM-Hot-Sale-2018-New-Fashion-Big-Bag-Women-Shoulder-Messenger-Bag-Ladies-Handbag-HB001.jpg" alt="Chania" width="460" height="345">
		<div class="carousel-caption">
          <h3> <p class="text-success text-right">Get 40% off</p></h3>
          <h3><p class="text-success text-right">Get ready for new fashion..</p></h3></h3>
        </div>
      </div>
    
      <div class="item">
        <img src="images (1).jpg" alt="Flower" width="460" height="345">
		<div class="carousel-caption">
          <h3> <p class="text-success text-left">Get 20% off</p></h3>
          <h3><p class="text-success text-left">Get ready for your party..</p></h3></h3>
        </div>
      </div>

      <div class="item">
        <img src="download (1).jpg" alt="Flower" width="460" height="345">
		<div class="carousel-caption">
          <h3> <p class="text-success text-right">Get 10% off</p></h3>
          <h3><p class="text-success text-right">Time to change your bagpack..</p></h3></h3>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<!-- Adding products -->

<!-- <div class="container">
  <h3>You may like ..</h3
  <div class="row">
 
    <div class="col-md-2">
      <div class="thumbnail">
        <a href="3a1668b8511514a55f93e04b8b1a50d7.jpg" target="_blank">
          <img src="3a1668b8511514a55f93e04b8b1a50d7.jpg" alt="Lights" style="width:100%">
          <div class="caption">
		   <p class="text-success text-right">Ladies purse</p>
            <p> Upto 30% off + 10% off</p>
          </div>
        </a>
      </div>
    </div> -->
    <div class="col-md-2">
      <div class="thumbnail">
        <a href="51hipd+6JFL.jpg" target="_blank">
          <img src="51hipd+6JFL.jpg" alt="Nature" style="width:100%">
          <div class="caption">
          <p class="text-success text-right">Ladies Laptop Bagpack</p>
            <p> Upto 20% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
	<div class="col-md-2">
      <div class="thumbnail">
        <a href="OLGITUM-Hot-Sale-2018-New-Fashion-Big-Bag-Women-Shoulder-Messenger-Bag-Ladies-Handbag-HB001.jpg" target="_blank">
          <img src="OLGITUM-Hot-Sale-2018-New-Fashion-Big-Bag-Women-Shoulder-Messenger-Bag-Ladies-Handbag-HB001.jpg" alt="Nature" style="width:100%">
          <div class="caption">
          <p class="text-success text-right">Ladies Purse</p>
            <p> Upto 20% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-2">
      <div class="thumbnail">
        <a href="item_XL_30563046_108085039.jpg" target="_blank">
          <img src="item_XL_30563046_108085039.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p class="text-success text-right">Bagpack</p>
            <p> Upto 40% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
	 <div class="col-md-2">
      <div class="thumbnail">
        <a href="download (1).jpg" target="_blank">
          <img src="download (1).jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p class="text-success text-right">Bagpack</p>
            <p> Upto 30% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
	 <div class="col-md-2">
      <div class="thumbnail">
        <a href="item_XL_22652978_31337596.jpg" target="_blank">
          <img src="item_XL_22652978_31337596.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p class="text-success text-right">Boys Bagpack</p>
            <p> Upto 20% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>


<!-- <div class="container">
  <h3>Recommended for You ..</h3
  <div class="row">
 
    <div class="col-md-2">
      <div class="thumbnail">
        <a href="collection1.jpg" target="_blank">
          <img src="collection1.jpg" alt="Lights" style="width:100%">
          <div class="caption">
		   <p class="text-success text-right">Ladies watch</p>
            <p> Upto 30% off + 10% off</p>
          </div>
        </a>
      </div>
    </div> -->
    <div class="col-md-2">
      <div class="thumbnail">
        <a href="download.jpg" target="_blank">
          <img src="download.jpg" alt="Nature" style="width:100%">
          <div class="caption">
          <p class="text-success text-right">Ladies Combo watch</p>
            <p> Upto 20% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
	<div class="col-md-2">
      <div class="thumbnail">
        <a href="images (3).jpg" target="_blank">
          <img src="images (3).jpg" alt="Nature" style="width:100%">
          <div class="caption">
          <p class="text-success text-right">Boys watch</p>
            <p> Upto 20% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-2">
      <div class="thumbnail">
        <a href="71CkaXPDiKL._UX342_.jpg" target="_blank">
          <img src="71CkaXPDiKL._UX342_.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p class="text-success text-right">Boys watch</p>
            <p> Upto 40% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
	 <div class="col-md-2">
      <div class="thumbnail">
        <a href="KEVIN-New-Design-Women-Watches-Fashion-Black-Round-Dial-Stainless-Steel-Band-Quartz-Wrist-Watch-Mens.jpg_640x640.jpg" target="_blank">
          <img src="KEVIN-New-Design-Women-Watches-Fashion-Black-Round-Dial-Stainless-Steel-Band-Quartz-Wrist-Watch-Mens.jpg_640x640.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p class="text-success text-right">Black Watch for ladies</p>
            <p> Upto 30% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
	 <div class="col-md-2">
      <div class="thumbnail">
        <a href="2018-CURREN-Tag-Brand-Men-Fashion-Sport-Analog-Watches-Men-s-Casual-Quartz-Clock-Male-Full.jpg" target="_blank">
          <img src="2018-CURREN-Tag-Brand-Men-Fashion-Sport-Analog-Watches-Men-s-Casual-Quartz-Clock-Male-Full.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p class="text-success text-right">Black watch for boys</p>
            <p> Upto 20% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>

<div class="container">
 <!-- <h3>Watch out new offer for shows ..</h3
   <div class="row">
 
    <div class="col-md-2">
      <div class="thumbnail">
        <a href="blue-denim-high-top-canvas-shoes-for-girls-stylish-star-plimsolls-zipper-146241.jpg" target="_blank">
          <img src="blue-denim-high-top-canvas-shoes-for-girls-stylish-star-plimsolls-zipper-146241.jpg" alt="Lights" style="width:100%">
          <div class="caption">
		   <p class="text-success text-right">Blue denim ladies shoes</p>
            <p> Upto 30% off + 10% off</p>
          </div>
        </a>
      </div>
    </div> -->
    <div class="col-md-2">
      <div class="thumbnail">
        <a href="images (2).jpg" target="_blank">
          <img src="images (2).jpg" alt="Nature" style="width:100%">
          <div class="caption">
          <p class="text-success text-right">Party ware ladies shoes</p>
            <p> Upto 20% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
	<div class="col-md-2">
      <div class="thumbnail">
        <a href="61Ml7WVp0bL._UY500_.jpg" target="_blank">
          <img src="61Ml7WVp0bL._UY500_.jpg" alt="Nature" style="width:100%">
          <div class="caption">
          <p class="text-success text-right">Black Cat Show for ladies</p>
            <p> Upto 20% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-2">
      <div class="thumbnail">
        <a href="3-junior-114-lancer-original-imaf5ragr6d83udb.jpeg" target="_blank">
          <img src="3-junior-114-lancer-original-imaf5ragr6d83udb.jpeg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p class="text-success text-right">Blue shoes for boys</p>
            <p> Upto 40% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
	 <div class="col-md-2">
      <div class="thumbnail">
        <a href="9-bluenavy-wood-clerk-original-imaeuy5dtmyhchzm.jpeg" target="_blank">
          <img src="9-bluenavy-wood-clerk-original-imaeuy5dtmyhchzm.jpeg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p class="text-success text-right">Blue shoes for boys</p>
            <p> Upto 30% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
	 <div class="col-md-2">
      <div class="thumbnail">
        <a href="so-stylish-shoes-for-modern-young-generation-boys-sari-info-modern-mens-shoes-fashion.jpg" target="_blank">
          <img src="so-stylish-shoes-for-modern-young-generation-boys-sari-info-modern-mens-shoes-fashion.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p class="text-success text-right">Stylish shoes for boys</p>
            <p> Upto 20% off + 10% off</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>



  <!-- Pagination -->
<footer>
<div class="container">

  <ul class="pager">
    <li class="previous"><a href="#">Previous</a></li>
    <ul class="pagination pagination-sm">
	<li class="active"><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
	</ul>
    <li class="next"><a href="#">Next</a></li>
  </ul>

</div>
</footer>

</body>
</html>
