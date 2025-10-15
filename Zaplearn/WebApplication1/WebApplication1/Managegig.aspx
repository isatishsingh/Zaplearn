<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Managegig.aspx.cs" Inherits="WebApplication1.Managegig" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
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
		<title>Manage Gig</title>
		<meta name="description" content="#">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Bootstrap core CSS -->
		<link href="dist/css/lib/bootstrap.min.css" type="text/css" rel="stylesheet">
		<!-- Swipe core CSS -->
		<link href="dist/css/swipe.min.css" type="text/css" rel="stylesheet">
		<!-- Favicon -->
		<link rel="shortcut icon" href="img/favicon/z-high-resolution-logo-black-transparent.png" sizes="16x16" type="image/png"/>
</head>
<body>
    <form id="form1" runat="server">
        	<main>
			<div class="layout">
				<!-- Start of Sign Up -->
				<div class="main order-md-2">
					<div class="start">
						<div class="container"><center>
							<div class="col-md-8">
								<div class="content">
									<h1>Manage Gig</h1>
									<br>
									<div class="signup" style="margin-top: -50px;">
										<div class="form-parent">
											<div class="form-group" style="width: 100%!important;">
												<asp:TextBox runat="server" type="text" id="gigtitle" class="form-control" placeholder="Gig title" />
												<button class="btn icon"><i class="material-icons">edit</i></button>
											</div>	
										</div>

										<div class="form-group">
											<asp:TextBox runat ="server" type="text" id="gigdes" class="form-control" placeholder="Description" style="width: 100%!important;" />
											<button class="btn icon"><i class="material-icons">description</i></button>
										</div>
										
										<div class="form-parent">
										<div class="form-group" style="width: 30%!important;">
												<asp:DropDownList runat ="server" type="number" AutoPostBack="true" id="inputservice" class="form-control"  placeholder="Experience">
													
												</asp:DropDownList> 
												<button class="btn icon"><i class="material-icons">dashboard</i></button>
										</div>
										<div class="form-group" style="width: 30%!important;">
											<asp:TextBox runat ="server" type="number" id="gigexp" class="form-control" min="0" placeholder="Experience" />
											<button class="btn icon"><i class="material-icons">keyboard</i></button>
										</div>
										<div class="form-group" style="width: 40%!important;"> 
											<asp:TextBox runat="server" type="number" id="startprice" class="form-control" placeholder="Starting Price" min="100" />
											<button class="btn icon"><i class="material-icons">payments</i></button>
										</div>
										</div>	
										<div class="form-group">
											<asp:TextBox runat ="server" type="text" id="addinfo" class="form-control" placeholder="Additional Information" style="width: 100%!important;" />
											<button class="btn icon"><i class="material-icons">info</i></button>
										</div>	
										<center>
										<div class="file-upload">
											<asp:FileUpload ID="gigPhoto" runat="server" CssClass="form-control" />
											<label for="fileinput" class="form-control"><span style="margin: 0.1rem"><ion-icon name="images"></ion-icon></span> Upload Gig Photo </label>
											<asp:Label runat="server" ID="lblfile" Text="File Name"></asp:Label> 
											<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="gigphotoManage" ControlToValidate="gigPhoto" ErrorMessage="Please select the valid file type" Font-Bold="True" ForeColor="red" Font-Size="Medium" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"/>

										</div>

										<asp:HiddenField runat="server" ID ="picname"/>
											</center>

										<%--<h3 style="color:black">Social Media</b></h3>--%>

										<div class="form-group">
											<asp:TextBox runat ="server"  type="text" id="iglink" class="form-control" placeholder="Instagram Link (optional)" style="width: 100%!important;" />
											<button class="btn icon"><i class="material-icons">link</i></button>
										</div>

										<div class="form-group">
											<asp:TextBox runat ="server" type="text" id="fglink" class="form-control" placeholder="Facebook Link (optional)" style="width: 100%!important;" />
											<button class="btn icon"><i class="material-icons">link</i></button>
										</div>
										

											

										<br />
										<asp:Button runat="server" type="submit" OnClick="gigUpdate" ID="gigsubmit" class="btn button" style ="background: linear-gradient(-135deg, #444929 0%, #765367 100%); width: 100%!important;" text="Update Gig" ValidationGroup="gigphotoManage"></asp:Button>
										<a href="SellerDashboard.aspx" class="btn" style="color:black">Return Back</a>
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
				<!-- Start of Sidebar 
				<div class="aside order-md-1"	style ="background: linear-gradient(-135deg, #292E49 0%, #536976 100%)">
					<div class="container">
						<div class="col-md-12">
							<div class="preference">
								<h2>Welcome Back!</h2>
								<p>To keep connected with your friends please login with your personal info.</p>
								<a href="login.aspx" class="btn button" style="color:black">Sign In</a>
							</div>
						</div>
					</div>
				</div> -->
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
			background: linear-gradient(-135deg, #444929 0%, #765367 100%);
			color: #fff;
			text-align: center;
			border-radius: 5px;
			width: 110%;
		}
		</style>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

		<script>
			$(document).ready(function () {
				$('#gigPhoto').change(function (e) {
					if (e.target.files[0]) {
						var fileName = e.target.files[0].name;
						$('#lblfile').text(fileName);
					}
					else {
						$('#lblfile').text($('#picname').attr('value'));
					}
				});

			});

		</script>
    </form>
	<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KSZPFBPQ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
</body>
</html>
