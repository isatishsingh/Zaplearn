<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMedia.aspx.cs" Inherits="WebApplication1.AddMedia" %>

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
		<title>Sign Up – Swipe</title>
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
			$('#uploadPhotos').change(function (e) {
				
                $('#lblfile').text("");
                for (var i = 0; i < this.files.length; i++)
				{
                    $('#lblfile').append(this.files[i].name+" ");
				}
				
            });

            $('#uploadVideos').change(function (e) {

                $('#Label1').text("");
                for (var i = 0; i < this.files.length; i++) {
                    $('#Label1').append(this.files[i].name + " ");
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
									<h1>Upload Media</h1>
									
									<div class="signup">

										<center>
										<div class="file-upload">
											<div class="file-upload">
												<asp:FileUpload ID="uploadPhotos" accept=".png,.jpg,.jpeg" runat="server" CssClass="form-control" AllowMultiple="True" />
												<label for="fileinput" class="form-control"><span style="margin: 0.1rem"><ion-icon name="images"></ion-icon></span> Upload Photo </label>
												<asp:Label style="color:#536976!important" runat="server" ID="lblfile" Text="File Name"></asp:Label> 
												<asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server" ValidationGroup="submit" ControlToValidate="uploadPhotos" ErrorMessage="Please select the valid file type" Font-Bold="True" ForeColor="red" Font-Size="Medium" ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"/>

											</div><br/><br/>
											<div class="file-upload">
												<asp:FileUpload ID="uploadVideos" runat="server" CssClass="form-control btn-upload" AllowMultiple="True" />
												<label for="fileinput" class="form-control"><span style="margin: 0.1rem"><ion-icon name="images"></ion-icon></span> Upload Video </label>
												<asp:Label style="color:#536976!important" runat="server" ID="Label1" Text="File Name"></asp:Label> 
												<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="submit" ControlToValidate="uploadVideos" ErrorMessage="Please select the valid file type" Font-Bold="True" ForeColor="red" Font-Size="Medium" ValidationExpression="(.*?)\.(mp4|MP4|3gp|3GP|mov|MOV|flv|FLV)$"/>
												
											</div>
										</div>
										<br/>
										<%--<asp:button runat="server" onclick="btnreg_Click" id="btnreg" type="submit" class="btn button"  style ="background: linear-gradient(-135deg, #444929 0%, #765367 100%);" Text="Sign Up"/>--%>
										<asp:button runat="server" OnClick="Button1_Click" id="Button1" type="submit" class="btn button"  style ="background: linear-gradient(-135deg, #444929 0%, #765367 100%);" Text="Done" ValidationGroup="submit" />
										<br /><a href="SellerDashboard.aspx" class="btn" style="color:black">Return Back</a>
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
				<div class="aside order-md-1"	style ="background: linear-gradient(-135deg, #444929 0%, #765367 100%)">
					<div class="container">
						<div class="col-md-12">
							<div class="preference">
								<h2>Add Media</h2>
								<p>To keep your profile engaging, please add gig photo/video.</p>
								<%--<a href="login.aspx" class="btn button" style="color:black">Sign In</a>--%>
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
    /* background: #1A374D; */
	background: linear-gradient(-135deg, #444929 0%, #765367 100%);
    color: #fff;
    text-align: center;
    border-radius: 5px;
    width: 110%;
}
	</style>
    </form>
		<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KSZPFBPQ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

</body>
</html>
