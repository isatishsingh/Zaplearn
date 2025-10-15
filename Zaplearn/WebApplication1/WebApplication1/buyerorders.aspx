<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyerorders.aspx.cs" Inherits="WebApplication1.buyerorders" %>

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
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<!-- Custom fonts for this template -->
    <link href="sbvendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/> 
    <!-- Custom styles for this template -->
    <link href="sbcss/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="sbvendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <script >
        $(document).ready(function () {
            

            $('.MainNavText').click(function () {
                var oid = $('.MainNavText').siblings('.rv').attr("Value");
                $('#hfid').attr("Value", oid);
            });

            $('#sendReview').click(function () {
                if (true) {

                }
            });
        });
    </script>
</head>
<body>
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
                                <ul id="nav" class="navbar-nav ml-auto" style="float:right">
                                    <li class="nav-item" >
                                        <a class="page-scroll" href="buyergig.aspx" style="text-decoration : none">Gigs</a>
                                    </li>
                                    <li class="nav-item" >
                                        <a class="page-scroll" href="app-decline.aspx?sessLoc=buyerorders.aspx" style="text-decoration : none"> Chat</a>
                                    </li>
                                    <li class="nav-item active" >
                                        <a class="page-scroll" href="buyerorders.aspx" style="text-decoration : none"> Order</a>
                                    </li>
                                    <li class="nav-item" >
                                        <a class="page-scroll" href="buyerprof.aspx" style="text-decoration : none">Profile</a>
                                    </li>
                                </ul>
                            </div> <!-- navbar collapse -->
                            
                            <div class="button">
                                <asp:LinkButton ID="LinkButton1" OnClick ="lc" class="btn-inline btn main-btn-inline" runat="server" style="font-size : 20px; background-color : white">Log Out</asp:LinkButton>
                            </div>

                        </nav> <!-- navbar -->
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div> <!-- header navbar -->

        



           <div id="team" class="team_area_style3  pt-130">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12">
                <div class="section_title text-center pb-25 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Orders</h2>
                        
                    </div>
                </div>
            </div>

			<div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h3 class="m-0 font-weight-bold text-primary">Orders</h3>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered dataTable "  width="100%" cellspacing="0" style="font-size :medium ">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Service</th>
                                            <th>Amount</th>
                                            <th>deadline</th>
                                            <th>Status</th>  
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Service</th>
                                            <th>Amount</th>
                                            <th>deadline</th>
                                            <th>Status</th> 
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <asp:Repeater runat="server" ID="repOrders"><ItemTemplate >
                                        <tr>
                                            <td><%# Eval("name") %></td>
                                            <td><%# Eval("sername") %></td>
                                            <td><%# Eval("amount") %></td>
                                            <td><%# String.Format("{0:d}", Eval("deadLine"))%></td>
                                            <td><%# Eval("status") %></td>
                                        </tr>
                                        </ItemTemplate></asp:Repeater>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
            
             <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12">
                <div class="section_title text-center pb-25 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Reviews</h2>
                        
                    </div>
                </div>
            </div>

			<div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h3 class="m-0 font-weight-bold text-primary">Reviews</h3>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive"> 
                                <table class="table table-bordered dataTable" id="tblReviews" width="100%" cellspacing="0" style="font-size :medium ">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Service</th>
                                            <th>End Date</th>
                                            <th>Status</th> 
                                            <th>Reviews</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Service</th>
                                            <th>End Date</th>
                                            <th>Status</th> 
                                            <th>Reviews</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <asp:Repeater runat="server" ID="repRating"><ItemTemplate >
                                        <tr>
                                            <td><%# Eval("name") %></td>
                                            <td><%# Eval("sername") %></td>
                                            <td><%# String.Format("{0:d}", Eval("endDate"))%></td>
                                            <td><%# Eval("status") %></td>
                                            
                                            <td>
                                                <div class="form-group">
                                                <label for="recipient-name" class="col-form-label"></label>
                                                <%# Convert.ToInt32(Eval("rating"))==5 ? "<a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a>" : (Convert.ToInt32(Eval("rating"))==4) ? "<a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star noh'></a>" : (Convert.ToInt32(Eval("rating"))==3) ? "<a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star noh'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star noh'></a>" : (Convert.ToInt32(Eval("rating"))==2) ? "<a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star noh'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star noh'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star noh'></a>" : "<a style='text-decoration:none;font-size:20px'  class='fa fa-star checked'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star noh'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star noh'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star noh'></a><a style='text-decoration:none;font-size:20px'  class='fa fa-star noh'></a>"   %>
                                                </div>
                                            </td>
                                        </tr>
                                        </ItemTemplate></asp:Repeater>
                                        <asp:Repeater runat="server" ID="RepGiveReview"><ItemTemplate >
                                        <tr>
                                            <td><%# Eval("name") %></td>
                                            <td><%# Eval("sername") %></td>
                                            <td><%# String.Format("{0:d}", Eval("endDate"))%></td>
                                            <td><%# Eval("status") %></td>
                                            <td class="prnt"><a class="MainNavText" data-target="#myModal" data-toggle="modal" style="cursor:pointer">Give Review</a>
                                            <asp:TextBox style="display:none" ID="HiddenField1" class="rv" Value='<%# Eval("orderId") %>' runat="server" />
                                                </td>
                                        </tr>
                                        </ItemTemplate></asp:Repeater>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
            <%--<td><a data-target="#myModal" data-toggle="modal" class="MainNavText" id="MainNavHelp" href="#myModal">Give Review</a></td>--%>

            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h3 class="modal-title" id="exampleModalLabel">Ratings and Reviews</h3>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form>
                      <div class="form-group">
                        <label for="recipient-name" class="col-form-label"></label>
                            <a style="text-decoration:none" id="s1" class="fa fa-star"></a>
                            <a style="text-decoration:none" id="s2" class="fa fa-star"></a>
                            <a style="text-decoration:none" id="s3" class="fa fa-star"></a>
                            <a style="text-decoration:none" id="s4" class="fa fa-star"></a>
                            <a style="text-decoration:none" id="s5" class="fa fa-star"></a>
                      </div>
                      <div class="form-group">
                        <label style="font-size :15px" for="message-text" class="col-form-label">Message:</label>
                        <textarea style="font-size :15px" runat="server" class="form-control" id="messageText"></textarea>
                      </div>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" style="font-size :15px" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" id="sendReview" runat="server" onserverclick="sendReview_ServerClick" style="font-size :15px" class="btn btn-primary">Submit review</button>
                      <asp:HiddenField ID="hfstars" runat="server" />
                      <asp:HiddenField ID="hfid" runat="server" />
                  </div>
                </div>
              </div>
            </div>
			
		</div>
        <br><br><br><br>
               </div> 
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
                                <form id="contact-form" action="assets/contact.php" method="post">
                                    <div class="row">
                                        <div class="col-md-12 p-0 wow fadeInUp" data-wow-delay=".2s">
                                            <div class="single_form ct-input-size">
                                                <input type="text" name="name" placeholder="Your Name">
                                            </div> <!-- single form -->
                                        </div>
                                        <div class="col-md-12 p-0 wow fadeInUp" data-wow-delay=".4s">
                                            <div class="single_form mt-30 ct-input-size">
                                                <input type="email" name="email" placeholder="Your Email">
                                            </div> <!-- single form -->
                                        </div>
          
                                        <div class="col-md-12 p-0 wow fadeInUp" data-wow-delay=".6s">
                                            <div class="single_form mt-30 ct-input-size">
                                                <textarea name="message" placeholder="Your Message"></textarea>
                                            </div> <!-- single form -->
                                        </div>
                                        <p class="form-message"></p>
                                        <div class="col-md-12 p-0 wow fadeInUp" data-wow-delay=".8s">
                                            <div class="single_form text-center mt-20">
                                                <button 
                                                class="btn btn3-inline-gradient main-btn-inline" 
                                                style="background: linear-gradient(-135deg, #444929 0%, #765367 100%);
                                                color: white;
                                                border: 1.5px solid blue;">Submit Now</button>
                                            </div> <!-- single form -->
                                        </div>
                                    </div> <!-- row -->
                                </form>
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
                            <a href="Landing.aspx">
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
                                     <li><a href=""><i class="icofont-phone"></i> &nbsp;+91 9518101310</a></li>
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

       <style>

.fa {
  font-size: 25px;
  color: darkgrey;
}

.fa:hover {
    color: orange;
    font-size: 25px;
}

.noh:hover{
    pointer-events:none!important;
}
.noh{
    pointer-events:none!important;
}
/*
.hover {
  color: orange;
    font-size: 25px;
}*/

.checked {
  color: orange;
}

/* Three column layout */
.side {
  float: left;
  width: 15%;
  margin-top:10px;
}

.middle {
  margin-top:10px;
  float: left;
  width: 70%;
}

/* Place text to the right */
.right {
  text-align: right;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* The bar container */
.bar-container {
  width: 100%;
  background-color: #f1f1f1;
  text-align: center;
  color: white;
}

/* Individual bars */
.bar-5 {width: 60%; height: 18px; background-color: #04AA6D;}
.bar-4 {width: 30%; height: 18px; background-color: #2196F3;}
.bar-3 {width: 10%; height: 18px; background-color: #00bcd4;}
.bar-2 {width: 4%; height: 18px; background-color: #ff9800;}
.bar-1 {width: 15%; height: 18px; background-color: #f44336;}

/* Responsive layout - make the columns stack on top of each other instead of next to each other */
@media (max-width: 400px) {
  .side, .middle {
    width: 100%;
  }
  .right {
    display: none;
  }
}
</style>

<script>
   

    //$(document).ready(function () {
    //    $("#s5").blur(function () {
    //        $("#s1,#s2,#s3,#s4,#s5").removeClass();
    //        $("#s1").addClass("fa fa-star");
    //        $("#s2").addClass("fa fa-star");
    //        $("#s3").addClass("fa fa-star");
    //        $("#s4").addClass("fa fa-star");
    //        $("#s5").addClass("fa fa-star");
    //    })
    //})

    $(document).ready(function () {
        $("#s1").hover(function () {
            $("#s1,#s2,#s3,#s4,#s5").removeClass();
            $("#s1").addClass("fa fa-star checked");
            $("#s2").addClass("fa fa-star");
            $("#s3").addClass("fa fa-star");
            $("#s4").addClass("fa fa-star");
            $("#s5").addClass("fa fa-star");
            $('#hfstars').attr("Value", 1);
        });

        $("#s2").hover(function () {
            $("#s1,#s2,#s3,#s4,#s5").removeClass();
            $("#s1").addClass("fa fa-star checked");
            $("#s2").addClass("fa fa-star checked");
            $("#s3").addClass("fa fa-star");
            $("#s4").addClass("fa fa-star");
            $("#s5").addClass("fa fa-star");
            $('#hfstars').attr("Value", 2);
        });

        $("#s3").hover(function () {
            $("#s1,#s2,#s3,#s4,#s5").removeClass();
            $("#s1").addClass("fa fa-star checked");
            $("#s2").addClass("fa fa-star checked");
            $("#s3").addClass("fa fa-star checked");
            $("#s4").addClass("fa fa-star");
            $("#s5").addClass("fa fa-star");
            $('#hfstars').attr("Value", 3);
        });

        $("#s4").hover(function () {
            $("#s1,#s2,#s3,#s4,#s5").removeClass();
            $("#s1").addClass("fa fa-star checked");
            $("#s2").addClass("fa fa-star checked");
            $("#s3").addClass("fa fa-star checked");
            $("#s4").addClass("fa fa-star checked");
            $("#s5").addClass("fa fa-star");
            $('#hfstars').attr("Value", 4);
        });

        $("#s5").hover(function () {
            $("#s1,#s2,#s3,#s4,#s5").removeClass();
            $("#s1").addClass("fa fa-star checked");
            $("#s2").addClass("fa fa-star checked");
            $("#s3").addClass("fa fa-star checked");
            $("#s4").addClass("fa fa-star checked");
            $("#s5").addClass("fa fa-star checked");
            $('#hfstars').attr("Value", 5);
        });

        $('.dataTable').DataTable();
    });

    
</script>

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

            $('.MainNavText').click(function () {
                //var oid = $(this).sibling('.rv').attr("value");
                //$('#hfid').attr("Value", oid);
                location.href = "buyergig.aspx";
            });

        });

    </script>
	
	<!-- Bootstrap core JavaScript-->
    <script src="sbvendor/jquery/jquery.min.js"></script>
    <script src="sbvendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="sbvendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="sbjs/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="sbvendor/datatables/jquery.dataTables.min.js"></script>
    <script src="sbvendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="sbjs/demo/datatables-demo.js"></script>
    </form>
    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KSZPFBPQ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
</body>
</html>