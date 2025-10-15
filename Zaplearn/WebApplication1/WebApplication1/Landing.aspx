<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Landing.aspx.cs" Inherits="WebApplication1.Landing" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="gridtemplate-loader">
        <div class="preloader">
             <div class="spinner"></div>
            <img   class="preload-logo" src="img/asset 0.png">
        </div> 
    </div>


    <!--====== PRELOADER PART ENDS ======-->

    <!--====== HEADER PART START ======-->

    <section class="header_area_style3">
        

        <div id="home" class="header_hero d-lg-flex align-items-center">
            <div class="container-fluid">
               
                <!-- indicators -->
                <div id="carouselExampleIndicators" class="carousel home_v3_sldier slide" >

                  <!-- carousel content -->
                  <div class="carousel-inner">

                    <!-- first slide -->
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="header_hero_content">
                                  <div class="carousel-caption d-md-block">
                                    <h3 data-animation="animated bounceInUp">
                                      <span>Hello! Creative People</span>
                                    </h3>
                                   
                                     <h2 class="header_title" data-animation="animated flipInX">Welcome to <br> Zapl-Earn</h2>
                                     <div  class="button ml-0" data-animation="animated lightSpeedIn">
                                        <a  href="login.aspx" class="page-scroll btn-inline main-btn-inline  btn mr-4">Log in</a>
                                        <a href="gigs.aspx" class="main-btn-outline btn-outline btn">Explore Gigs</a>
                                    </div>
                                  </div>
                                </div> <!-- header hero content -->

                            </div>
                            <div class="col-lg-6">
                                <div class="carousel-thumb">
                                    <img src="/assets/img/asset 19.svg" class="img-fluid">
                                </div>
                            </div>
                        </div>

                    </div>
<!--
                    <!-- second slide 
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="header_hero_content">
                                  <div class="carousel-caption d-md-block">
                                    <h3 data-animation="animated bounceInLeft">
                                      <span>IT Solutions And Technology</span>
                                    </h3>
                                   
                                     <h2 class="header_title" data-animation="animated flipInX">Expert IT Solutions For <br> Digital Technology</h2>
                                     <div  class="button ml-0" data-animation="animated lightSpeedIn">
                                        <a  href="#contact" class="page-scroll btn-inline main-btn-inline  btn mr-4">Contact Us</a>
                                        <a href="#" class="main-btn-outline btn-outline btn">Read more</a>
                                    </div>
                                  </div>
                                </div> <!-- header hero content 
                            </div>
                            <div class="col-lg-6">
                                <div class="carousel-thumb">
                                    <img src="assets/images/normal/slider2.png" class="img-fluid">
                                </div>
                            </div>
                        </div>

                    </div>

                    <!-- third slide 
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="header_hero_content">
                                  <div class="carousel-caption d-md-block">
                                    <h3 data-animation="animated bounceInLeft">
                                      <span>IT Solutions And Technology</span>
                                    </h3>
                                   
                                     <h2 class="header_title" data-animation="animated flipInX">Expert IT Solutions For <br> Digital Technology</h2>
                                    <div  class="button ml-0" data-animation="animated lightSpeedIn">
                                        <a  href="#contact" class="page-scroll btn-inline main-btn-inline  btn mr-4">Contact Us</a>
                                        <a href="#" class="main-btn-outline btn-outline btn">Read more</a>
                                    </div>
                                  </div>
                                </div> <!-- header hero content 
                            </div>
                            <div class="col-lg-6">
                                <div class="carousel-thumb">
                                    <img src="assets/images/normal/slider.png" class="img-fluid">
                                </div>
                            </div>
                        </div>

                    </div>
                  </div>

                  <!-- controls 
                  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                   <i class="icofont-square-left"></i>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <i class="icofont-square-right"></i>
                    <span class="sr-only">Next</span>
                  </a>
-->
                </div>


            </div> <!-- container -->

        </div> <!-- header hero -->
            </div>
    </section>

    <!--====== HEADER PART ENDS ======-->
    
    <!--====== SERVICES PART START ======-->

    <section class="services_area">
        <div class="container">
            <div class="services_row">
                
          
                 <!-- row -->
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_service wow fadeInUp text-center mt-30"  data-wow-delay=".2s">
                        <span class="icon"><img src="assets/images/icons/v3_09.png" class="img-fluid"></span>
                        <h5 class="title">Monetise your Passion</h5>
                        <p>Zapl-Earn helps a creator to monetise their business by helping them
						sell the services to appropriate client who requires it.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_service wow fadeInUp text-center mt-30" data-wow-delay=".4s">
                        <span class="icon"><img src="assets/images/icons/v3_10.png" class="img-fluid"></span>
                        <h5 class="title">Find Freelancers Easily</h5>
                        <p>Zapl-Earn offers a lot of freelancers divided by
						categories who can help the service buyers to pick according
						to their budget and requirement</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_service wow fadeInUp text-center mt-30" data-wow-delay=".8s">
                        <span class="icon"><img src="assets/images/icons/v3_11.png" class="img-fluid"></span>
                        <h5 class="title">Sell your Services</h5>
                        <p>Zapl-Earn offers a lot of freelancers divided by
                            categories who can help the service buyers to pick according
                            to their budget and requirement</p>
                    </div>
                </div>
 
            </div> <!-- row -->
              </div>
        </div> <!-- container -->
    </section>

    <!--====== SERVICES PART ENDS ======-->
    


    <!--====== PARTNERS PART START ======-->

    <section id="parters_area" class="parters_area ">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="section_title  wow fadeInDown text-center pb-25" data-wow-delay=".2s">
                        <span class="span-title">Our Clients, Our Trust</span>
                    </div>
                </div>
            </div> <!-- row -->
            <div class="row justify-content-center">
                <div class="col-lg-10 p-0">
                    <div class="row our_partners p-0">
                        <div class="col-lg-2">
                            <div class="single_logo text-center">
                                <div class="client_image">
                                    <img src="img/brands/logo2.png" class="img-fluid" alt="Company logo">
                                </div>

                            </div> <!-- single client -->
                        </div>
                        <div class="col-lg-2">
                            <div class="single_logo text-center">
                                <div class="client_image">
                                    <img src="img/brands/logo3.png" class="img-fluid" alt="Company logo">
                                </div>

                            </div> <!-- single client -->
                        </div>
                        <div class="col-lg-2">
                            <div class="single_logo text-center">
                                <div class="client_image">
                                    <img src="img/brands/logo4.png" class="img-fluid" alt="Company logo">
                                </div>

                            </div> <!-- single client -->
                        </div>
                        <div class="col-lg-2">
                            <div class="single_logo text-center">
                                <div class="client_image">
                                    <img src="img/brands/logo5.png" class="img-fluid" alt="Company logo">
                                </div>

                            </div> <!-- single client -->
                        </div>
                        <div class="col-lg-2">
                            <div class="single_logo text-center">
                                <div class="client_image">
                                    <img src="img/brands/logo6.png" class="img-fluid" alt="Company logo">
                                </div>

                            </div> <!-- single client -->
                        </div>
                        <div class="col-lg-2">
                            <div class="single_logo text-center">
                                <div class="client_image">
                                    <img src="img/brands/logo7.png" class="img-fluid" alt="Company logo">
                                </div>

                            </div> <!-- single client -->
                        </div>
                        <div class="col-lg-2">
                            <div class="single_logo text-center">
                                <div class="client_image">
                                    <img src="img/brands/logo1.png" class="img-fluid" alt="Company logo">
                                </div>

                            </div> <!-- single client -->
                        </div>
                        <div class="col-lg-2">
                            <div class="single_logo text-center">
                                <div class="client_image">
                                    <img src="img/brands/logo9.png" class="img-fluid" alt="Company logo">
                                </div>

                            </div> <!-- single client -->
                        </div>
                       
              
                    </div> <!-- row -->
                </div>

            </div>
        </div> <!-- container -->
    </section>

    <!--====== PARTNERS PART ENDS ======-->

    <!--====== EXPERIENCE PART START ======-->

    <section id="about" class="about_style2 pt-130 pb-60">
        <div class="container">
             <!-- row -->
            <div class="row pb-50">
                <div class="col-lg-7">
                    <div class="section_title text-left pb-25 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="about-title">Offer The Latest <br> Services And Solutions <br> To Your Clients !</h2>
                        
                    </div>
                </div>
                <div class="col-lg-5 d-flex align-items-center">
                    <div class="about_para wow fadeInUp" data-wow-delay=".4s">
                        <p>Zapl-Earn tries to offer the best services to the clients from freelancers.
						It also serves the purpose of clients by helping them provide the services.
						</p>
                    </div>
                </div>
            </div> <!-- row -->
             <!-- row -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="about_style2_thmb wow fadeInLeft" data-wow-delay=".4s">
                        <img src="img/exercism-logo/community.jpg" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-6 d-flex align-items-center custom_col_float wow fadeInRight" data-wow-delay=".6s">
                    <div class="row custom_row_float">
                        <div class="col-lg-12 p-0">
                            <div class="about_info_style2">
                                <div class="media mb-4">
                                  <img class="mr-3" src="assets/images/icons/v3_1.png" class="img-fluid" alt="icon">
                                  <div class="media-body">
                                    <h5 class="mt-0 mb-3">Explore Gigs</h5>
											<p>On Zapl-Earn, you can explore gigs over the platform
											where different freelancers provide their personalised
											freelancing services.</p>
                                  </div>
                                </div>
                                <div class="media">
                                  <img class="mr-3" src="assets/images/icons/v3_02.png" class="img-fluid" alt="icon">
                                  <div class="media-body">
                                    <h5 class="mt-0 mb-3">Purchase Services</h5>
                                        <p>
										As Zapl-Earn offer services from freelancers so buyers can get things
										done easily and helps them to grow their business exponetially
										which is very helpful for the non-creative person from the business.
										</p>
                                  </div>
                                </div>
                                <div class="media mt-4">
                                    <a href="gigs.aspx" target="_self" class="btn btn3-inline-gradient main-btn-inline" style="border: 1.5px solid blue;">Explore Gigs</a>
                                </div>
                            </div>      
                        </div>
                    </div>
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </section>

    <!--====== EXPERIENCE PART ENDS ======-->
    
    <section id="need_help" class="get_free_estimate_style3 pt-110 pb-110">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5 wow fadeInLeft" data-wow-delay=".2s">
                        <div class="section_title mb-3">
                         <h2 class="title" style="color :white">Get a Free Call</h2>
                            <p>Connect with a professional executive over call to get<br> started or your queries</p>
                        </div>
                </div>
                <div class="col-lg-5 wow fadeInRight" data-wow-delay=".6s">
                    <div class="support_info text-center">
    
                        <a href="Landing.aspx#contact" class="btn-inline main-btn-inline  btn mt-4 mr-3">Contact Us</a>
                        <a href="Landing.aspx#footer" class="main-btn-outline btn-outline btn mt-4">Get a callback</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!--====== NEED HELP PART ENDS ======-->

    <!--====== WE OFFER START ======-->


    <section id="services" class="our_offer_style3 pt-130">
        <div class="container">
 

            <div class="row justify-content-center">
                <div class="col-lg-10 p-0">
                   <div class="col-lg-12  p-0">
                        <div class="section_title text-center pb-25 wow fadeInUp" data-wow-delay=".2s">
                            <h2 class="title">Explore from the popular <br>Services</h2>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-10 p-0">
                  <div class="row">
                    <div class="col-lg-4 wow fadeInUp d-flex" data-wow-delay=".2s">
                        <div class="single_offer float_first_item mt-30">
                            <span class="icon text-left"><img src="assets/images/icons/v3_06.png" class="img-fluid"></span>
                            <h5 class="title">Graphic Designing</h5>
                            <p>The entire process of defining requirements, visualizing and creating graphics including illustrations, logos, layouts and photos.</p>
                           
                        </div>
                    </div>
                    <div class="col-lg-4 wow fadeInUp d-flex" data-wow-delay=".4s">
                        <div class="single_offer float_first_item mt-30">
                            <span class="icon text-left"><img src="assets/images/icons/v3_02.png" class="img-fluid"></span>
                            <h5 class="title">Video Editing</h5>
                            <p>Manipulating and editing film pieces in a way that is invisible to the audience.<br><br><br></p>
                           
                        </div>
                    </div>
                    <div class="col-lg-4 wow fadeInUp d-flex" data-wow-delay=".6s">
                        <div class="single_offer float_first_item mt-30">
                            <span class="icon text-left"><img src="assets/images/icons/v3_07.png" class="img-fluid"></span>
                            <h5 class="title">Logo Designing</h5>
                            <p>A logo designing is an expert graphic designer that specializes in developing and implementing a unique and original mark or graphic that identifies an organization.</p>
                           
                        </div>
                    </div>

                  </div>
                  <div class="row pt-2">
                    <div class="col-lg-4 wow fadeInUp d-flex" data-wow-delay=".2s">
                        <div class="single_offer float_first_item mt-30">
                            <span class="icon text-left"><img src="assets/images/icons/v3_07.png" class="img-fluid"></span>
                            <h5 class="title">Website Developing</h5>
                            <p>A Web Developer ensure that sites meet user expectations by ensuring they look good, run smoothly and offer easy access points with no loading issues between pages or error messages.</p>
                           
                        </div>
                    </div>
                    <div class="col-lg-4 wow fadeInUp d-flex" data-wow-delay=".4s">
                        <div class="single_offer float_first_item mt-30">
                            <span class="icon text-left"><img src="assets/images/icons/v3_05.png" class="img-fluid"></span>
                            <h5 class="title">Content Writing</h5>
                            <p>A Content Writer is a professional who writes informative and engaging articles to help brands showcase their products.<br><br><br></p>
                           
                        </div>
                    </div>
                    <div class="col-lg-4 wow fadeInUp d-flex" data-wow-delay=".6s">
                        <div class="single_offer float_first_item mt-30">
                            <span class="icon text-left"><img src="assets/images/icons/v3_08.png" class="img-fluid"></span>
                            <h5 class="title">Digital Marketing</h5>
                            <p> A Digital Marketer, also known as a Digital Marketing Specialist, is responsible for devising marketing campaigns to maintain a brand.<br><br><br></p>
                           
                        </div>
                    </div>

                  </div>
                 </div>
            </div>

<br><br>
        </div>
    </section>


    <!--====== WE OFFER ENDS ======-->
    



  <!--======  PORTFOLIO ENDS ======-->

 



    <!--====== OUR CLIENTS START ======-->


    <section id="testimonials" class="our_clients_style3 pb-100 pt-130">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7 col-md-9">
                <div class="section_title text-center pb-25 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="title">How freelancers perform on <br>Zapl-Earn</h2>
                        
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="row d-flex our_clients_slider_v2 d-flex wow fadeInUp" data-wow-delay=".4s">
                        <div class="col-lg-6 d-flex">
                            <div class="client_single_info mt-90 mb-3 text-center">
                               <div class="client_thumb text-center mb-5">
                                    <img src="img/exercism-logo/single-man-beard-pc.svg" class="img-fluid" alt="" height="125" width="125">
                                    <h5 class="mb-2 mt-4">Vrushil Parekh</h5>
                                    <span>Web Developer</span>
                                </div>
                                <p class="mb-4">A Web Developer ensure that sites meet user expectations by ensuring they look good, run smoothly and offer easy access points with no loading issues between pages or error messages.</p>
                                <div class="rating_list pt-4">
                                    <ul>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                    </ul>
                                </div>

                            </div> <!-- single client -->
                        </div>
                        <div class="col-lg-6 d-flex">
                            <div class="client_single_info mt-90 mb-3 text-center">
                                <div class="client_thumb text-center mb-5">
                                    <img src="img/exercism-logo/robot.svg" class="img-fluid" height="125" width="125" alt="">
                                    <h5 class="mb-2 mt-4">Satish Singh</h5>
                                    <span>Web Developer</span>
                                </div>
                                <p class="mb-4">A Web Developer ensure that sites meet user expectations by ensuring they look good, run smoothly and offer easy access points with no loading issues between pages or error messages. </p>
                               <div class="rating_list pt-4">
                                    <ul>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                        <li><i class="icofont-star"></i></li>
                                    </ul>
                                </div>

                            </div> <!-- single client -->
                        </div>
                        <div class="col-lg-6 d-flex">
                            <div class="client_single_info mt-90 mb-3 text-center">
                               <div class="client_thumb text-center mb-5">
                                    <img  src="img/exercism-logo/single-girl-pc.svg" height="125" width="125" class="img-fluid" alt="">
                                    <h5 class="mb-2 mt-4">Preeti Rai</h5>
                                    <span>Web Developer</span>
                                </div>
                                <p class="mb-4">A Web Developer ensure that sites meet user expectations by ensuring they look good, run smoothly and offer easy access points with no loading issues between pages or error messages.
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

                            </div> <!-- single client -->
                        </div>
                        <div class="col-lg-6 d-flex">
                            <div class="client_single_info mt-90 mb-3 text-center">
                               <div class="client_thumb text-center mb-5">
                                    <img  src="img/exercism-logo/aestronaut.svg" height="125" width="125" class="img-fluid" alt="">
                                    <h5 class="mb-2 mt-4">Murtaza Tohfafarosh</h5>
                                    <span>Web Developer</span>
                                </div>
                                <p class="mb-4">A Web Developer ensure that sites meet user expectations by ensuring they look good, run smoothly and offer easy access points with no loading issues between pages or error messages.
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

                            </div> <!-- single client -->
                        </div>
                 
         
                       
              
                    </div> <!-- row -->
                </div>

            </div>

        </div>
    </section>


    <!--====== OUR CLIENTS ENDS ======-->



    <!--======  TEAM SECTION  START ======-->

    <section id="counter_area" class="counter_style3 video-bg-white mt-200  pt-200 pb-80">

        <div class="container">
            <!-- Start Row -->
            <div class="row justify-content-center">
                <div class="col-lg-8 wow fadeInDown" data-wow-delay=".2s">
                    <div class="video_image">
                        <img src="img/exercism-logo/group-logo-pc.svg" alt="video image">

                        <a   data-toggle="modal" data-target="#video_modal" class="video_play video-popup"><i class="icofont-ui-play"></i></a>
                    </div> <!-- video image -->
                </div>
            </div> <!-- row -->
            <!-- End Row -->
            
                <div class="col-lg-12 p-0">
                  <div class="row counter_v2 p-0">
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single_counter text-center wow fadeInUp" data-wow-delay=".4s">
                            <span class="pb-3"><i class="icofont-bag-alt"></i></span>
                            <h3 class="title"  style="color:#2e3192"><span class="countup" cup-end="264">264</span>K+</h3>
                            <p style="color:#2e3192">Gigs completed</p>
                                
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single_counter text-center wow fadeInUp" data-wow-delay=".6s">
                            <span class="pb-3"><i class="icofont-basket"></i></span>
                            <h3 class="title" style="color:#2e3192"><span class="countup" cup-end="350">350</span>K+</h3>
                            <p style="color:#2e3192">Active Users</p>
                                
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="single_counter text-center wow fadeInUp" data-wow-delay=".8s">
                            <span class="pb-3"><i class="icofont-ui-love"></i></span>
                            <h3 class="title" style="color:#2e3192"><span class="countup" cup-end="144">144</span>K+</h3>
                            <p style="color:#2e3192">Total Freelancers</p>
                                
                        </div>
                    </div>
                    
                    </div>
    

                  </div>
                 </div>
            </div>


        </div>
    </section>


    <!--======  TEAM SECTION  ENDS ======-->


   <!--  Modal Video Iframe Open -->
        <div class="video_area_modal">
            <div class="modal fade" id="video_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                  
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="video_body">
                        <div class="embed-responsive embed-responsive-16by9">
                          <iframe class="embed-responsive-item" src="gigMedia/Zaplearn.mp4" allowfullscreen></iframe>
                        </div>
                    </div>  
                  </div>
                
                </div>
              </div>
            </div>
        </div>
       <!--  Modal Video Iframe Open -->



    <!--======  COUNTER  START ======-->

        
   <section id="team" class="team_area_style3  pt-130">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12">
                <div class="section_title text-center pb-25 wow fadeInUp" data-wow-delay=".2s">
                        <h2 class="about-title">Top rated freelancers <br> in this month</h2>    
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10 p-0">
                  <div class="row p-0">
                      <asp:Repeater ID="repEarnings" runat="server"><ItemTemplate >
                    <div class="col-lg-4 d-flex">
                        <div class="team_member text-center mt-30 wow fadeInUp w-100" data-wow-delay=".4s">
                            <div class="team_thumb">
                                <img src="<%# Eval("gigpic") %>" class="img-fluid">
                               <div class="team_caption">
                                   <h4><%# Eval("name") %></h4>
                                   <span class="pt-2">  &nbsp;<%# Eval("email") %></span>
                               </div>
                            </div>
                                

                        </div>
                    </div>
                    </ItemTemplate></asp:Repeater>

                    <%--<div class="col-lg-4">
                        <div class="team_member text-center mt-30 wow fadeInUp w-100" data-wow-delay=".6s">
                            <div class="team_thumb">
                                <img src="assets/images/team/3.png" class="img-fluid"/>
                               <div class="team_caption">
                                   <h4>Maria Ison</h4>
                                   <span class="pt-2">--&nbsp;UI/UX Design</span>
                               </div>
                            </div>
                            <div class="team_overlay">
                                <ul>
                                    <li><a href=""><i class="icofont-facebook"></i></a></li>
                                    <li><a href=""><i class="icofont-twitter"></i></a></li>
                                    <li><a href=""><i class="icofont-brand-whatsapp"></i></a></li>
                                    <li><a href=""><i class="icofont-pinterest"></i></a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team_member text-center mt-30 wow fadeInUp w-100" data-wow-delay=".8s">
                            <div class="team_thumb">
                                <img src="assets/images/team/2.png" class="img-fluid"/>
                               <div class="team_caption">
                                   <h4>Maria Ison</h4>
                                   <span class="pt-2">--&nbsp;UI/UX Design</span>
                               </div>
                            </div>
                            <div class="team_overlay">
                                <ul>
                                    <li><a href=""><i class="icofont-facebook"></i></a></li>
                                    <li><a href=""><i class="icofont-twitter"></i></a></li>
                                    <li><a href=""><i class="icofont-brand-whatsapp"></i></a></li>
                                    <li><a href=""><i class="icofont-pinterest"></i></a></li>
                                </ul>
                            </div>

                        </div>
                    </div>--%>
                  
    

                  </div>
                 </div>
            </div>


        </div>
    </section>


    <!--======  COUNTER  ENDS ======-->
    
    <!--====== CONTACT PART START ======-->

    

    <!--====== FOOTER PART ENDS ======-->
    
    <!--====== BACK TOP TOP PART START ======-->

    
    
</asp:Content>



    