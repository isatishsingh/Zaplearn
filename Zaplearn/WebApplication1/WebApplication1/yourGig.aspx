<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yourGig.aspx.cs" Inherits="WebApplication1.yourGig" %>

<!DOCTYPE html>

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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    


</head>
<body >
    <form id="form1" runat="server">

        <div class="gridtemplate-loader">
        <div class="preloader">
             <div class="spinner"></div>
            <img   class="preload-logo" src="img/asset 0.png">
        </div> 
    </div>

        <section class="header_area_style3">
        <div class="header_navbar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg" style="margin-bottom :0px">
                            <a class="navbar-brand logo" href="buyergig.aspx">
                                <img src="img/asset 1.png" class="white-logo" alt="Logo">
                                <img src="img/asset 0.png" class="light-logo" alt="Logo">
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                                <span class="toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul id="nav" class="navbar-nav ml-auto" style="float :right">
                                    <li class="nav-item">
                                        <a class="page-scroll" href="buyergig.aspx" style="text-decoration :none">Gigs</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page-scroll" href="chat.aspx" style="text-decoration :none"> Chat</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page-scroll" href="buyerorders.aspx" style="text-decoration :none"> Order</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page-scroll" href="buyerprof.aspx" style="text-decoration :none">Profile</a>
                                    </li>
                                </ul>
                            </div> <!-- navbar collapse -->
                            <div class="button">
                                <asp:LinkButton ID="LinkButton1" OnClick ="lc" class="btn-inline btn main-btn-inline" runat="server">Log Out</asp:LinkButton>
                            </div>

                        </nav> <!-- navbar -->
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div>
       </section>

            
        <section id="testimonials" class="our_clients_style3 pb-100 pt-130 " style="background: linear-gradient(-135deg, #444929 0%, #765367 100%)!important ;" >
        
        
      

        
        <div class="container">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate >
            <div class="row justify-content-center">
		
            <div class="col-lg-8" style="max-width : 80% ; width:50%">
                            <div class="client_single_info mt-90 mb-3 text-center">
                                <div class="client_thumb text-center mb-5">
                                    <img src="<%# Eval("profilepic") %>" class="img-fluid" height="125" width="125" alt="">
                                    <h5 class="mb-2"><%# Eval("name") %></h5>
                                    
                                    <span><%# Eval("sername") %></span>
                                </div>
                                <p><b>Starting Price : </b><%# Eval("startprice") %> / <%# Eval("unit") %>  <br /> <b>Experience : </b><%# Eval("experience") %> years <br /> <%# Eval("email") %>
                                </p>
                                <div class="rating_list pt-4">
                                    <ul>
                                     <%# Convert.ToInt32(Eval("nofRatings"))==0 ? "<li><i class='icofont-star' style='color:lightgray'></i></li><li><i class='icofont-star' style='color:lightgray'></i></li><li><i class='icofont-star' style='color:lightgray'></i></li><li><i class='icofont-star' style='color:lightgray'></i></li><li><i class='icofont-star' style='color:lightgray'></i></li>" : ((Convert.ToInt32(Eval("totRatings")))/(Convert.ToInt32(Eval("nofRatings")))==4) ? "<li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li>" : ((Convert.ToInt32(Eval("totRatings")))/(Convert.ToInt32(Eval("nofRatings")))==3) ? "<li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li>" : ((Convert.ToInt32(Eval("totRatings")))/(Convert.ToInt32(Eval("nofRatings")))==2) ? "<li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li>" : ((Convert.ToInt32(Eval("totRatings")))/(Convert.ToInt32(Eval("nofRatings")))==5) ? "<li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li>" : "<li><i class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li>"   %>

                                    </ul>
                                </div>
                                <br />
                                <button class="btn btn-primary btn-lg btn-block" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" style="background: linear-gradient(-135deg, #444929 0%, #765367 100%)!important ;">
                                    Description
                                  </button>
                                <div class="collapse" id="collapseExample">
                                    <div class="card card-body">
                                        <h4  style="color:black"><%# Eval("description") %></h4>
                                    </div>
                                  </div>
                                </ItemTemplate>
        </asp:Repeater>

                            
                              
                            </div> <!-- single client -->
             </div>
		</div>
        

		<div class="row justify-content-center">
            <asp:Repeater ID="RepPhotonVideo" runat="server">
                <HeaderTemplate >
			<div class="col-lg-8 mt-50">

                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
                              

                              <!-- Wrapper for slides -->
                              <div class="carousel-inner">
                                  </HeaderTemplate>
                                      <ItemTemplate>
<%--                                          <%# Container.ItemIndex==0 ? "<div class='item active'> <img src='"+ Eval("path") +"' alt='Los Angeles'> </div>" : "<div class='item'> <img src='"+ Eval("path") +"' alt='Los Angeles'> </div>" %>--%>
                                          <%# Container.ItemIndex==0 ? "<div class='item active'> <img src='"+ Eval("path") +"' alt='Los Angeles'> </div>" : (Eval("path").ToString().Contains("mp4")==true) ? "<div class='item'> <video  width='729' height='426' poster='images/video-default.jpg' controls> <source src='"+ Eval("path") +"' type='video/mp4' /></video> </div>" : "<div class='item' width='729' height='426'> <img src='"+ Eval("path") +"'  alt='Los Angeles'/> </div>" %>
                                          
                                          <%--<%# container.itemindex==0 ? "<div class='item active'> <img src='"+ eval("path") +"' alt='los angeles'> </div>" : "" %>--%>

                                      </ItemTemplate>
                                  
    
                                <FooterTemplate >

                              </div>

                              <!-- Left and right controls -->  
                              <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                                <span class="sr-only">Next</span>
                              </a>
                            </div>
                        </div>	
            </FooterTemplate>
            </asp:Repeater>
            			<%--<div class="col-lg-8 mt-50">

                            <div id="myCarousel2" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
                              <ol class="carousel-indicators">
                                <li data-target="#myCarousel2" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel2" data-slide-to="1"></li>
                                <li data-target="#myCarousel2" data-slide-to="2"></li>
                                <li data-target="#myCarousel2" data-slide-to="3"></li>

                              </ol>

                              <!-- Wrapper for slides -->
                              <div class="carousel-inner">
                                <div class="item active" >
                                  <img src="https://www.w3schools.com/bootstrap/la.jpg"  alt="Los Angeles">
                                </div>

                                <div class="item">
                                  <img src="https://www.w3schools.com/bootstrap/chicago.jpg" alt="Chicago">
                                </div>

                                <div class="item">
                                  <img src="https://www.w3schools.com/bootstrap/ny.jpg" alt="New York">
                                </div>

                                <div class="item">
                                  <video  width='729' height='426' poster='images/video-default.jpg' controls>
                                    <source src='images/videoTest.mp4' type='video/mp4' />
                                  </video>
                                </div>

                              </div>

                              <!-- Left and right controls -->
                              <a class="left carousel-control" href="#myCarousel2" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="right carousel-control" href="#myCarousel2" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                                <span class="sr-only">Next</span>
                              </a>
                            </div>
                        </div>	--%>

		</div>
		
		<div class="row justify-content-center">
                <div class="col-lg-7 col-md-9">
                <div class="section_title text-center pb-25 mt-40 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Additional Information</h2>
                        
                    </div>
                </div>
         </div>
		 
		 <div class="row justify-content-center">
			<div class="card text-center col-lg-8 col-md-9">
			  <div class="card-header">
				Please read additional information carefully
			  </div>
			  <div class="card-body">
                <asp:Repeater runat="server" ID="add_info"><ItemTemplate >  
				<p class="card-text"><%# Eval("add_info") %></p>
			  
                    </ItemTemplate></asp:Repeater>
                    </div>
			</div>
		</div>
		
		<div class="row justify-content-center">
                <div class="col-lg-9 col-md-9">
                <div class="section_title text-center pb-25 mt-40 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Ratings and Reviews</h2>
                        
                    </div>
                </div>
         </div>
		
		<div class="row justify-content-center">
			<div class="card text-center col-lg-8 col-md-9">
			  <div class="card-header">
				Reviews
			  </div>
                <asp:Repeater ID="repShowReviews" runat="server"><ItemTemplate >
                <div class="card-body">
				<h5 class="card-title"><%# Eval("name") %></h5>
				<p class="card-text"><%# Eval("review") %></p>

                <%--<div class="rating_list">
                    <ul>
                        <li><i class="icofont-star"></i></li>
                        <li><i class="icofont-star"></i></li>
                        <li><i class="icofont-star"></i></li>
                        <li><i class="icofont-star"></i></li>
                        <li><i style="color:lightgray" class="icofont-star"></i></li>
                    </ul>
                </div>--%>
                <div class="rating_list">
                    <ul>
                    <%# Convert.ToInt32(Eval("rating"))==5 ? "<li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li>" : (Convert.ToInt32(Eval("rating"))==4) ? "<li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li>" : (Convert.ToInt32(Eval("rating"))==3) ? "<li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li>" : (Convert.ToInt32(Eval("rating"))==2) ? "<li><i class='icofont-star'></i></li><li><i class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li>" : "<li><i class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li><li><i style='color:lightgray' class='icofont-star'></i></li>"   %>

                    </ul>    
                </div>


			  </div>
			  <div class="card-footer text-muted">
				<%# String.Format("{0:d}", Eval("endDate"))%>
			  </div>
              </ItemTemplate></asp:Repeater>
			  
			  
			  
			</div>
		</div>
		
       </div>
    </section>


    <!--====== OUR CLIENTS ENDS ======-->


    <!--====== OUR CLIENTS ENDS ======-->
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

            
        });

    </script>
    <style>
        #btnorder:hover {
            color :white;
        }
    </style>
    </form>
    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KSZPFBPQ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
</body>
</html>
