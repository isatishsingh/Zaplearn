<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="WebApplication1.AdminDashboard" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="author" content="GridTemplate">
    <!--====== Title ======-->
    <!-- Google Tag Manager -->
<script>(function (w, d, s, l, i) {
        w[l] = w[l] || []; w[l].push({
            'gtm.start':
                new Date().getTime(), event: 'gtm.js'
        }); var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-KSZPFBPQ');</script>
<!-- End Google Tag Manager -->
    <title>Zaplearn</title>
    
    <meta name="description" content=""/>

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="img/favicon/z-high-resolution-logo-black-transparent.png" sizes="16x16" type="image/png"/>
        
    <!--====== animate CSS ======-->
    <link rel="stylesheet" href="assets/css/animate.css"/>
	<!-- <link href="css/sb-admin-2.min.css" rel="stylesheet"> -->

    <!--====== icofont.min CSS ======-->
    <link rel="stylesheet" href="assets/fonts/icofont.min.css"/>

        <!--====== Magnific Popup CSS ======-->
    <link rel="stylesheet" href="assets/css/magnific-popup.css"/>
        
    <!--====== Slick CSS ======-->
    <link rel="stylesheet" href="assets/css/slick.css"/>
        
    <!--====== Bootstrap CSS ======-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    
    <!--====== Default CSS ======-->
    <link rel="stylesheet" href="assets/css/default.css"/>
    
    <!--====== Style CSS ======-->
    <link rel="stylesheet" href="assets/css/style.css"/>
	
	<!-- Custom fonts for this template-->
    <link href="SBvendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: auto;}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
    .device-d-flex{

        @media (max-width: 767px) {
            display: flex;
        }

}
  </style>
</head>
<body >
    <form runat ="server" id="form1">
    <div class="gridtemplate-loader">
        <div class="preloader">
             <div class="spinner"></div>
            <img   class="preload-logo" src="img/asset 0.png">
        </div> 
    </div>


    <!--====== PRELOADER PART ENDS ======-->

    <!--====== HEADER PART START ======-->



    <section class="header_area_style3">
        <div class="header_navbar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg">
                            <a class="navbar-brand logo" href="AdminDashboard.aspx">
                                <img src="img/asset 1.png" class="white-logo" alt="Logo">
                                <img src="img/asset 0.png" class="light-logo" alt="Logo">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul id="nav" class="navbar-nav ml-auto" style="float:right">
                                    <li class="nav-item active">
                                        <a class="page-scroll" href="AdminDashboard.aspx" style="text-decoration:none">Dashboard</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page-scroll" href="AdminGigsnUsers.aspx" style="text-decoration:none">Manage Users and Gigs</a>
                                    </li>
                                    
                                </ul>
                            </div> <!-- navbar collapse -->
                            <div class="button">
                                <asp:LinkButton ID="LinkButton1" OnClick="lc" class="btn-inline btn main-btn-inline" runat="server" style="font-size : 20px; background-color : white">Log Out</asp:LinkButton>
                            </div>

                        </nav> <!-- navbar -->
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div> <!-- header navbar -->

        



           <div id="team" class="team_area_style3  pt-130">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 col-md-12">
                <div class="section_title text-center pb-25 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Admin Dashboard</h2>
                        
                    </div>
                </div>
            </div>

            <!-- <nav class="navbar navbar-inverse visible-xs">
				  <div class="container-fluid">
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					  </button>
					  <a class="navbar-brand" href="#">Logo</a>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
					  <ul class="nav navbar-nav">
						<li class="active"><a href="#">Dashboard</a></li>
						<li><a href="#">Age</a></li>
						<li><a href="#">Gender</a></li>
						<li><a href="#">Geo</a></li>
					  </ul>
					</div>
				  </div>
				</nav> -->

				<div class="container-fluid">
				  <div class="row content">
					
					<br>
					
					<div class="col-sm-12">
					  
					  <div class="row">
						<div class="col-sm-4 device-d-flex">
						  <div class="well w-100">
							<h4>Total Users</h4>
							<p runat="server" id="totusers">5</p> 
						  </div>
						</div>
						<div class="col-sm-4 device-d-flex">
						  <div class="well w-100">
							<h4>Total Gigs</h4>
							<p runat="server" id="totgigs">3</p> 
						  </div>
						</div>
                        <div class="col-sm-4 device-d-flex">
						  <div class="well w-100">
							<h4>Total Services</h4>
							<p runat="server" id="totservs">3</p> 
						  </div>
						</div>
					  </div>
					  <div class="row">
						<div class="col-sm-12">
						  <div>
							<asp:Repeater runat="server" ID="sellerprofile"><ItemTemplate >
							<div class="row justify-content-center" >
						
                                
                <div class="col-lg-8 device-d-flex" style="max-width : 80% ; width:50%">
                            <div class="client_single_info mt-90 mb-3 text-center">
                                <div class="client_thumb text-center mb-5">
                                    <img src="<%# Eval("profilepic") %>" class="img-fluid" height="125" width="125" alt="">
                                    <h5 class="mb-2"><%# Eval("name") %></h5>
                                    <span>Administrator</span>
                                </div>
                                <p><b>Contact : </b><%# Eval("cno") %>  <br /> <b>DOB : </b><%# String.Format("{0:d}", Eval("DOB")) %> <br /> <%# Eval("email") %>
                                </p>
                                

                                
                                <br />
                                <a ID="mgclick" href='AdminManageProfile.aspx?seller=<%# Eval("username") %>' class="btn mg" style="color:black">Manage Profile
                                    <%--<asp:TextBox runat="server" class="mg2" text='<%# Eval("id") %>' style="display : none"></asp:TextBox>--%>
                                </a>
                                <br />
                                <%--<a href="Buyerprof.aspx" class="btn" style="color:black">Switch To Buyer</a>--%>
                            </div> <!-- single client -->
             </div>
            </div>
						</ItemTemplate></asp:Repeater>	
                             
						  </div>
						</div>
						
						<%--<div class="col-sm-4 mt-30">
						  <div class="well">
							<h3>Add Money</h3> 
							<p>0.00</p> 
							<button class="bsbutton" style="margin-left:0; margin-top:0"><span> Deposit </span></button>
						  </div>
						  
						  <div class="well">
							<h3>Available to withdraw</h3> 
							<p>23,000</p> 
							<button class="bsbutton" style="margin-left:0; margin-top:0"><span> Withdraw </span></button>
						  </div>--%>
						</div>
					  </div>
					</div>
				  </div>
				</div>

                  
    

                  </div>
                 </div>
            </div>


        </div>
    </div>
        <br><br><br><br>
    </section>


          <!--====== CONTACT PART START ======-->

    <section id="contact" class="contact_area">
        <div class="container">

            <div class="row  justify-content-center">
                <div class="col-lg-8 contact_row_style3 p-0">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-md-10">
                            <div class="section_title text-center pb-40 pt-5  wow fadeInUp" data-wow-delay=".2s">
                                <h2 class="title">Get in touch with us</h2>
                               
                            </div>
                        </div>
                    </div> <!-- row -->
                    <div class="row justify-content-center pb-5">

                        <div class="col-lg-8">
                            <div class="contact_form">
                                <div id="contact-form" action="assets/contact.php" method="post">
                                    <div class="row">
                                        <div class="col-md-12 p-0 wow fadeInUp" data-wow-delay=".2s">
                                            <div class="single_form ct-input-size">
                                                <input type="text" id="txtName" runat="server" name="name" placeholder="Your Name">
                                            </div> <!-- single form -->
                                        </div>
                                        <div class="col-md-12 p-0 wow fadeInUp" data-wow-delay=".4s">
                                            <div class="single_form mt-30 ct-input-size">
                                                <input type="email" name="email" id="txtEmail" runat="server" placeholder="Your Email">
                                            </div> <!-- single form -->
                                        </div>
          
                                        <div class="col-md-12 p-0 wow fadeInUp" data-wow-delay=".6s">
                                            <div class="single_form mt-30 ct-input-size">
                                                <textarea name="message" runat="server" id="txtMsg" placeholder="Your Message"></textarea>
                                            </div> <!-- single form -->
                                        </div>
                                        <p class="form-message"></p>
                                        <div class="col-md-12 p-0 wow fadeInUp" data-wow-delay=".8s">
                                            <div class="single_form text-center mt-20">
                                                <button runat="server" 
                                                id="btnFeedback" 
                                                onserverclick="btnFeedback_ServerClick" 
                                                class="btn btn3-inline-gradient main-btn-inline " 
                                                style="border: 1.5px solid blue; background: linear-gradient(-135deg, #444929 0%, #765367 100%);">Submit Now</button>
                                            </div> <!-- single form -->
                                        </div>
                                    </div> <!-- row -->
                                </div>
                            </div> <!-- contact form -->
                        </div>
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>

    <!--====== CONTACT PART ENDS ======-->
        
    <!--====== FOOTER PART START ======-->

    <section id="footer" class="footer_area_style3 pt-130">
        <div class="footer_widget pt-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="footer_about mt-50">
                            <a href="AdminDashboard.aspx">
                                <img src="img/asset 1.png" height="200" width="200" class="img-fluid" alt="logo">
                            </a>
                            <p>Zapl-Earn : A place for Freelancers</p>
                            <div class="subscribe_email">
                                <input type="email" name="email" class="form-control" placeholder="Your email...">
                                <button class="btn btn-primary" type="submit">Submit Now</button>
                            </div>
                        </div> <!-- footer about -->
                    </div>
                    <div class="col-lg-8">
                        <div class="footer_link_wrapper d-flex flex-wrap">
                            <div class="footer_link mt-45">
                                <h4 class="footer_title">Company </h4>
                                <ul class="link">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Services</a></li>
                                    <li><a href="#">Portfolio</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Team</a></li>
                                </ul>
                            </div> <!-- footer link -->
                            <div class="footer_link mt-45">
                                <h4 class="footer_title">Solutions</h4>
                                <ul class="link">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Services</a></li>
                                    <li><a href="#">Portfolio</a></li>
                                    <li><a href="#">Testimonials</a></li>
                                    <li><a href="#">Team</a></li>
                                </ul>
                            </div> <!-- footer link -->
                            <div class="footer_link mt-45">
                                <h4 class="footer_title">Company info</h4>
                                <ul class="social_link link">
                                     <li><a href=""><i class="icofont-phone"></i> &nbsp;+91 8849168567</a></li>
                                    <li><a href=""><i class="icofont-email"></i> &nbsp;zaplearn.web@gmail.com</a></li>
                                    <li><a href=""><i class="icofont-location-pin"></i> &nbsp;Surat , India</i></a></li>
                                    
                                </ul>
                            </div> <!-- footer link -->
                        </div> <!-- footer link wrapper -->
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div> <!-- footer widget -->
        
        <div class="footer_copyright pt-100 pb-30">
            <div class="container">
             <!--  Start Row -->
                <div class="row copyright">
                    <div class="col-md-6">
                      <div class="footer-copyright text-center text-md-left">
                          <p class="pt-2">Designed and Developed by Satish, Murtaza, Preeti And Vrushil </p>
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="footer-social-list text-md-right">
                        <ul>
                            <li><a href=""><i class="icofont-facebook"></i></a></li>
                            <li><a href=""><i class="icofont-twitter"></i></a></li>
                            <li><a href=""><i class="icofont-brand-whatsapp"></i></a></li>
                            <li><a href=""><i class="icofont-pinterest"></i></a></li>
                        </ul>
                      </div>
                    </div>
                </div>
                <!--  End Row -->
            </div>


        </div>
    </section>

    <!--====== FOOTER PART ENDS ======-->
    
    <!--====== BACK TOP TOP PART START ======-->

    <a href="#" class="back-to-top back-to-top-v3"><i class="icofont-rounded-up"></i></a>

    <!--====== BACK TOP TOP PART ENDS ======-->
    
    <!--====== Jquery js ======-->
    <script src="assets/js/vendor/jquery-1.12.4.min.js"></script>

    <!--====== Bootstrap js ======-->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    
    <!--====== count-up.min js ======-->
    <script src="assets/js/count-up.min.js"></script>


    <!--====== isotope.min js ======-->
    <script src="assets/js/isotope.min.js"></script>
    <!--====== imagesloaded.min js ======-->
    <script src="assets/js/imagesloaded.min.js"></script>
    <!--====== wow.min js ======-->
    <script src="assets/js/wow.min.js"></script>
    
    <!--====== Slick js ======-->
    <script src="assets/js/slick.min.js"></script>
    
    <!--====== Magnific Popup js ======-->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    
    <!--====== Ajax Contact js ======-->
    <script src="assets/js/ajax-contact.js"></script>
    
    <!--====== Scrolling Nav js ======-->
    <script src="assets/js/jquery.easing.min.js"></script>
    <script src="assets/js/scrolling-nav.js"></script>

    <!--====== Main js ======-->
    <script src="assets/js/main.js"></script>
    
    <script type="text/javascript">
        // preloader
        $(window).on('load', function (event) {
            $('.gridtemplate-loader').delay(500).fadeOut(500);

        });

        $(document).ready(function () {
            $('.container').imagesLoaded(function () {

                $('.grid').isotope({
                    itemSelector: '.grid-item',
                });

                // filter items on button click
                $('.portfolio-btn-wrapper').on('click', 'button', function () {
                    var filterValue = $(this).attr('data-filter');
                    $('.grid').isotope({ filter: filterValue });
                    $('.filter-button-group button').removeClass('active');
                    $(this).addClass('active');
                });


            });

            //$('.mg').click(function () {

            //    var seid = $(this).children(".mg2").text();
            //    location.href = "Managegig.aspx?seller=" + seid;
            //});
            
        });

    </script>
    </form>
	<!-- external bootstrap style -->
	<style>
	.bsbutton {
  display: inline-block;
  border-radius: 4px;
  background-color: grey;
  border: none;
  color: #FFFFFF;
  font-size: 14px;
  padding: 10px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.bsbutton span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.bsbutton span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.bsbutton:hover span {
  padding-right: 25px;
}

.bsbutton:hover span:after {
  opacity: 1;
  right: 0;
}

	</style>
    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KSZPFBPQ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
</body>
</html>
