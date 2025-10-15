	<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="WebApplication1.Chat" %>


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
		<title>Zaplearn</title>
	<meta name="description" content="#"/>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
		<!-- Bootstrap core CSS -->
		<link href="dist/css/lib/bootstrap.min.css" type="text/css" rel="stylesheet"/>
		<!-- Swipe core CSS -->
		<link href="dist/css/swipe.min.css" type="text/css" rel="stylesheet"/>
		<!-- Favicon -->
		<link rel="shortcut icon" href="img/favicon/z-high-resolution-logo-black-transparent.png" sizes="16x16" type="image/png"/>
			<script src='jquery.min.js'> </script>
	<style >
		.bi{
			background-image: url("images/btn.png");
		}
		.main .chat .bottom .btn.send {
			padding: 15px 20px 0 15px;
			position: absolute;
			top: 0;
			bottom: 0;
			right: 0;
		}
		
	</style>
	<script>
		$(document).ready(function () {
			$(".con").children("a").click(function () {

				var ssid = ($(this).attr('value'));
				location.href = "Chat.aspx?sid=" + ssid;

			});
			let searchParams = new URLSearchParams(window.location.search);

			if (searchParams.has('sid')) {
				let sid = searchParams.get('sid');

				$("#list-chat").attr("class", "babble tab-pane fade active show");
				$("#chat1 .avatar-md").attr("src", $("a[value=" + sid + "]").children(".data").children("h4").text());
				$("#nme").text($("a[value=" + sid + "]").children(".data").children("h5").text());
			}

			$("#txt").keyup(function () {
				var msg = ($("#txt").val());
				$("#mesg").attr('value', msg);
			});
		});
    </script>
</head>
<body>
	
    
        <form if="form1" runat="server">
			<div class="layout">
				<!-- Start of Navigation -->
				<div class="navigation">
					<div class="container">
						<div class="inside">
							<div class="nav nav-tab menu">
								<asp:Repeater ID="RepImg" runat="server"><ItemTemplate >
								<a href="#settings" data-toggle="tab"><img class="avatar-xl" src="<%# Eval("profilepic") %>" alt="avatar"></a></ItemTemplate></asp:Repeater>
								<a href="#members" data-toggle="tab" class="active"><i class="material-icons active">chat_bubble_outline</i></a>
								<%--<a href="#discussions" data-toggle="tab" ><i class="material-icons">chat_bubble_outline</i></a>--%>
								
								<a href="#notifications" data-toggle="tab" class="f-grow1"><i class="material-icons"></i></a>
								<button class="btn mode"><i class="material-icons"></i></button>
								
									<a class="btn power" runat="server" id="retBack" onserverclick="retBack_ServerClick" ><i class="material-icons">keyboard_return</i></a>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Navigation -->
				<!-- Start of Sidebar -->
				<div class="sidebar" id="sidebar">
					<div class="container">
						<div class="col-md-12">
							<div class="tab-content">
								<!-- Start of Contacts -->
								<div class="tab-pane fade active show" id="members">
								<div class="search">
										<form  class="form-inline position-relative">
											<input type="search" class="form-control" id="people" placeholder="Search for people..."/>
										</form>
										<%--<button class="btn create" data-toggle="modal" data-target="#exampleModalCenter"><i class="material-icons">person_add</i></button>--%>
									</div>
									<div class="list-group sort">
										<%--<button class="btn filterMembersBtn active show" data-toggle="list" data-filter="all">All</button>|--%>
										<%--<button class="btn filterMembersBtn" data-toggle="list" data-filter="online">Online</button>
										<button class="btn filterMembersBtn" data-toggle="list" data-filter="offline">Offline</button>--%>
									</div>						
									<div class="contacts">
										<h1>Conversations</h1>
										<div class="list-group" id="contacts" role="tablist">

											<asp:Repeater ID="Repeater1" runat="server">
												<ItemTemplate>
													<div class="con">
													<a href="#" class="filterMembers all online contact" data-toggle="list" value="<%#Eval("username") %>">
														<asp:HiddenField runat="server" value="hii"/>
														<asp:HiddenField runat="server" value="hii"/>

														<img class="avatar-md" src='<%# Eval("profilepic") %>' data-toggle="tooltip" data-placement="middle" title="Janette" alt="avatar">
														<%--<div class="status">
															<i class="material-icons online">fiber_manual_record</i>
														</div>--%>
														<div class="data" >
															<h5><%# Eval("name") %></h5>
															<p><%# Eval("city") %></p>
															<h4 style="display:none"><%# Eval("profilepic") %></h4>

														</div>
														<div class="person-add">
															<i class="material-icons">person</i>
														</div>
															
													</a>
													</div>
												</ItemTemplate>

											</asp:Repeater>
											
											
										</div>
									</div>
								</div>
								
								<!-- End of Contacts -->
								<!-- Start of Discussions -->
								<div id="discussions" class="tab-pane fade">
									<div class="search">
										<div class="form-inline position-relative">
											<input type="search" class="form-control" id="conversations" placeholder="Search for conversations..."/>
											<button type="button" class="btn btn-link loop"><i class="material-icons">search</i></button>
										</div>
										<button class="btn create" data-toggle="modal" data-target="#startnewchat"><i class="material-icons">create</i></button>
									</div>
									<div class="list-group sort">
										<button class="btn filterDiscussionsBtn active show" data-toggle="list" data-filter="all">All</button>
										<button class="btn filterDiscussionsBtn" data-toggle="list" data-filter="read">Read</button>
										<button class="btn filterDiscussionsBtn" data-toggle="list" data-filter="unread">Unread</button>
									</div>						
									<div class="discussions">
										<h1>Discussions</h1>
										<div class="list-group" id="chats" role="tablist">
											<asp:Repeater ID="Repeater3" runat="server">
											<ItemTemplate >
												
											<a href="#" class="filterdiscussions all unread single active" id="list-chat-list" data-toggle="list" role="tab">
												<img class="avatar-md" src="dist/img/avatars/avatar-female-1.jpg" data-toggle="tooltip" data-placement="top" title="janette" alt="avatar">
												<%--<div class="status">
													<i class="material-icons online">fiber_manual_record</i>
												</div>--%>
												<div class="new bg-yellow">
													<span><%# Eval("Id") %></span>
												</div>
												<div class="data">
													<h5>janette dalton</h5>
													<span>mon</span>
													<p>a new feature has been updated to your account. check it out...</p>
												</div>
											</a>
											
											</ItemTemplate>
											</asp:Repeater>
										</div>
									</div>
								</div>
								<!-- End of Discussions -->
								<!-- Start of Notifications -->
								<div id="notifications" class="tab-pane fade">
									<div class="search">
										<form  class="form-inline position-relative">
											<input type="search" class="form-control" id="notice" placeholder="Filter notifications..."/>
											<button type="button" class="btn btn-link loop"><i class="material-icons filter-list">filter_list</i></button>
										</form>
									</div>
									<div class="list-group sort">
										<button class="btn filterNotificationsBtn active show" data-toggle="list" data-filter="all">All</button>
										<button class="btn filterNotificationsBtn" data-toggle="list" data-filter="latest">Latest</button>
										<button class="btn filterNotificationsBtn" data-toggle="list" data-filter="oldest">Oldest</button>
									</div>						
									<div class="notifications">
										<h1>Notifications</h1>
										<div class="list-group" id="alerts" role="tablist">
											<a href="#" class="filterNotifications all latest notification" data-toggle="list">
												<img class="avatar-md" src="dist/img/avatars/avatar-female-1.jpg" data-toggle="tooltip" data-placement="top" title="Janette" alt="avatar"/>
												<%--<div class="status">
													<i class="material-icons online">fiber_manual_record</i>
												</div>--%>
												<div class="data">
													<p>Janette has accepted your friend request on Swipe.</p>
													<span>Oct 17, 2018</span>
												</div>
											</a>
											
										</div>
									</div>
								</div>
								<!-- End of Notifications -->
								<!-- Start of Settings -->
								<div class="tab-pane fade" id="settings">			
									<div class="settings">
										<asp:Repeater ID="RepUser" runat="server"><ItemTemplate >
										<div class="profile">
											<img class="avatar-xl" src="<%# Eval("profilepic") %>" alt="avatar">
											<h1><a href="#"><%# Eval("name") %></a></h1>
											<span><%# Eval("city") %> , <%# Eval("country") %></span>
											<div class="stats">
												<div class="item">
													<h2>122</h2>
													<h3>Fellas</h3>
												</div>
												<div class="item">
													<h2>305</h2>
													<h3>Chats</h3>
												</div>
												<div class="item">
													<h2>1538</h2>
													<h3>Posts</h3>
												</div>
											</div>
										</div></ItemTemplate></asp:Repeater>
										

										<div class="categories" id="accordionSettings" style="display:none">
											<h1>Settings</h1>
											<!-- Start of My Account -->
											<div class="category">
												<a href="#" class="title collapsed" id="headingOne" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
													<i class="material-icons md-30 online">person_outline</i>
													<div class="data">
														<h5>My Account</h5>
														<p>Update your profile details</p>
													</div>
													<i class="material-icons">keyboard_arrow_right</i>
												</a>
												<div class="collapse" id="collapseOne" aria-labelledby="headingOne" data-parent="#accordionSettings">
													<div class="content">
														<div class="upload">
															<div class="data">
																<img class="avatar-xl" src="dist/img/avatars/avatar-male-1.jpg" alt="image"/>
																<label>
																	<input type="file"/>
																	<span class="btn button">Upload avatar</span>
																</label>
															</div>
															<p>For best results, use an image at least 256px by 256px in either .jpg or .png format!</p>
														</div>
														<form>
															<div class="parent">
																<div class="field">
																	<label for="firstName">First name <span>*</span></label>
																	<input type="text" class="form-control" id="firstName" placeholder="First name" value="Michael" required="required"/>
																</div>
																<div class="field">
																	<label for="lastName">Last name <span>*</span></label>
																	<input type="text" class="form-control" id="lastName" placeholder="Last name" value="Knudsen" required="required"/>
																</div>
															</div>
															<div class="field">
																<label for="email">Email <span>*</span></label>
																<input type="email" class="form-control" id="email" placeholder="Enter your email address" value="michael@gmail.com" required="required"/>
															</div>
															<div class="field">
																<label for="password">Password</label>
																<input type="password" class="form-control" id="password" placeholder="Enter a new password" value="password" required="required"/>
															</div>
															<div class="field">
																<label for="location">Location</label>
																<input type="text" class="form-control" id="location" placeholder="Enter your location" value="Helena, Montana" required="required"/>
															</div>
															<button class="btn btn-link w-100">Delete Account</button>
															<button type="submit" class="btn button w-100">Apply</button>
														</form>
													</div>
												</div>
											</div>
											<!-- End of My Account -->
											<!-- Start of Chat History -->
											<div class="category">
												<a href="#" class="title collapsed" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
													<i class="material-icons md-30 online">mail_outline</i>
													<div class="data">
														<h5>Chats</h5>
														<p>Check your chat history</p>
													</div>
													<i class="material-icons">keyboard_arrow_right</i>
												</a>
												<div class="collapse" id="collapseTwo" aria-labelledby="headingTwo" data-parent="#accordionSettings">
													<div class="content layer">
														<div class="history">
															<p>When you clear your conversation history, the messages will be deleted from your own device.</p>
															<p>The messages won't be deleted or cleared on the devices of the people you chatted with.</p>
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input" id="same-address"/>
																<label class="custom-control-label" for="same-address">Hide will remove your chat history from the recent list.</label>
															</div>
															<div class="custom-control custom-checkbox">
																<input type="checkbox" class="custom-control-input" id="save-info"/>
																<label class="custom-control-label" for="save-info">Delete will remove your chat history from the device.</label>
															</div>
															<button type="submit" class="btn button w-100">Clear blah-blah</button>
														</div>
													</div>
												</div>
											</div>
											<!-- End of Chat History -->
											<!-- Start of Notifications Settings -->
											<div class="category">
												<a href="#" class="title collapsed" id="headingThree" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
													<i class="material-icons md-30 online">notifications_none</i>
													<div class="data">
														<h5>Notifications</h5>
														<p>Turn notifications on or off</p>
													</div>
													<i class="material-icons">keyboard_arrow_right</i>
												</a>
												<div class="collapse" id="collapseThree" aria-labelledby="headingThree" data-parent="#accordionSettings">
													<div class="content no-layer">
														<div class="set">
															<div class="details">
																<h5>Desktop Notifications</h5>
																<p>You can set up Swipe to receive notifications when you have new messages.</p>
															</div>
															<label class="switch">
																<input type="checkbox" checked="checked"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="set">
															<div class="details">
																<h5>Unread Message Badge</h5>
																<p>If enabled shows a red badge on the Swipe app icon when you have unread messages.</p>
															</div>
															<label class="switch">
																<input type="checkbox" checked="checked"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="set">
															<div class="details">
																<h5>Taskbar Flashing</h5>
																<p>Flashes the Swipe app on mobile in your taskbar when you have new notifications.</p>
															</div>
															<label class="switch">
																<input type="checkbox"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="set">
															<div class="details">
																<h5>Notification Sound</h5>
																<p>Set the app to alert you via notification sound when you have unread messages.</p>
															</div>
															<label class="switch">
																<input type="checkbox" checked="checked"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="set">
															<div class="details">
																<h5>Vibrate</h5>
																<p>Vibrate when receiving new messages (Ensure system vibration is also enabled).</p>
															</div>
															<label class="switch">
																<input type="checkbox"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="set">
															<div class="details">
																<h5>Turn On Lights</h5>
																<p>When someone send you a text message you will receive alert via notification light.</p>
															</div>
															<label class="switch">
																<input type="checkbox"/>
																<span class="slider round"></span>
															</label>
														</div>
													</div>
												</div>
											</div>
											<!-- End of Notifications Settings -->
											<!-- Start of Connections -->
											<div class="category">
												<a href="#" class="title collapsed" id="headingFour" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
													<i class="material-icons md-30 online">sync</i>
													<div class="data">
														<h5>Connections</h5>
														<p>Sync your social accounts</p>
													</div>
													<i class="material-icons">keyboard_arrow_right</i>
												</a>
												<div class="collapse" id="collapseFour" aria-labelledby="headingFour" data-parent="#accordionSettings">
													<div class="content">
														<div class="app">
															<img src="dist/img/integrations/slack.svg" alt="app"/>
															<div class="permissions">
																<h5>Skrill</h5>
																<p>Read, Write, Comment</p>
															</div>
															<label class="switch">
																<input type="checkbox" checked="checked"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="app">
															<img src="dist/img/integrations/dropbox.svg" alt="app"/>
															<div class="permissions">
																<h5>Dropbox</h5>
																<p>Read, Write, Upload</p>
															</div>
															<label class="switch">
																<input type="checkbox" checked="checked"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="app">
															<img src="dist/img/integrations/drive.svg" alt="app"/>
															<div class="permissions">
																<h5>Google Drive</h5>
																<p>No permissions set</p>
															</div>
															<label class="switch">
																<input type="checkbox"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="app">
															<img src="dist/img/integrations/trello.svg" alt="app"/>
															<div class="permissions">
																<h5>Trello</h5>
																<p>No permissions set</p>
															</div>
															<label class="switch">
																<input type="checkbox"/>
																<span class="slider round"></span>
															</label>
														</div>
													</div>
												</div>
											</div>
											<!-- End of Connections -->
											<!-- Start of Appearance Settings -->
											<div class="category">
												<a href="#" class="title collapsed" id="headingFive" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
													<i class="material-icons md-30 online">colorize</i>
													<div class="data">
														<h5>Appearance</h5>
														<p>Customize the look of Swipe</p>
													</div>
													<i class="material-icons">keyboard_arrow_right</i>
												</a>
												<div class="collapse" id="collapseFive" aria-labelledby="headingFive" data-parent="#accordionSettings">
													<div class="content no-layer">
														<div class="set">
															<div class="details">
																<h5>Turn Off Lights</h5>
																<p>The dark mode is applied to core areas of the app that are normally displayed as light.</p>
															</div>
															<label class="switch">
																<input type="checkbox"/>
																<span class="slider round mode"></span>
															</label>
														</div>
													</div>
												</div>
											</div>
											<!-- End of Appearance Settings -->
											<!-- Start of Language -->
											<div class="category">
												<a href="#" class="title collapsed" id="headingSix" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
													<i class="material-icons md-30 online">language</i>
													<div class="data">
														<h5>Language</h5>
														<p>Select preferred language</p>
													</div>
													<i class="material-icons">keyboard_arrow_right</i>
												</a>
												<div class="collapse" id="collapseSix" aria-labelledby="headingSix" data-parent="#accordionSettings">
													<div class="content layer">
														<div class="language">
															<label for="country">Language</label>
															<select class="custom-select" id="country" required="required">
																<option value="">Select an language...</option>
																<option>English, UK</option>
																<option>English, US</option>
															</select>
														</div>
													</div>
												</div>
											</div>
											<!-- End of Language -->
											<!-- Start of Privacy & Safety -->
											<div class="category">
												<a href="#" class="title collapsed" id="headingSeven" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="true" aria-controls="collapseSeven">
													<i class="material-icons md-30 online">lock_outline</i>
													<div class="data">
														<h5>Privacy & Safety</h5>
														<p>Control your privacy settings</p>
													</div>
													<i class="material-icons">keyboard_arrow_right</i>
												</a>
												<div class="collapse" id="collapseSeven" aria-labelledby="headingSeven" data-parent="#accordionSettings">
													<div class="content no-layer">
														<div class="set">
															<div class="details">
																<h5>Keep Me Safe</h5>
																<p>Automatically scan and delete direct messages you receive from everyone that contain explict content.</p>
															</div>
															<label class="switch">
																<input type="checkbox"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="set">
															<div class="details">
																<h5>My Friends Are Nice</h5>
																<p>If enabled scans direct messages from everyone unless they are listed as your friend.</p>
															</div>
															<label class="switch">
																<input type="checkbox" checked="checked"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="set">
															<div class="details">
																<h5>Everyone can add me</h5>
																<p>If enabled anyone in or out your friends of friends list can send you a friend request.</p>
															</div>
															<label class="switch">
																<input type="checkbox" checked="checked"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="set">
															<div class="details">
																<h5>Friends of Friends</h5>
																<p>Only your friends or your mutual friends will be able to send you a friend reuqest.</p>
															</div>
															<label class="switch">
																<input type="checkbox" checked="checked"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="set">
															<div class="details">
																<h5>Data to Improve</h5>
																<p>This settings allows us to use and process information for analytical purposes.</p>
															</div>
															<label class="switch">
																<input type="checkbox"/>
																<span class="slider round"></span>
															</label>
														</div>
														<div class="set">
															<div class="details">
																<h5>Data to Customize</h5>
																<p>This settings allows us to use your information to customize Swipe for you.</p>
															</div>
															<label class="switch">
																<input type="checkbox"/>
																<span class="slider round"></span>
															</label>
														</div>
													</div>
												</div>
											</div>
											<!-- End of Privacy & Safety -->
											<!-- Start of Logout -->
											<div class="category">
												<a href="buyergig.aspx" class="title collapsed">
													<i class="material-icons md-30 online">power_settings_new</i>
													<div class="data">
														<h5>Power Off</h5>
														<p>Log out of your account</p>
													</div>
													<i class="material-icons">keyboard_arrow_right</i>
												</a>
											</div>
											<!-- End of Logout -->
										</div>
									</div>
								</div>
								<!-- End of Settings -->
							</div>
						</div>
					</div>
				</div>
				<!-- End of Sidebar -->
				<!-- Start of Add Friends -->
				<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="requests">
							<div class="title">
								<h1>Add your friends</h1>
								<button type="button" class="btn" data-dismiss="modal" aria-label="Close"><i class="material-icons">close</i></button>
							</div>
							<div class="content">
								<form >
									<div class="form-group">
										<label for="user">Username:</label>
										<input type="text" class="form-control" id="user" placeholder="Add recipient..." required="required"/>
										<div class="user" id="contact">
											<img class="avatar-sm" src="dist/img/avatars/avatar-female-5.jpg" alt="avatar"/>
											<h5>Keith Morris</h5>
											<button class="btn"><i class="material-icons">close</i></button>
										</div>
									</div>
									<div class="form-group">
										<label for="welcome">Message:</label>
										<textarea class="text-control" id="welcome" placeholder="Send your welcome message...">Hi Keith, I'd like to add you as a contact.</textarea>
									</div>
									<button type="submit" class="btn button w-100">Send Friend Request</button>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- End of Add Friends -->
				<!-- Start of Create Chat -->
				<div class="modal fade" id="startnewchat" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="requests">
							<div class="title">
								<h1>Start new chat</h1>
								<button type="button" class="btn" data-dismiss="modal" aria-label="Close"><i class="material-icons">close</i></button>
							</div>
							<div class="content">
								<form >
									<div class="form-group">
										<label for="participant">Recipient:</label>
										<input type="text" class="form-control" id="participant" placeholder="Add recipient..." required="required"/>
										<div class="user" id="recipient">
											<img class="avatar-sm" src="dist/img/avatars/avatar-female-5.jpg" alt="avatar"/>
											<h5>Keith Morris</h5>
											<button class="btn"><i class="material-icons">close</i></button>
										</div>
									</div>
									<div class="form-group">
										<label for="topic">Topic:</label>
										<input type="text" class="form-control" id="topic" placeholder="What's the topic?" required="required"/>
									</div>
									<div class="form-group">
										<label for="message">Message:</label>
										<textarea class="text-control" id="message" placeholder="Send your welcome message...">Hmm, are you friendly?</textarea>
									</div>
									<button type="submit" class="btn button w-100">Start New Chat</button>
								</form>
							</div>	
						</div>
					</div>
				</div>
				<!-- End of Create Chat -->
				<div class="main">
					<div class="tab-content" id="nav-tabContent">
						<!-- Start of Babble -->
						<div class="babble tab-pane fade" id="list-chat" role="tabpanel" aria-labelledby="list-chat-list">
							<!-- Start of Chat -->
							<div class="chat" id="chat1">
								<div class="top">
									<div class="container">
										<div class="col-md-12">
											<div class="inside">
												<a href="#"><img class="avatar-md" src="dist/img/avatars/avatar-female-5.jpg" data-toggle="tooltip" data-placement="top" title="Keith" alt="avatar" id="img1"/></a>
												<%--<div class="status">
													<i class="material-icons online">fiber_manual_record</i>
												</div>--%>
												<div class="data">
													<h5><a id="nme" href="#">Keith Morris</a></h5>
													<%--<span>Active now</span>--%>
												</div>
												<%--<button class="btn connect d-md-block d-none" name="1"><i class="material-icons md-30">phone_in_talk</i></button>
												<button class="btn connect d-md-block d-none" name="1"><i class="material-icons md-36">videocam</i></button>
												<button class="btn d-md-block d-none"><i class="material-icons md-30">info</i></button>
												<div class="dropdown">
													<button class="btn" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="material-icons md-30">more_vert</i></button>
													<div class="dropdown-menu dropdown-menu-right">
														<button class="dropdown-item connect" name="1"><i class="material-icons">phone_in_talk</i>Voice Call</button>
														<button class="dropdown-item connect" name="1"><i class="material-icons">videocam</i>Video Call</button>
														<hr/>
														<button class="dropdown-item"><i class="material-icons">clear</i>Clear History</button>
														<button class="dropdown-item"><i class="material-icons">block</i>Block Contact</button>
														<button class="dropdown-item"><i class="material-icons">delete</i>DeleteDelete Contact</button>
													</div>
												</div>--%>
											</div>
										</div>
									</div>
								</div>

								<div class="content" id="content">
									<div class="container">
										<div class="col-md-12">
											<updatepanel >
											<asp:Repeater ID="Repeater2" runat="server">
												<ItemTemplate >
													
													<%# Eval("senderId").ToString() != Session["login"].ToString() ? "<div class='message'> <img class='avatar-md' src='dist/img/avatars/avatar-female-5.jpg' data-toggle='tooltip' data-placement='top' title='Keith' alt='avatar'><div class='text-main'><div class='text-group'><div class='text' ><p>" + Eval("message") + "</p></div></div><span>" + Eval("msgtime") + "</span></div></div>" : "<div class='message me'><div class='text-main'><div class='text-group me'><div class='text me'><p>"+Eval("message")+"</p></div></div><span>"+ Eval("msgtime") +"</span></div></div>" %>
													
												</ItemTemplate>

											</asp:Repeater>
											</updatepanel>
											
											
										</div>
									</div>
								</div>
																												
								<div class="container">
									<div class="col-md-12">
										<div class="bottom">
											<div class="position-relative w-100">
												<textarea  class="form-control" placeholder="Start typing for reply..." rows="1" id="txt"></textarea> 
												<button class="btn emoticons"><i class="material-icons">insert_emoticon</i></button>
												<%--<asp:Label runat="server" id="send" class="btn send"><i class="material-icons">send</i></asp:Label>	--%>
													<asp:LinkButton ID="Lb1" runat="server" class="btn send" OnClick ="lb_Click"><i class="material-icons">send</i></asp:LinkButton>
												<%--<button type="submit" class="btn send" id="Lb1"><i class="material-icons">send</i></button>--%>
												<asp:HiddenField runat="server" ID="mesg"/>
											</div>
											
											<%--<label>
												<input type="file">
												<span class="btn attach d-sm-block d-none"><i class="material-icons">attach_file</i></span>
											</label> --%>

										</div>
									</div>
								</div>
							</div>
							<!-- End of Chat -->
							<!-- Start of Call -->
							<div class="call" id="call1">
								<div class="content">
									<div class="container">
										<div class="col-md-12">
											<div class="inside">
												<div class="panel">
													<div class="participant">
														<img class="avatar-xxl" src="dist/img/avata	7rs/avatar-female-5.jpg" alt="avatar"/>
														<span>Connecting</span>
													</div>							
													<div class="options">
														<button class="btn option"><i class="material-icons md-30">mic</i></button>
														<button class="btn option"><i class="material-icons md-30">videocam</i></button>
														<button class="btn option call-end"><i class="material-icons md-30">call_end</i></button>
														<button class="btn option"><i class="material-icons md-30">person_add</i></button>
														<button class="btn option"><i class="material-icons md-30">volume_up</i></button>
													</div>
													<button class="btn back" name="1"><i class="material-icons md-24">chat</i></button>
												</div>
											</div>
										</div>
									</div>	
								</div>
							</div>
							<!-- End of Call -->
						</div>
						<!-- End of Babble -->
						<!-- Start of Babble -->
						<div class="babble tab-pane fade active show" id="list-empty" role="tabpanel" aria-labelledby="list-empty-list">
							<!-- Start of Chat -->
							<div class="chat" id="chat2">
								<div class="content empty">
									<div class="container">
										<div class="col-md-12">
											<div class="no-messages"><br/><br/><br/><br/><br/><br/><br/><br/>
												<i class="material-icons md-48">forum</i>
												<p>Seems people are shy to start the chat. Break the ice send the first message.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- End of Chat -->
							<!-- Start of Call -->
							<div class="call" id="call2">
								<div class="content">
									<div class="container">
										<div class="col-md-12">
											<div class="inside">
												<div class="panel">
													<div class="participant">
														<img class="avatar-xxl" src="dist/img/avatars/avatar-female-2.jpg" alt="avatar"/>
														<span>Connecting</span>
													</div>							
													<div class="options">
														<button class="btn option"><i class="material-icons md-30">mic</i></button>
														<button class="btn option"><i class="material-icons md-30">videocam</i></button>
														<button class="btn option call-end"><i class="material-icons md-30">call_end</i></button>
														<button class="btn option"><i class="material-icons md-30">person_add</i></button>
														<button class="btn option"><i class="material-icons md-30">volume_up</i></button>
													</div>
													<button class="btn back" name="2"><i class="material-icons md-24">chat</i></button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- End of Call -->
						</div>
						<!-- End of Babble -->
						<!-- Start of Babble -->
						<div class="babble tab-pane fade" id="list-request" role="tabpanel" aria-labelledby="list-request-list">
							<!-- Start of Chat -->
							<div class="chat" id="chat3">
								<div class="top">
									<div class="container">
										<div class="col-md-12">
											<div class="inside">
												<a href="#"><img class="avatar-md" src="dist/img/avatars/avatar-female-6.jpg" data-toggle="tooltip" data-placement="top" title="Louis" alt="avatar"/></a>
												<div class="status">
													<i class="material-icons offline">fiber_manual_record</i>
												</div>
												<div class="data">
													<h5><a href="#">Louis Martinez</a></h5>
													<span>Inactive</span>
												</div>
												<button class="btn disabled d-md-block d-none" disabled="disabled"><i class="material-icons md-30">phone_in_talk</i></button>
												<button class="btn disabled d-md-block d-none" disabled="disabled"><i class="material-icons md-36">videocam</i></button>
												<button class="btn d-md-block disabled d-none" disabled="disabled"><i class="material-icons md-30">info</i></button>
												<div class="dropdown" style="display:none">
													<button class="btn disabled" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" disabled="disabled"><i class="material-icons md-30">more_vert</i></button>
													<div class="dropdown-menu dropdown-menu-right">
														<button class="dropdown-item"><i class="material-icons">phone_in_talk</i>Voice Call</button>
														<button class="dropdown-item"><i class="material-icons">videocam</i>Video Call</button>
														<hr/>
														<button class="dropdown-item"><i class="material-icons">clear</i>Clear History</button>
														<button class="dropdown-item"><i class="material-icons">block</i>Block Contact</button>
														<button class="dropdown-item"><i class="material-icons">delete</i>Delete Contact</button>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="content empty">
									<div class="container">
										<div class="col-md-12">
											<div class="no-messages request">
												<a href="#"><img class="avatar-xl" src="dist/img/avatars/avatar-female-6.jpg" data-toggle="tooltip" data-placement="top" title="Louis" alt="avatar"/></a>
												<h5>Louis Martinez would like to add you as a contact. <span>Hi Keith, I'd like to add you as a contact.</span></h5>
												<div class="options">
													<button class="btn button"><i class="material-icons">check</i></button>
													<button class="btn button"><i class="material-icons">close</i></button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="container">
									<div class="col-md-12">
										<div class="bottom">
											<div class="position-relative w-100">
												<textarea class="form-control" placeholder="Messaging unavailable" rows="1" disabled="disabled"></textarea>
												<button class="btn emoticons disabled" disabled="disabled"><i class="material-icons">insert_emoticon</i></button>
												<asp:Button runat="server" class="btn send disabled" id="snd"/><i class="material-icons">send</i>
											</div>
											<label>
												<input type="file" disabled="disabled"/>
												<span class="btn attach disabled d-sm-block d-none"><i class="material-icons">attach_file</i></span>
				
				
				
											</label> 
										</div>
									</div>
								</div>
							</div>
							<!-- End of Chat -->
						</div>
						<!-- End of Babble -->
					</div>
				</div>
			</div> <!-- Layout -->
		
		
		<!-- Bootstrap/Swipe core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="dist/js/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script>window.jQuery || document.write('<script src="dist/js/vendor/jquery-slim.min.js"><\/script>')</script>
		<script src="dist/js/vendor/popper.min.js"></script>
		<script src="dist/js/swipe.min.js"></script>
		<script src="dist/js/bootstrap.min.js"></script>

		<script>
			function scrollToBottom(el) { el.scrollTop = el.scrollHeight; }
			scrollToBottom(document.getElementById('content'));
		</script>
		<script>
			$(document).ready(function () {
                content.scrollTo(0, content.scrollHeight);
            });
        </script>
		<script>
			
			function getReferrer()
			{
				window.location.href = document.referrer;
			}
        </script>
    
	</form>
	<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KSZPFBPQ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
</body>
</html>
