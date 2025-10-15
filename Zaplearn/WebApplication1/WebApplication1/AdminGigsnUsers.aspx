<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGigsnUsers.aspx.cs" Inherits="WebApplication1.AdminGigsnUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="author" content="GridTemplate">
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
    <!--====== Title ======-->
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
                                    <li class="nav-item ">
                                        <a class="page-scroll" href="AdminDashboard.aspx" style="text-decoration:none">Dashboard</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="page-scroll" href="AdminGigsnUsers.aspx" style="text-decoration:none">Manage Users and Gigs</a>
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

        



         
<%--*************--%>

    <div id="team" class="team_area_style3  pt-130">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12">
                <div class="section_title text-center pb-10 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Users</h2>
                        
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
                                            <th>Profile Pic</th>
                                            <th>Username</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Country</th>
                                            <th>City</th>  
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Profile Pic</th>
                                            <th>Username</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Country</th>
                                            <th>City</th>  
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <asp:Repeater ID="repUsers" runat="server"><ItemTemplate>
                                        <tr>
                                            <td><img src="<%# Eval("profilepic") %>" height="50" width="50" style="border-radius:10%;margin-left:10px"/></td>
                                            <td><%# Eval("username") %></td>
                                            <td><%# Eval("name") %></td>
                                            <td><%# Eval("email") %></td>
                                            <td><%# Eval("country") %></td>
                                            <td><%# Eval("city") %></td>
                                        </tr>
                                        </ItemTemplate></asp:Repeater>
                                        
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
    <%--*************--%>        

        
<%--*************--%>
            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12">
                <div class="section_title text-center mt-20 pb-10 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Gigs</h2>
                    </div>
                </div>
            </div>

            <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h3 class="m-0 font-weight-bold text-primary">Gigs</h3>
                        </div>
                        <div class="table-responsive">
                                <table class="table table-bordered dataTable "  width="100%" cellspacing="0" style="font-size :medium ">
                                    <thead>
                                        <tr>
                                            <th>Gig Photo</th>
                                            <th>Username</th>
                                            <th>Service Name</th>
                                            <th>Experience</th>
                                            <th>Start Price</th>
                                            <th>Date of Join</th>
                                            <th>Block/Delete</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Gig Photo</th>
                                            <th>Username</th>
                                            <th>Service Name</th>
                                            <th>Experience</th>
                                            <th>Start Price</th>
                                            <th>Date of Join</th>
                                            <th>Block/Delete</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <asp:Repeater ID="repGigs" runat="server"><ItemTemplate>
                                        
                                        <tr>
                                            <td><img src='<%# Eval("gigpic") %>' height="60" width="50" style="border-radius:10%;margin-left:10px"/></td>
                                            <td><%# Eval("username") %></td>
                                            <td><%# Eval("sername") %></td>
                                            <td><%# Eval("experience") %></td>
                                            <td><%# Eval("startprice") %> / <%# Eval("unit") %></td>
                                            <td><%# String.Format("{0:d}", Eval("DOS"))%></td>
                                            <td><%# Eval("status").ToString()=="active" ? "<a href='app-decline.aspx?act=\"blkGig\"&selid="+Eval("id")+"'>Block</a><br>" : "<a href='app-decline.aspx?act=\"unblkGig\"&selid="+Eval("id")+"'>Unblock</a><br>" %><a href='app-decline.aspx?selid=<%# Eval("id") %>&act="deleteGig"'>Delete</a></td>

                                        </tr>

                                        </ItemTemplate></asp:Repeater>
                                        <%--<asp:TextBox ID="txtSid" CssClass="txtSid" style="display:none" Text="<%# Eval("id") %>" runat="server"></asp:TextBox>--%>
                                    </tbody>
                                </table>
                            </div>
                    </div>
        
<%--*************--%>
           
<%--*************--%>
            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12">
                <div class="section_title text-center mt-20 pb-10 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Feedback</h2>
                    </div>
                </div>
            </div>

            <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h3 class="m-0 font-weight-bold text-primary">Feedback</h3>
                        </div>
                        <div class="table-responsive">
                                <table class="table table-bordered dataTable "  width="100%" cellspacing="0" style="font-size :medium ">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Message</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Message</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <asp:Repeater ID="repFeedback" runat="server"><ItemTemplate>
                                        <tr>
                                            <td><%# Eval("name") %></td>
                                            <td><%# Eval("email") %></td>
                                            <td><%# Eval("message") %></td>
                                        </tr>
                                        
                                        </ItemTemplate></asp:Repeater>
                                        
                                    </tbody>
                                </table>
                            </div>
                    </div>
        
<%--*************--%>
        </div>
    </div>


        <br><br><br><br>
    </section>


          <!--====== CONTACT PART START ======-->

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

    <!--====== FOOTER PART ENDS ======-->
    
    <!--====== BACK TOP TOP PART START ======-->

    <a href="#" class="back-to-top back-to-top-v3"><i class="icofont-rounded-up"></i></a>

    <!--====== BACK TOP TOP PART ENDS ======-->

    <script>

        $(document).ready(function () {
            $('.dataTable').DataTable();
        });

    </script>
    
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
