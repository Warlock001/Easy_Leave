﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
	<title>Easy Leave - Home</title>
	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Stitchery Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="css/darkbox.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" media="all">
	<link href="css/wimmViewer.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Work+Sans:200,300,400,500,600,700" rel="stylesheet">
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic'
	    rel='stylesheet' type='text/css'>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.3.5, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="./Free HTML Bootstrap Footer Template_files/logo2.png" type="image/x-icon">
  <meta name="description" content="Responsive Footer Template - Free Download">
  <title>Free HTML Bootstrap Footer Template</title>
  <link rel="stylesheet" href="./Free HTML Bootstrap Footer Template_files/mobirise-icons.css">
  <link rel="stylesheet" href="./Free HTML Bootstrap Footer Template_files/tether.min.css">
  <link rel="stylesheet" href="./Free HTML Bootstrap Footer Template_files/bootstrap.min.css">
  <link rel="stylesheet" href="./Free HTML Bootstrap Footer Template_files/bootstrap-grid.min.css">
  <link rel="stylesheet" href="./Free HTML Bootstrap Footer Template_files/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="./Free HTML Bootstrap Footer Template_files/styles.css">
  <link rel="stylesheet" href="./Free HTML Bootstrap Footer Template_files/style.css">
  <link rel="stylesheet" href="./Free HTML Bootstrap Footer Template_files/style(1).css">
  <link rel="stylesheet" href="./Free HTML Bootstrap Footer Template_files/mbr-additional.css" type="text/css">

</head>

<body>
	<!-- header -->
	<div class="header" id="home">
		<div class="banner_header_top_wthree">
			<div class="agileits-logo">
				<h1><a href="index.html"> <%--<i class="fa fa-scissors" aria-hidden="true"></i>--%> Easy Leave</a></h1>
			</div>
			<div class="header-top_agileits">
				<div class="container">
					<nav class="navbar navbar-default">
						<div class="navbar-header navbar-left">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
							<nav class="link-effect-2" id="link-effect-2">
							<form runat="server">	<ul style="display:inline;" class="nav navbar-nav"> 
									<li><a href="leaveinputform.aspx">New Leave</a></li>
									<li><a href="leavemanage.aspx">Leave Management</a></li>
									

									<%--<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span data-hover="Drop Down">Drop Down</span> <b class="caret"></b></a>
										<ul class="dropdown-menu agile_short_dropdown">
											<li><a href="#team" class="scroll">Team</a></li>
											<li><a href="#gallery" class="scroll">Gallery</a></li>
											<li><a href="#clients" class="scroll">Clients</a></li>
										</ul>
									</li>--%>
									<li><a href="dochome.aspx">Document View</a></li>
																	<li><a href="empcpass.aspx">Change Password</a></li>
                                    									<li><%--<a href="login.aspx">Logout</a></li>--%><asp:Button ID="logout_btn" runat="server" Text="  LOGOUT" Visible="True" BackColor="Black" ForeColor="White" BorderColor="Black" BorderStyle="Dashed" OnClick="logout_btn_Click" /> </li>

                                </ul> </form>
							</nav>
							<%--<div class="w3_agile_phone">
								<p><i class="fa fa-phone" aria-hidden="true"></i>+0471 2405344</p>
							</div>--%>
						</div>

					</nav>

				</div>
			</div>
		</div>
		<!-- banner -->
		<%--<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<%--<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
				<li data-target="#myCarousel" data-slide-to="3" class=""></li>
	--%>		</ol>
			<%--<div class="carousel-inner" role="listbox">
				<div class="item active">
					<div class="container">
						<div class="carousel-caption">
							<h3>Take a Break, From<span> Work Life.</span></h3>
							<p>Apply Easyleave</p>
							<div class="agileits-button top_ban_agile">
								<a class="btn btn-primary btn-lg scroll" href="#welcome" role="button">Read more »</a>
							</div>
						</div>
					</div>
				</div>
				<%--<div class="item item2">
					<div class="container">
						<div class="carousel-caption">
							<h3>Discover True <span>Quality</span></h3>
							<p>Custom Tailoring</p>
							<div class="agileits-button top_ban_agile">
								<a class="btn btn-primary btn-lg scroll" href="#welcome" role="button">Read more »</a>
							</div>
						</div>
					</div>
				</div>--%>
				<%--<div class="item item3">
					<div class="container">
						<div class="carousel-caption">
							<h3>Your Design, We <span>Deliver</span></h3>
							<p>Suit Resizing</p>
							<div class="agileits-button top_ban_agile">
								<a class="btn btn-primary btn-lg scroll" href="#welcome" role="button">Read more »</a>
							</div>
						</div>
					</div>
				</div>--%>
				<%--<div class="item item4">
					<div class="container">
						<div class="carousel-caption">
							<h3>Discover True <span>Quality</span></h3>
							<p>Custom Tailoring</p>
							<div class="agileits-button top_ban_agile">
								<a class="btn btn-primary btn-lg scroll" href="#welcome" role="button">Read more »</a>
							</div>
						</div>
					</div>
				</div>--%>
			<%--</div>
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>--%>
			<!-- The Modal -->
		<%--</div>--%>
		<!--//banner -->
		<!-- /about -->
		<%--<div class="about" id="welcome">
			<div class="container">
				<h2>Your Personal Tailor For Unique People Only </h2>
				<h3 class="w3l_header w3_agileits_header two">Welcome to our <span>Stitchery</span></h3>
				<div class="agile_wthree_inner_grids">

					<div class="col-md-6 about_agileinfo">
						<h4>Why Custom Tailoring</h4>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard
							dummy text ever since the 1500s but also the leap into electronic typesetting dolor amet.</p>

						<p>Integer laoreet ultricies nunc, vitae eleifend elit rutrum sit amet. In elementum, magna id pellentesque auctor, risus
							dolor congue urna, nec dapibus eros magna a odio. Duis laoreet risus eget malesuada consequat. Nunc et tortor dignissim,
							laoreet est eget</p>
						<div class="agileits-button two">
							<a class="btn btn-primary btn-lg scroll" href="#services" role="button">Services Info »</a>
						</div>
					</div>
					<div class="col-md-6 about_agileinfo_grid_imgs">
						<img src="images/ab.jpg" alt="" />
						<div class="aboutimg">
							<img src="images/ab2.jpg" alt="" />
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>--%>
		<!--//about -->
		<!-- Modal4 -->
		<%--<div class="modal fade" id="myModal4" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<div class="modal-info">
							<h4>Stitchery</h4>
							<img src="images/banner2.jpg" alt=" " class="img-responsive" />
							<h5>Sub Heading here</h5>
							<p class="para-agileits-w3layouts">Duis sit amet nisi quis leo fermentum vestibulum vitae eget augue. Nulla quam nunc, vulputate id urna at, tempor tincidunt
								metus. Sed feugiat quam nec mauris mattis malesuada.</p>
						</div>
					</div>
				</div>
			</div>
		</div>--%>
		<!-- //Modal4 -->

		<!-- services -->
		<%--<div class="services" id="services">
			<div class="container">
				<h3 class="w3l_header w3_agileits_header two">What We <span>Do</span></h3>

				<div class="agile_wthree_inner_grids">
					<div class="col-md-4 w3ls_services_agile-grid">
						<div class="agile_w3l_service_icon">
							<i class="fa fa-female" aria-hidden="true"></i>
						</div>
						<div class="agileits-service-info">
							<h5>Natural Materials</h5>
							<span></span>
							<p>Lorem sed nisi leo. Ut at sagittis nisi. Cras porttitor a purus ac rutrum. </p>
						</div>
					</div>
					<div class="col-md-4 w3ls_services_agile-grid">
						<div class="agile_w3l_service_icon">
							<i class="fa fa-bolt" aria-hidden="true"></i>
						</div>
						<div class="agileits-service-info">
							<h5>Craftsmanship</h5>
							<span></span>
							<p>Lorem sed nisi leo. Ut at sagittis nisi. Cras porttitor a purus ac rutrum. </p>
						</div>
					</div>
					<div class="col-md-4 w3ls_services_agile-grid">
						<div class="agile_w3l_service_icon">
							<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
						</div>
						<div class="agileits-service-info">
							<h5>Unique Design</h5>
							<span></span>
							<p>Lorem sed nisi leo. Ut at sagittis nisi. Cras porttitor a purus ac rutrum. </p>
						</div>
					</div>
					<div class="col-md-4 w3ls_services_agile-grid two">
						<div class="agile_w3l_service_icon">
							<i class="fa fa-scissors" aria-hidden="true"></i>
						</div>
						<div class="agileits-service-info">
							<h5>Alterations</h5>
							<span></span>
							<p>Lorem sed nisi leo. Ut at sagittis nisi. Cras porttitor a purus ac rutrum.</p>
						</div>
					</div>
					<div class="col-md-4 w3ls_services_agile-grid two">
						<div class="agile_w3l_service_icon">
							<i class="fa fa-fire-extinguisher" aria-hidden="true"></i>
						</div>
						<div class="agileits-service-info">
							<h5>Repairs</h5>
							<span></span>
							<p>Lorem sed nisi leo. Ut at sagittis nisi. Cras porttitor a purus ac rutrum. </p>
						</div>
					</div>
					<div class="col-md-4 w3ls_services_agile-grid two">
						<div class="agile_w3l_service_icon">
							<i class="fa fa-thumb-tack" aria-hidden="true"></i>
						</div>
						<div class="agileits-service-info">
							<h5>Bridal</h5>
							<span></span>
							<p>Lorem sed nisi leo. Ut at sagittis nisi. Cras porttitor a purus ac rutrum. </p>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>--%>
		<!-- //services -->
		<!-- team -->
		<%--<div id="team" class="team">
			<div class="container">
				<h3 class="w3l_header w3_agileits_header two">Amazing <span>Team</span></h3>
				<div class="w3_agile_team_grids">
					<div class="col-md-3 w3_agile_team_grid">
						<img src="images/t2.jpg" alt=" " class="img-responsive" />
						<h3>Amanda Seylon</h3>
						<p>Designer</p>
						<ul class="footer_list_icons team_icons_agile">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>

						</ul>
					</div>
					<div class="col-md-3 w3_agile_team_grid">
						<img src="images/t1.jpg" alt=" " class="img-responsive" />
						<h3>Laura Mark</h3>
						<p>Designer</p>
						<ul class="footer_list_icons team_icons_agile">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>

						</ul>
					</div>
					<div class="col-md-3 w3_agile_team_grid">
						<img src="images/t3.jpg" alt=" " class="img-responsive" />
						<h3>Lusiana James</h3>
						<p>Designer</p>
						<ul class="footer_list_icons team_icons_agile">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>

						</ul>
					</div>
					<div class="col-md-3 w3_agile_team_grid">
						<img src="images/t4.jpg" alt=" " class="img-responsive" />
						<h3>John Mark</h3>
						<p>Designer</p>
						<ul class="footer_list_icons team_icons_agile">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>

						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>--%>
		<!-- team -->
		<!-- /gallery -->
		<%--<div class="gallery" id="gallery">
			<h3 class="w3l_header w3_agileits_header two">Our <span>Designs</span></h3>--%>
			<%--<div class="agile_wthree_inner_grids">
				<div class="agile_port_w3ls_info">
					<div class="col-md-6 agile_gallery_grid_left">
						<div class="col-md-6 agile_gallery_grid">
							<img src="images/g1.jpg" data-darkbox="images/g1.jpg" data-darkbox-description="<b>Add Short description</b><br>Lorem ipsum dolor sit amet">
						</div>
						<div class="col-md-6 agile_gallery_grid">
							<img src="images/g2.jpg" data-darkbox="images/g2.jpg" data-darkbox-description="<b>Add Short description</b><br>Lorem ipsum dolor sit amet">
						</div>
						<div class="col-md-6 agile_gallery_grid">
							<img src="images/g3.jpg" data-darkbox="images/g3.jpg" data-darkbox-description="<b>Add Short description</b><br>Lorem ipsum dolor sit amet">
						</div>
					</div>
					<div class="col-md-6 agile_gallery_grid_left">

						<div class="col-md-6 agile_gallery_grid">
							<img src="images/g5.jpg" data-darkbox="images/g5.jpg" data-darkbox-description="<b>Add Short description</b><br>Lorem ipsum dolor sit amet">
						</div>
						<div class="col-md-6 agile_gallery_grid">
							<img src="images/g4.jpg" data-darkbox="images/g4.jpg" data-darkbox-description="<b>Add Short description</b><br>Lorem ipsum dolor sit amet">
						</div>
						<div class="col-md-6 agile_gallery_grid">
							<img src="images/g6.jpg" data-darkbox="images/g6.jpg" data-darkbox-description="<b>Add Short description</b><br>Lorem ipsum dolor sit amet">
						</div>
					</div>
					<div class="clearfix"> </div>

				</div>
				<!-- //gallery -->
				<!--/slider-->
				<div class="sub_section" id="last_bottom_agile">
					<div class="container">
						<h3 class="w3l_header w3_agileits_header two">Current <span>Offers</span></h3>
						<div class="agile_wthree_inner_grids">
							<div class="col-md-6 menu_w3ls_agile_top_section">
								<h4 class="agile_sub_tittle">Current Offers</h4>
								<div class="panel-group about_panel" id="accordion" role="tablist" aria-multiselectable="true">
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingOne">
											<h4 class="panel-title asd">
												<a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true"
												    aria-controls="collapseOne">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>	Alterations
										</a>
											</h4>
										</div>
										<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
											<div class="panel-body panel_text">
												Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
												cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingTwo">
											<h4 class="panel-title asd">
												<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false"
												    aria-controls="collapseTwo">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>	Repairs
										</a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
											<div class="panel-body panel_text">
												Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
												cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingThree">
											<h4 class="panel-title asd">
												<a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false"
												    aria-controls="collapseThree">
										<span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>	Bridal
										</a>
											</h4>
										</div>
										<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
											<div class="panel-body panel_text">
												Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
												cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 sub-slider">
								<h4 class="agile_sub_tittle">Latest Photos</h4>
								<div id="slider1">
									<div class="carousel">
										<ul class="carousel_inner">
											<li class="item" style="background-image: url(images/banner1.jpg);" data-url="images/banner1.jpg">
											</li>
											<li class="item" style="background-image: url(images/banner2.jpg);" data-url="images/banner2.jpg">
											</li>
											<li class="item" style="background-image: url(images/banner3.jpg);" data-url="images/banner3.jpg">
											</li>
											<li class="item" style="background-image: url(images/banner4.jpg);" data-url="images/banner4.jpg">
											</li>
											<li class="item" style="background-image: url(images/banner1.jpg);" data-url="images/banner1.jpg">
											</li>
											<li class="item" style="background-image: url(images/banner2.jpg);" data-url="images/banner2.jpg">
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
				<!--//slider-->

				<!-- /we-offer -->
				<div class="sale-w3ls">
					<div class="container">
						<h6>Need a <span>Clothing</span> Repaire in a hurry</h6>

						<div class="agileits-button">
							<a class="btn btn-primary btn-lg" href="#" role="button" data-toggle="modal" data-target="#myModal4">Read more »</a>
						</div>
					</div>
				</div>
				<!-- //we-offer -->
				<!--/ pricing-->
				<div class="pricing" id="pricing">
					<div class="container">
						<h3 class="w3l_header w3_agileits_header two">Pricing <span>Plans</span></h3>
						<div class="agile_wthree_inner_grids">
							<div class="pring_agile_its w3-agile">
								<div class="col-md-4 pricing_inner_w3ls">
									<div class="pricing-top">
										<h3>Normal</h3>
										<p>$<span>35</span>/Per alter</p>
									</div>
									<div class="pricing-bottom">
										<div class="pricing-bottom-bottom">
											<p><span>Pants - shorten/</span>lengthen</p>
											<p><span>Taper </span>pants</p>
											<p><span>Suit jackets - </span>shorten sleeves</p>
											<p><span>Blouse</span>shorten sleeves</p>
											<p class="text"><span>Blouses</span> narrow tank top</p>
										</div>

										<div class="sign w3-agile text-center">
											<a class="popup-with-zoom-anim" href="#small-dialog">BOOK NOW</a>
										</div>
									</div>
								</div>
								<div class="col-md-4 pricing_inner_w3ls">
									<div class="pricing-top orange">
										<h3>Professional</h3>
										<p>$<span>175</span> /Per alter</p>
									</div>
									<div class="pricing-bottom">
										<div class="pricing-bottom-bottom">
											<p><span>Pants - shorten/</span>lengthen</p>
											<p><span>Taper </span>pants</p>
											<p><span>Suit jackets - </span>shorten sleeves</p>
											<p><span>Blouse</span>shorten sleeves</p>
											<p class="text"><span>Blouses</span> narrow tank top</p>
										</div>

										<div class="sign w3-agile text-center">
											<a class="popup-with-zoom-anim orange" href="#small-dialog">BOOK NOW</a>
										</div>
									</div>
								</div>
								<div class="col-md-4 pricing_inner_w3ls">
									<div class="pricing-top purple">
										<h3>Special</h3>
										<p>$<span>190</span>/ Per alter</p>
									</div>
									<div class="pricing-bottom">
										<div class="pricing-bottom-bottom">
											<p><span>Pants - shorten/</span>lengthen</p>
											<p><span>Taper </span>pants</p>
											<p><span>Suit jackets - </span>shorten sleeves</p>
											<p><span>Blouse</span>shorten sleeves</p>
											<p class="text"><span>Blouses</span> narrow tank top</p>
										</div>

										<div class="sign w3-agile text-center">
											<a class="popup-with-zoom-anim purple" href="#small-dialog">BOOK NOW</a>
										</div>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- Popup-Box -->
				<div id="popup">

					<div id="small-dialog" class="mfp-hide agileinfo">
						<div class="pop_up">
							<div class="payment-online-form-left w3-agileits">
								<form action="#" method="post">
									<h4>Personal Details</h4>
									<ul>
										<li><input type="text" name="First Name" placeholder="First Name" required=""></li>
										<li><input type="text" name="Last Name" placeholder="Last Name" required=""></li>
									</ul>
									<ul>
										<li><input type="email" class="email" name="Email" placeholder="Email" required=""></li>
										<li><input type="text" name="Number" placeholder="Mobile Number" required=""></li>
									</ul>
									<textarea name="Message" placeholder="Address..." required=""></textarea>
									<div class="clearfix"></div>

									<ul class="payment-sendbtns">
										<li><input type="reset" value="Reset"></li>
										<li><input type="submit" name="Send" value="Send"></li>
									</ul>
									<div class="clearfix"></div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<button title="Close (Esc)" type="button" class="mfp-close w3-agileits">×</button>
				<!-- //Popup-Box -->

				<!--// pricing-->
				<!-- /testimonials-->
				<div class="agile_testimonials" id="clients">
					<h3 class="w3l_header w3_agileits_header two">What Clients <span class="agile_says">Say</span></h3>

					<div class="agile_wthree_inner_grids">
						<div class="col-md-6 testmonial_agile_info">
							<h4 class="agile_sub_tittle">Some Few Words</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at placerat ante. Praesent nulla nunc, pretium
								dapibus efficitur in, auctor eget elit. Lorem ipsum dolor sit amet fusce eget erat nunc..</p>
							<div class="agileits-button two">
								<a class="btn btn-primary btn-lg" href="#" role="button" data-toggle="modal" data-target="#myModal4">More Details »</a>
							</div>
						</div>
						<div class="col-md-6 clients_agile_slider">
							<div id="owl-demo" class="owl-carousel owl-theme">
								<div class="item">
									<div class="agile_tesimonials_content">
										<div class="about-midd-main">
											<img class="agile-img" src="images/c1.png" alt=" " class="img-responsive">
											<h4>Smith Kevin</h4>
											<p> Lorem ipsum adipiscing elit, sed do eiusmod idunt ut labore. sed do eiusmod tempor incididunt.</p>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="agile_tesimonials_content">
										<div class="about-midd-main">
											<img class="agile-img" src="images/c2.png" alt=" " class="img-responsive">
											<h4>Laura Hill</h4>
											<p> Lorem ipsum adipiscing elit, sed do eiusmod idunt ut labore. sed do eiusmod tempor incididunt.</p>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="agile_tesimonials_content">
										<div class="about-midd-main">
											<img class="agile-img" src="images/c3.png" alt=" " class="img-responsive">
											<h4>Thomson Doe</h4>
											<p> Lorem ipsum adipiscing elit, sed do eiusmod idunt ut labore. sed do eiusmod tempor incididunt.</p>
										</div>
									</div>
								</div>

							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<!-- //testimonials-->
				<!--contact-->
				<div class="contact-w3layouts" id="contact">
					<div class="container">
						<h3 class="w3l_header w3_agileits_header two">Contact <span>Us</span></h3>
						<div class="agile_wthree_inner_grids">
							<div class="col-md-6 contact-agileits-w3layouts-left">
								<h4 class="agile_sub_tittle">More Details</h4>
								<p class="para-agileits-w3layouts">Malesuada penatibus felis Neque porro quisquam est qui dolorem Lorem ipsum dolor sit amet, aptent neque fringilla
									duis erast ridiculus.</p>
								<p class="sub"><i class="fa fa-map-marker" aria-hidden="true"></i> California St San Francisco, CA USA</p>
								<p class="sub"><i class="fa fa-clock-o" aria-hidden="true"></i> Mon-Fri : 9am - 10pm. Sat : 9am - 12pm</p>
								<p class="add"><i class="fa fa-phone" aria-hidden="true"></i> <span>Tel :</span> +0 (020) 123-5338</p>
								<p class="add"><i class="fa fa-envelope-o" aria-hidden="true"></i> <span>Email :</span> <a class="mail" href="mailto:mail@example.com">info(at)example.com</a></p>
							</div>
							<div class="col-md-6 mail-grid1-form ">
								<h4 class="agile_sub_tittle">Contact Form</h4>
								<form action="#" method="post">
									<input type="text" name="Name" placeholder="Name" required="" />
									<input type="text" name="phone number" placeholder="Phone Number" required="" />
									<input type="email" name="Email" placeholder="Email" required="" />
									<textarea name="Message" placeholder="Type Your Text Here...." required=""></textarea>
									<input type="submit" value="Submit" />
								</form>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<!--//contact-->
				<div class="agileits-w3layouts-map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d100949.24429313939!2d-122.44206553967531!3d37.75102885910819!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80859a6d00690021%3A0x4a501367f076adff!2sSan+Francisco%2C+CA%2C+USA!5e0!3m2!1sen!2sin!4v1472190196783"
					    style="border:0" allowfullscreen></iframe>
				</div>

				<!--/grids-->
				<div class="coupons">
					<div class="coupons-grids text-center">
						<div class="w3layouts_mail_grid">
							<div class="col-md-3 w3layouts_mail_grid_left">
								<div class="w3layouts_mail_grid_left1 hvr-radial-out">
									<i class="fa fa-truck" aria-hidden="true"></i>
								</div>
								<div class="w3layouts_mail_grid_left2">
									<h3>Free Shipping</h3>
									<p>Lorem ipsum dolor sit amet, consectetur</p>
								</div>
							</div>
							<div class="col-md-3 w3layouts_mail_grid_left">
								<div class="w3layouts_mail_grid_left1 hvr-radial-out">
									<i class="fa fa-headphones" aria-hidden="true"></i>
								</div>
								<div class="w3layouts_mail_grid_left2">
									<h3>24/7 Support</h3>
									<p>Lorem ipsum dolor sit amet, consectetur</p>
								</div>
							</div>
							<div class="col-md-3 w3layouts_mail_grid_left">
								<div class="w3layouts_mail_grid_left1 hvr-radial-out">
									<i class="fa fa-shopping-bag" aria-hidden="true"></i>
								</div>
								<div class="w3layouts_mail_grid_left2">
									<h3>Money Back Guarantee</h3>
									<p>Lorem ipsum dolor sit amet, consectetur</p>
								</div>
							</div>
							<div class="col-md-3 w3layouts_mail_grid_left">
								<div class="w3layouts_mail_grid_left1 hvr-radial-out">
									<i class="fa fa-gift" aria-hidden="true"></i>
								</div>
								<div class="w3layouts_mail_grid_left2">
									<h3>Free Gift Coupons</h3>
									<p>Lorem ipsum dolor sit amet, consectetur</p>
								</div>
							</div>
							<div class="clearfix"> </div>
						</div>

					</div>
				</div>
				<!--grids-->

				<!-- footer -->
				<footer>
					<div class="footer-top_agile_w3l">
						<div class="container">
							<div class="footer-grids">
								<div class="col-md-5 footer-grid_wthree_info">
									<h3>About us</h3>
									<p>Lorem ipsum dolor sit consectetur elit. Nam eget egestas erat. In hachabi tasse platea dictumst. hachabi tasse platea
										dictumst</p>
									<p>Lorem ipsum dolor sit consectetur elit. Nam eget egestas erat. In hachabi tasse platea dictumst.</p>
									<ul class="footer_list_icons">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
										<li><a href="#"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
										<li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
									</ul>
								</div>
								<div class="col-md-2 footer-grid_wthree_info">
									<h3>Links</h3>
									<ul class="footer-list">
										<li> <a href="#welcome" class="scroll">About</a> </li>
										<li> <a href="#pricing" class="scroll">pricing</a> </li>
										<li> <a href="#team" class="scroll">team</a> </li>
										<li> <a href="#clients" class="scroll">testimonials</a> </li>
										<li> <a href="#services" class="scroll">Services</a> </li>
										<li> <a href="#contact" class="scroll">contact</a> </li>
									</ul>
								</div>
								<div class="col-md-5 footer-grid_wthree_info">
									<h3>Newsletter</h3>
									<form action="#" method="post">
										<input type="text" name="text" placeholder="Name" required="">
										<input type="email" name="Email" placeholder="Email" required="">
										<input type="submit" value="subscribe now">
									</form>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="wthree_copy_right">
								<p>Copyright 2017 Stitcher. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
							</div>
						</div>
					</div>
					
			</div>--%>
			</footer>
			<!-- //footer -->
<%--			<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>--%>
			<!-- js -->
			<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		   <!-- start-smoth-scrolling -->
			<script type="text/javascript" src="js/move-top.js"></script>
			<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->	
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->  
			<script type="text/javascript" src="js/darkbox.js"></script>
			<script src="js/wimmViewer.js"></script>
			<script>
				$(function () {
					$('#slider1').WimmViewer({
						miniatureWidth: 100,
						miniatureHeight: 100
						// Availables customizations:
						/*
						 miniatureSpace: 10,
						 nextText:'Next',
						 prevText:'Prev',
						 onImgChange : function() { console.log('changed'); },
						 onNext : function() { console.log('next'); },
						 onPrev : function() { console.log('previous'); },
						 */
					});
				})
			</script>
			<!-- for pricing -->
			<!-- Pricing-Popup-Box-JavaScript -->
			<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!-- //Pricing-Popup-Box-JavaScript -->
			<!-- carousel -->
			<script src="js/owl.carousel.js"></script>
			<!-- //carousel -->
			<!-- for bootstrap working -->
			<script type="text/javascript" src="js/customJquery.js"></script>
			<script type="text/javascript" src="js/bootstrap.js"></script>
     <br />  <br /> <br /> <h1 style="text-align:center; font-size: x-large;">Welcome <asp:Label ID="empname_lbl" runat="server" Text="Label"></asp:Label></h1>
        <br /><p style="text-align:center; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: large; text-decoration: underline;">Your Leave Status:</p> <br />
        <p style="text-align:center; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; font-size: large;">Approved: <asp:Label ID="app_lbl" runat="server" Text="Label" ForeColor="#66FF33"></asp:Label> &nbsp;&nbsp;&nbsp; Pending: <asp:Label ID="nonapp_lbl" runat="server" Text="Label" ForeColor="#FF6600"></asp:Label> &nbsp;&nbsp;&nbsp; Rejected: <asp:Label ID="rej_lbl" runat="server" Text="Label" ForeColor="Red"></asp:Label> </p>
<footer style="position:absolute;
   bottom:0;
   width:100%;
   height:100px;">

    <%--<section class="cid-qv5ALrxDIE" id="footer5-3j" data-rv-view="8793">

    

    

    <div class="container">
        <div class="media-container-row">
            <div class="col-md-3">
                <div class="media-wrap">
                    <a href="https://mobirise.com/">
                       <img src="./Free HTML Bootstrap Footer Template_files/logo2.png" alt="Mobirise" media-simple="true">
                    </a>
                </div>
            </div>
            <div class="col-md-9">
                <p class="mbr-text align-right links mbr-fonts-style display-7">
                    <a href="https://mobirise.com/bootstrap-template/footer-template.html#" class="text-black">ABOUT</a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="https://mobirise.com/bootstrap-template/footer-template.html#" class="text-black">TERMS</a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="https://mobirise.com/bootstrap-template/footer-template.html#" class="text-black">CAREERS</a> &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="https://mobirise.com/bootstrap-template/footer-template.html#" class="text-black">CONTACT</a>
                </p>
            </div>
        </div>
        <div class="footer-lower">
            <div class="media-container-row">
                <div class="col-md-12">
                    <hr>
                </div>
            </div>
            <div class="media-container-row mbr-white">
                <div class="col-md-6 copyright">
                    <p class="mbr-text mbr-fonts-style display-7">
                        © Copyright 2017 Footer Template- All Rights Reserved
                    </p>
                </div>
                <div class="col-md-6">
                    <div class="social-list align-right">
                        <div class="soc-item">
                            <a href="https://twitter.com/mobirise" target="_blank">
                                <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.facebook.com/pages/Mobirise/1616226671953247" target="_blank">
                                <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.youtube.com/c/mobirise" target="_blank">
                                <span class="socicon-youtube socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://instagram.com/mobirise" target="_blank">
                                <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://plus.google.com/u/0/+Mobirise" target="_blank">
                                <span class="socicon-googleplus socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                        <div class="soc-item">
                            <a href="https://www.behance.net/Mobirise" target="_blank">
                                <span class="socicon-behance socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>--%>

<section once="" class="cid-qv5ALL8e7H" id="footer7-3k" data-rv-view="8796">

    

    <div class="mbr-overlay" style="opacity: 0.4; background-color: rgb(51, 42, 104);"></div>

    <div class="container">
        <div class="media-container-row align-center mbr-white">
            <div class="row">
               <%-- <ul class="foot-menu">
                    
                    
                    
                    
                    
                <li class="foot-menu-item mbr-fonts-style display-7">
                        <a class="text-white mbr-bold" href="https://mobirise.com/bootstrap-template/footer-template.html#" target="_blank">About us</a>
                    </li><li class="foot-menu-item mbr-fonts-style display-7">
                        <a class="text-white mbr-bold" href="https://mobirise.com/bootstrap-template/footer-template.html#" target="_blank">Services</a>
                    </li><li class="foot-menu-item mbr-fonts-style display-7">
                        <a class="text-white mbr-bold" href="https://mobirise.com/bootstrap-template/footer-template.html#" target="_blank">Get In Touch</a>
                    </li><li class="foot-menu-item mbr-fonts-style display-7">
                        <a class="text-white mbr-bold" href="https://mobirise.com/bootstrap-template/footer-template.html#" target="_blank">Careers</a>
                    </li><li class="foot-menu-item mbr-fonts-style display-7">
                        <a class="text-white mbr-bold" href="https://mobirise.com/bootstrap-template/footer-template.html#" target="_blank">Work</a>
                    </li></ul>--%>
            </div>
            <div class="row">
                <div class="social-list align-right pb-2">
                    
                    
                    
                    
                    
                    
                <div class="soc-item">
                        <a href="https://twitter.com/mobirise" target="_blank">
                            <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                        </a>
                    </div><div class="soc-item">
                        <a href="https://www.facebook.com/pages/Mobirise/1616226671953247" target="_blank">
                            <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                        </a>
                    </div><div class="soc-item">
                        <a href="https://www.youtube.com/c/mobirise" target="_blank">
                            <span class="socicon-youtube socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                        </a>
                    </div><div class="soc-item">
                        <a href="https://instagram.com/mobirise" target="_blank">
                            <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                        </a>
                    </div><div class="soc-item">
                        <a href="https://plus.google.com/u/0/+Mobirise" target="_blank">
                            <span class="socicon-googleplus socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                        </a>
                    </div><div class="soc-item">
                        <a href="https://www.behance.net/Mobirise" target="_blank">
                            <span class="socicon-behance socicon mbr-iconfont mbr-iconfont-social" media-simple="true"></span>
                        </a>
                    </div></div>
            </div>
            <div class="row row-copirayt">
                <p class="mbr-text mb-0 mbr-fonts-style mbr-white display-7">
                    © Copyright 2017 <a href="https://mobirise.com/bootstrap-template/" class="text-white">WhiteOval Technologies PVT LTD</a> - All Rights Reserved
                </p>
            </div>
        </div>
    </div>
</section>


</footer>
</body>

</html>