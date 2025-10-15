<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyerprof.aspx.cs" Inherits="WebApplication1.buyerprof" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <meta name="author" content="GridTemplate"/>
    <!--====== Title ======-->
        <!-- Google Tag Manager -->
    <script>
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({ "gtm.start": new Date().getTime(), event: "gtm.js" });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != "dataLayer" ? "&l=" + l : "";
            j.async = true;
            j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, "script", "dataLayer", "GTM-KSZPFBPQ");
    </script>
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

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        body 
        {
            font-family : Poppins;
        }
    </style>

</head>
<body >
    <form id="formBuyerProf" runat="server">

       <div class="gridtemplate-loader">
        <div class="preloader">
             <div class="spinner"></div>
            <img   class="preload-logo" src="img/asset 0.png"/>
        </div> 
       </div>

        <section class="header_area_style3">
        <div class="header_navbar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg" style="margin-bottom :0px">
                            <a class="navbar-brand logo" href="buyergig.aspx">
                                <img src="img/asset 1.png" class="white-logo" alt="Logo"/>
                                <img src="img/asset 0.png" class="light-logo" alt="Logo"/>
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
                                        <a class="page-scroll" href="app-decline.aspx?sessLoc=buyerprof.aspx" style="text-decoration :none"> Chat</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page-scroll" href="buyerorders.aspx" style="text-decoration :none"> Order</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="page-scroll" href="buyerprof.aspx" style="text-decoration :none">Profile</a>
                                    </li>
                                    
                                </ul>
                            </div> <!-- navbar collapse -->
                            <div class="button">
                                <asp:LinkButton ID="LinkButton1" OnClick ="lc" class="btn-inline btn main-btn-inline" runat="server">Log Out</asp:LinkButton>
                            </div>
                            <div class="button">
                                <asp:LinkButton ID="LinkButton2" OnClick ="gigclick" class="btn-inline btn main-btn-inline" runat="server">Make Gig</asp:LinkButton>
                            </div>
                                
                                        
                                   
                        </nav> <!-- navbar -->
                    </div>
                </div> <!-- row -->
            </div> <!-- container -->
        </div>
       </section>
        
        <section id="testimonials" class="our_clients_style3 pb-100 pt-130">
      
         
             <%--<nav class="navbar navbar-fixed-top navbar-expand-sm bg-light navbar-light" >
  <div class="container" style="justify-content : flex-start ">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link active" href="#">Active</a>
      </li>
     <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
  </div>
</nav>--%>


            
            <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7 col-md-9">
                <div class="section_title text-center pb-25 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Your Profile </h2>
                        
                    </div>
                </div>
            </div>
                
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <div class="row justify-content-center" >
                <div class="col-lg-6" style="max-width : 80% ; width:50% ; ">
                            <div class="client_single_info mt-90 mb-3 text-center" >
                               <div class="client_thumb text-center mb-3">
                                    <img src='<%# Eval("profilepic") %>' class="img-fluid" height="150" width="150" alt="">
                                    
                                    
                                </div>
                                <p style="color:#536976!important"><%# Eval("name") %><br /> <%# Eval("email") %>
                                </p>
                                <%--<div class="rating_list pt-4">
                                    <ul>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                    </ul>
                                </div>--%>
                                <br />
                                <a href="ManageProfile.aspx" class="btn" style="color:darkgray">Manage Profile</a>
                                <br />
                                <asp:LinkButton ID="btnseller" runat="server" OnClick="Button1_Click"  CssClass ="btn" style="color:darkgray" Text="Switch To Seller" />
                            </div> <!-- single client -->
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                        <div class="col-sm-4 mt-70">
						  <div class="well">
							<h3>Available Amount</h3> 
							<asp:Label runat="server" class=" mb-3" ID="amount">13000</asp:Label> <br />
							<%--<button class="bsbutton" style="margin-left:0; margin-top:0" data-target="#depositModal"><span>Deposit </span></button>
                            <button class="bsbutton" style="margin-left:0; margin-top:0"><span> Withdraw </span></button>--%>

                            <%---- Modal ----%>

                            <!-- Button trigger modal -->
                            

                            <button type="button" class="bsbutton" style="margin-left:0; margin-top:0" data-toggle="modal" data-target="#withdrawModal">
                              <span>Withdraw</span>
                            </button>

                            <!-- Modal -->
                            

                            <div class="modal fade" id="withdrawModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel2">Withdraw Money</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" min="0" type="number" class="form-control" id="txtwithdraw" placeholder="Enter amount"/>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="red" runat="server" ErrorMessage="Value must not be less than 1" ValidationGroup="btnwithdraw" ControlToValidate="txtwithdraw" ValidationExpression="^[1-9][0-9]*$"/>
                                            <small class="form-text text-muted">Please enter amount without decimals</small>
                                        </div>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <asp:Button runat="server" type="button" id="btnwithdraw" OnClick="btnwithdraw_Click" class="btn btn-primary" text="Proceed" ValidationGroup="btnwithdraw" />
                                  </div>
                                </div>
                              </div>
                            </div>

                              <button type="button" id="dpbutton" class="bsbutton" style="margin-left:0; margin-top:0" data-toggle="modal" data-target="#depositModal">
                              <span>Deposit</span>
                            </button>

                              <div class="modal fade" id="depositModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Deposit Money</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" min="0" type="number" class="form-control" id="txtdeposit" placeholder="Enter amount"/>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="red" ErrorMessage="Value must not be less than 1" ValidationGroup="btnDeposit" ControlToValidate="txtdeposit" ValidationExpression="^[1-9][0-9]*$"/>
                                            <small class="form-text text-muted">Please enter amount without decimals</small>
                                        </div>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <asp:Button runat="server" type="button" id="btndeposit" OnClick="btndeposit_Click" Text="Proceed" class="btn btn-primary" ValidationGroup="btnDeposit" />
                                  </div>
                                </div>
                              </div>
                            </div>

                              <%---- Modal Over ----%>

						  </div>
						  
						  <div class="well">
							<h3>Blocked Amount</h3> 
							<asp:Label class=" mb-2" runat="server" ID="lblblocked">5000</asp:Label>  
						  </div>
						</div>
                </div>
                    
            <center>
            <%--<asp:GridView ID="GridWallet" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />  
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>--%>
             </center>
    </section>


    <!--====== OUR CLIENTS ENDS ======-->



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
                                     <li><a href="#"><i class="icofont-phone"></i> &nbsp;+91 9518101310</a></li>
                                    <li><a href="#"><i class="icofont-email"></i> &nbsp;zaplearn.web@gmail.com</a></li>
                                    <li><a href="#"><i class="icofont-location-pin"></i> &nbsp;Surat , India</i></a></li>
                                    
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
    
    </form>
        <!-- Google Tag Manager (noscript) -->
    <noscript
      ><iframe
        src="https://www.googletagmanager.com/ns.html?id=GTM-KSZPFBPQ"
        height="0"
        width="0"
        style="display: none; visibility: hidden"
      ></iframe
    ></noscript>
    <!-- End Google Tag Manager (noscript) -->
</body>
</html>

