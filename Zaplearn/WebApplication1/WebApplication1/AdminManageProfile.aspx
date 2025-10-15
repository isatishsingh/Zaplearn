<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminManageProfile.aspx.cs" Inherits="WebApplication1.AdminManageProfile" %>

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
		<title>Zaplearn</title>
	<meta name="description" content="#"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
		<!-- Bootstrap core CSS -->
		<link href="dist/css/lib/bootstrap.min.css" type="text/css" rel="stylesheet"/>
		<!-- Swipe core CSS -->
		<link href="dist/css/swipe.min.css" type="text/css" rel="stylesheet"/>
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
							<div class="col-md-10">
								<div class="content">
									<h1>Manage Profile</h1>
									
									<div class="signup">

										
										<asp:HiddenField ID="picname" value="" runat="server" />
										<div class="form-parent">
											<div class="form-group" style="width: 40%!important;">
												<asp:TextBox runat="server" type="text" id="txtusrname" class="form-control" placeholder="Username" disabled="true"/>
												<button class="btn icon"><i class="material-icons">person_outline</i></button>
											</div>
											<div class="form-group" style="width: 60%!important;"> 
												<asp:TextBox runat="server" type="email" id="txtemail" class="form-control" placeholder="Email Address" required="true"/>
												<button class="btn icon"><i class="material-icons">mail</i></button>
											</div>
										</div>
										<div class="form-group" width="50%">
											<asp:TextBox runat="server" type="password" id="txtpass" class="form-control" placeholder="Password" style="width: 100%!important;" required="true"/>
											<i id="togglePassword" class="fa fa-eye"></i>
											<button class="btn icon"><i class="material-icons">lock</i></button>
										</div>

										<center>
										<div class="file-upload">
											<asp:FileUpload ID="profilePhoto" runat="server" CssClass="form-control" />
											<label for="fileinput" style="background:linear-gradient(-135deg, #444929 0%, #765367 100%);" class="form-control">
											<span style="margin: 0.1rem;"><ion-icon name="images"></ion-icon></span> Upload Profile Photo </label>
											<asp:Label runat="server" ID="lblfile" Text="File Name"></asp:Label> 
										 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="adminProfile" ControlToValidate="profilePhoto" ErrorMessage="Please select the valid file type" Font-Bold="True" ForeColor="red" Font-Size="Medium" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"/>
										</div>
										
										<div class="form-parent">
										
											<div class="form-group" style="width: 35%!important;">
												<asp:TextBox runat="server" type="text" id="txtname" class="form-control" placeholder="Name" required="true"/>
												<button class="btn icon"><i class="material-icons">person</i></button>
											</div>
											<div class="form-group" style="width: 35%!important;">
												<asp:TextBox runat="server" type="number" id="txtcno" min="999999999" class="form-control" placeholder="Contact Number" required="true"/>
												<button class="btn icon"><i class="material-icons">call_outline</i></button>
											</div>
											<div class="form-group" style="width: 30%!important;">
												<asp:TextBox runat="server" type="text" id="txtDOB" class="form-control" placeholder="DOB" required="true"/>
												<button class="btn icon"><i class="material-icons">cake_outline</i></button>
											</div>
										</div>	
											<%--<div class="form-parent">
											<div class="form-group" style="width: 50%!important;">
												<asp:TextBox runat="server" type="text" id="txtcon" class="form-control" placeholder="Country" required/>
												<button class="btn icon"><i class="material-icons">my_location</i></button>
											</div>
											<div class="form-group" style="width: 50%!important;"> 
												<asp:TextBox runat="server" type="text" id="txtcity" class="form-control" placeholder="City" required/>
												<button class="btn icon"><i class="material-icons">home_pin</i></button>
											</div>
										
										</div>--%><br/>
										<asp:button runat="server" id="btnupdate" type="submit" OnClick="btnupdate_Click"  class="btn button" style ="background: linear-gradient(-135deg, #444929 0%, #765367 100%);" Text="Update Profile" ValidationGroup="adminProfile" />
										<br /><a href="AdminDashboard.aspx" class="btn" style="color:black">Return Back</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Sign Up -->
				
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
			background: #1A374D;
			color: #fff;
			text-align: center;
			border-radius: 5px;
			width: 110%;
		}
	</style>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

	<script>
        $(document).ready(function () {
            $('#profilePhoto').change(function (e) {
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

