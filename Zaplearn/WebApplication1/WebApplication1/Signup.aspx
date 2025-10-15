<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication1.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
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
		<title>Sign Up</title>
		<meta name="description" content="#"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
		<!-- Bootstrap core CSS -->
		<link href="dist/css/lib/bootstrap.min.css" type="text/css" rel="stylesheet"/>
		<!-- Swipe core CSS -->
		<link href="dist/css/swipe.min.css" type="text/css" rel="stylesheet"/>
		<!-- Favicon -->
		<link rel="shortcut icon" href="img/favicon/z-high-resolution-logo-black-transparent.png" sizes="16x16" type="image/png"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

	<script>
		$(document).ready(function () {
			$('#profilePhoto').change(function (e) {
				if (e.target.files[0]) {
					var fileName = e.target.files[0].name;
					$('#lblfile').text(fileName);
				}
				else
				{
                    $('#lblfile').text('File Name');
				}
            });

		});
        
    </script>
	
	
</head>
	<body >
<form id="form1" runat="server">
        	<main>
			<div class="layout">
				<!-- Start of Sign Up -->
				<div class="main order-md-2">
					<div class="start">
						<div class="container">
							<div class="col-md-12">
								<div class="content">
									<h1>Create Account</h1>
									
									<div class="signup">


										<div class="file-upload">
										<asp:FileUpload ID="profilePhoto" runat="server" CssClass="form-control" />
										<label for="fileinput" class="form-control"><span style="margin: 0.1rem"><ion-icon name="images"></ion-icon></span> Upload Profile Photo </label>
										 <asp:Label style="color:#536976!important" runat="server" ID="lblfile" Text="File Name"></asp:Label> 
										 <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server" ValidationGroup="submit" ControlToValidate="profilePhoto" ErrorMessage="Please select the valid file type" Font-Bold="True" ForeColor="red" Font-Size="Medium" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"/>
										</div>
										<div class="form-parent">
											<div class="form-group" style="width: 40%!important;">
												<asp:TextBox runat="server" type="text" id="txtusrname" class="form-control" style="color:#536976!important" placeholder="Username" required="true"/>
												<button class="btn icon"><i class="material-icons">person_outline</i></button>
											</div>
											<div class="form-group" style="width: 60%!important;"> 
												<asp:TextBox runat="server" type="email" id="txtemail" style="color:#536976!important" class="form-control" placeholder="Email Address" required="true"/>
												<button class="btn icon"><i class="material-icons">mail</i></button>
											</div>
										</div>
										<div class="form-group" width="50%">
											<asp:TextBox runat="server" type="password" id="txtpass" class="form-control" placeholder="Password" style="width: 100%!important; color:#536976!important" required="true"/>
                        					<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpass" ErrorMessage="Password is less than 6 digits" ValidationExpression="^[a-zA-Z0-9@$!#%^&*()-_+=]{6,}$" SetFocusOnError="True" Display="Dynamic" ForeColor="Red" ValidationGroup="submit" Font-Strikeout="False"/>                        

											<i id="togglePassword" class="fa fa-eye"></i>
											<button class="btn icon"><i class="material-icons">lock</i></button>

										</div>

										
										
										<div class="form-parent">
										
											<div class="form-group" style="width: 35%!important;">
												<asp:TextBox runat="server" style="color:#536976!important" type="text" id="txtname" class="form-control" placeholder="Name" required="true"/>
												<button class="btn icon"><i class="material-icons">person</i></button>
											</div>
											<div class="form-group" style="width: 35%!important;">
												<asp:TextBox runat="server" style="color:#536976!important" type="number" id="txtcno" class="form-control" placeholder="Contact Number" required="true"/>
												<button class="btn icon"><i class="material-icons">call_outline</i></button>
											</div>
											<div class="form-group" style="width: 30%!important;">
												<asp:TextBox runat="server" style="color:#536976!important" type="text" id="txtDOB" class="form-control" placeholder="DOB" required="true"/>
												<button class="btn icon"><i class="material-icons">cake_outline</i></button>
											</div>
										</div>	
											<div class="form-parent">
											<div class="form-group" style="width: 50%!important;">
												<asp:TextBox runat="server" style="color:#536976!important" type="text" id="txtcon" class="form-control" placeholder="Country" required="true"/>
												<button class="btn icon"><i class="material-icons">my_location</i></button>
											</div>
											<div class="form-group" style="width: 50%!important;"> 
												<asp:TextBox runat="server" style="color:#536976!important" type="text" id="txtcity" class="form-control" placeholder="City" required="true"/>
												<button class="btn icon"><i class="material-icons">home_pin</i></button>
											</div>
										
										</div><br/>
										<asp:button runat="server" onclick="btnreg_Click" id="btnreg" type="submit" class="btn button"  style ="    background: linear-gradient(-135deg, #444929 0%, #765367 100%)" Text="Sign Up" ValidationGroup="submit" />
										<br /><a href="landing.aspx" class="btn" style="color:black">Return Back</a>
										<div class="callout">	
											<span>Already a member? <a href="sign-in.html">Sign In</a></span>
										</div>									
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Sign Up -->
				<!-- Start of Sidebar -->
				<div class="aside order-md-1">
					<div class="container">
						<div class="col-md-12">
							<div class="preference">
								<h2>Welcome Back!</h2>
								<p>To keep connected with your friends please login with your personal info.</p>
								<a href="login.aspx" class="btn button" style="color:black">Sign In</a>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Sidebar -->
			</div> <!-- Layout -->

		</main>

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="dist/js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script>window.jQuery || document.write('<script src="dist/js/vendor/jquery-slim.min.js"><\/script>')</script>
		<script src="dist/js/vendor/popper.min.js"></script>
		<script src="dist/js/bootstrap.min.js"></script>
        
	<style >
		.file-upload {
    position: relative;
    width: 100%;
    max-width: 200px;
    cursor: pointer;
}

.file-upload input[type="file"] {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    opacity: 0;
}

.file-upload label {
    padding: 10px 20px;
	background: linear-gradient(-135deg, #444929 0%, #765367 100%); /* Added for Zapl-Earn*/
    color: #fff;
    text-align: center;
    border-radius: 5px;
    width: 110%;
}
	</style>

	<style type="text/css">
    @media screen {
      @font-face {
        font-family: 'Fira Sans';
        font-style: normal;
        font-weight: 300;
        src: local(''),
        url('https://fonts.gstatic.com/s/firasans/v10/va9B4kDNxMZdWfMOD5VnPKruRA.woff2') format('woff2'),
        url('https://fonts.gstatic.com/s/firasans/v10/va9B4kDNxMZdWfMOD5VnPKruQg.woff') format('woff');
      }
      @font-face {
        font-family: 'Fira Sans';
        font-style: normal;
        font-weight: 400;
        src: local(''),
        url('https://fonts.gstatic.com/s/firasans/v10/va9E4kDNxMZdWfMOD5VflQ.woff2') format('woff2'),
        url('https://fonts.gstatic.com/s/firasans/v10/va9E4kDNxMZdWfMOD5Vfkw.woff') format('woff');
      }
      @font-face {
        font-family: 'Fira Sans';
        font-style: normal;
        font-weight: 500;
        src: local(''),
        url('https://fonts.gstatic.com/s/firasans/v10/va9B4kDNxMZdWfMOD5VnZKvuRA.woff2') format('woff2'),
        url('https://fonts.gstatic.com/s/firasans/v10/va9B4kDNxMZdWfMOD5VnZKvuQg.woff') format('woff');
      }
      @font-face {
        font-family: 'Fira Sans';
        font-style: normal;
        font-weight: 700;
        src: local(''),
        url('https://fonts.gstatic.com/s/firasans/v10/va9B4kDNxMZdWfMOD5VnLK3uRA.woff2') format('woff2'),
        url('https://fonts.gstatic.com/s/firasans/v10/va9B4kDNxMZdWfMOD5VnLK3uQg.woff') format('woff');
      }
      @font-face {
        font-family: 'Fira Sans';
        font-style: normal;
        font-weight: 800;
        src: local(''),
        url('https://fonts.gstatic.com/s/firasans/v10/va9B4kDNxMZdWfMOD5VnMK7uRA.woff2') format('woff2'),
        url('https://fonts.gstatic.com/s/firasans/v10/va9B4kDNxMZdWfMOD5VnMK7uQg.woff') format('woff');
      }
    }
  </style>
 

    </form>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KSZPFBPQ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
</body>
</html>
