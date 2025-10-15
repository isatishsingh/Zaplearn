<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerDashboard.aspx.cs" Inherits="WebApplication1.WebForm1" %>


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
    <style>
        .bgimg {
            background: url(images/block.png);
        }
    </style>

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

      <link href="sbvendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <style>
        body 
        {
            font-family : Poppins;
        }
    </style>


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
                            <a class="navbar-brand logo" href="SellerDashboard.aspx">
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
                                        <a class="page-scroll" href="SellerDashboard.aspx" style="text-decoration:none">Dashboard</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page-scroll" href="GigNotifications.aspx" style="text-decoration:none">Notifications</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page-scroll" href="app-decline.aspx?sessLoc=SellerDashboard.aspx" style="text-decoration:none">Chat</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="page-scroll" href="sellerorders.aspx" style="text-decoration:none">Orders</a>
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
                <div class="col-lg-12 col-md-12">
                <div class="section_title text-center pb-25 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Seller Dashboard</h2>
                        
                    </div>
                </div>
            </div>

            <nav class="navbar navbar-inverse visible-xs">
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
				</nav>

				<div class="container-fluid">
				  <div class="row content">
					
					<br>
					
					<div class="col-sm-12">
					  
					  <div class="row">
						<div class="col-sm-3 d-flex">
						  <div class="well w-100">
							<h4>Orders Completed</h4>
							<asp:Label runat="server" class="mb-4" ID="lblOrdersComplete" Text="10"></asp:Label>
						  </div>
						</div>
						<div class="col-sm-3 d-flex">
						  <div class="well w-100">
							<h4>Orders Pending</h4>
							<asp:Label runat="server" class="mb-4" ID="lblOrdersPending" Text="10"></asp:Label> 
						  </div>
						</div>
						<div class="col-sm-3 d-flex">
						  <div class="well w-100">
							<h4>Earnings</h4>
							<asp:Label runat="server" class="mb-4" ID="lblEarnings" Text="7200"></asp:Label> 
						  </div>
						</div>
						<div class="col-sm-3">
						  <div class="well">
							<h4>Ratings</h4>
							<asp:Label runat="server" class="mb-4" ID="lblRatings" Text="4"></asp:Label> 
						  </div>
						</div>
					  </div>
					  <div class="row">
						<div class="col-sm-8">
                            
						  <div>
							<asp:Repeater runat="server" ID="sellerprofile"><ItemTemplate >
							<div class="row justify-content-center" >
						
                                
                <div class="col-lg-10" style="max-width : 80% ; width:50%">
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
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                    </ul>
                                </div>
                                <br />
                                <a ID="mgclick" href='app-decline.aspx?seller=<%# Eval("id") %>' class="btn mg" style="color:black">Manage Gig
                                    <%--<asp:TextBox runat="server" class="mg2" text='<%# Eval("id") %>' style="display : none"></asp:TextBox>--%>
                                </a>
                                <br />
                                <a href="Buyerprof.aspx" class="btn" style="color:black">Switch To Buyer</a>
                                <br />
                                <a href='app-decline.aspx?mseller=<%# Eval("id") %>' class="btn mg" style="color:black">Add Media</a>
                                </br>
                                <a style="text-decoration : none" href='app-decline.aspx?selid=<%# Eval("id") %>&act="userDeleteGig"' class="login" title="Login"><img height="100" width="100" src="images/delete.gif" /></a>

                                <br />
                            </div> <!-- single client -->
             </div>
            </div>
						</ItemTemplate></asp:Repeater>	
                             
						  </div>
						</div>
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
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="red" runat="server" ErrorMessage="Value must not be less than 1" ValidationGroup="btnWithdraw" ControlToValidate="txtwithdraw" ValidationExpression="^[1-9][0-9]*$"/>
                                            <small class="form-text text-muted">Please enter amount without decimals</small>
                                        </div>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <asp:Button runat="server" type="button" ID="btnwithdraw" OnClick="btnwithdraw_Click" class="btn btn-primary" text="Proceed" ValidationGroup="btnWithdraw"/>
                                  </div>
                                </div>
                              </div>
                            </div>

                              <button type="button" class="bsbutton" style="margin-left:0; margin-top:0" data-toggle="modal" data-target="#depositModal">
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
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="red" runat="server" ErrorMessage="Value must not be less than 1" ValidationGroup="btnDeposit" ControlToValidate="txtdeposit" ValidationExpression="^[1-9][0-9]*$"/>
                                            <small class="form-text text-muted">Please enter amount without decimals</small>
                                        </div>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <asp:Button runat="server" type="button" ID="btndeposit" OnClick="btndeposit_Click" Text="Proceed" class="btn btn-primary" ValidationGroup="btnDeposit" />
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
					</div>
				  </div>
				</div>

        </div>
    </div>
            <%--*************--%>

    <div id="team" class="team_area_style3  pt-30">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12">
                <div class="section_title text-center pb-10 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Your Gig Media</h2>
                        
                    </div>
                </div>
            </div>

            <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h3 class="m-0 font-weight-bold text-primary">Your Gig Media</h3>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered dataTable "  width="100%" cellspacing="0" style="font-size :medium ">
                                    <thead>
                                        <tr>
                                            <th>Media</th>
                                            <th>Gig Name</th>
                                            <th>Type</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Media</th>
                                            <th>Gig Name</th>
                                            <th>Type</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        
                                        

                                        
                                        <asp:Repeater ID="repPhotoMedia" runat="server"><ItemTemplate>
                                        <tr>
                                            <td width="30%"><center><img src='<%# Eval("path") %>' width='192' height='108'/></center>
                                            </td>
                                            <td><%# Eval("sername") %></td>
                                            <td>Photo</td>
                                            <td><a href='app-decline.aspx?selid=<%# Eval("id") %>&act="deletePhoto"'>Delete</a></td>
                                        </tr>
                                        </ItemTemplate></asp:Repeater>

                                        <asp:Repeater ID="repVideoMedia" runat="server"><ItemTemplate>
                                        <tr>
                                            <td width="30%"><center><video  width='192' height='108' poster='images/video-default.jpg' controls>
                                                <source src='<%# Eval("videoPath") %>' type='video/mp4' /></video></center>
                                            </td>
                                            <td><%# Eval("sername") %></td>
                                            <td>Video</td>
                                            <td><a href='app-decline.aspx?selid=<%# Eval("id") %>&act="deleteVideo"'>Delete</a></td>
                                        </tr>
                                        </ItemTemplate></asp:Repeater>
                                        
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
        </div>
    </div>
    <%--*************--%>  

            
            <%--*************--%>

    <div id="team" class="team_area_style3  pt-30">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12">
                <div class="section_title text-center pb-10 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title" style="color:white">Wallet History</h2>
                        
                    </div>
                </div>
            </div>

            <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h3 class="m-0 font-weight-bold text-primary">Wallet History</h3>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered dataTable "  width="100%" cellspacing="0" style="font-size :medium ">
                                    <thead>
                                        <tr>
                                            <th width="70%">Transaction Detail</th>
                                            <th>Debit</th>
                                            <th>Credit</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th width="70%">Transaction Detail</th>
                                            <th>Debit</th>
                                            <th>Credit</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <asp:Repeater ID="repWallet" runat="server"><ItemTemplate>
                                            <tr>
                                         
                                            <td width="70%"><%# Eval("detail") %></td>
                                            <td><%# Eval("type").ToString()=="debit" ? Eval("amount") : "-" %></td>
                                            <td><%# Eval("type").ToString()=="credit" ? Eval("amount") : "-" %></td>
                                        </tr>
                                        </ItemTemplate></asp:Repeater>
                                        
                                       
                                        
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
    <%--*************--%>  



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
                            <li><a href="#"><i class="icofont-facebook"></i></a></li>
                            <li><a href="#"><i class="icofont-twitter"></i></a></li>
                            <li><a href="#"><i class="icofont-brand-whatsapp"></i></a></li>
                            <li><a href="#"><i class="icofont-pinterest"></i></a></li>
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

         <script>

             $(document).ready(function () {
                 $('.dataTable').DataTable();
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
