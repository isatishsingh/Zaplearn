<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs"
Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta charset="utf-8" />
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
    <title>Login</title>
    <meta name="description" content="#" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!-- Bootstrap core CSS -->
    <link
      href="dist/css/lib/bootstrap.min.css"
      type="text/css"
      rel="stylesheet"
    />
    <!-- Swipe core CSS -->
    <link href="dist/css/swipe.min.css" type="text/css" rel="stylesheet" />
    <!-- Favicon -->
    <link
      rel="shortcut icon"
      href="img/favicon/z-high-resolution-logo-black-transparent.png"
      sizes="16x16"
      type="image/png"
    />
    <style>
      .anchor {
        background: none !important;
        border: none;
        padding: 0 !important;
        /*optional*/

        /*input has OS specific font-family*/
        color: midnightblue;
        text-decoration: none;
        cursor: pointer;
      }
    </style>
  </head>
  <body class="start">
    <form id="form1" class="login_form" runat="server">
      <main>
        <div class="layout">
          <!-- Start of Sign In -->
          <div class="main order-md-1">
            <div class="start">
              <div class="container">
                <div class="col-md-12">
                  <div class="content">
                    <h1>Sign in to Zapl-Earn</h1>
                    <div class="third-party">
                      <button class="btn item bg-blue">
                        <i class="material-icons">pages</i>
                      </button>
                      <button class="btn item bg-teal">
                        <i class="material-icons">party_mode</i>
                      </button>
                      <button class="btn item bg-purple">
                        <i class="material-icons">whatshot</i>
                      </button>
                    </div>
                    <%--
                    <p>or use your email account:</p>
                    --%>

                    <div class="form-group">
                      <asp:Textbox
                        runat="server"
                        type="text"
                        id="Email"
                        class="form-control"
                        placeholder="Username"
                        style="color: #536976 !important"
                        required
                      ></asp:Textbox>
                      <button class="btn icon">
                        <i class="material-icons">mail_outline</i>
                      </button>
                    </div>
                    <div class="form-group">
                      <asp:textbox
                        runat="server"
                        type="password"
                        id="Password"
                        class="form-control"
                        placeholder="Password"
                        style="color: #536976 !important"
                      ></asp:textbox>
                      <button class="btn icon">
                        <i class="material-icons">lock_outline</i>
                      </button>
                    </div>
                    <asp:button
                      runat="server"
                      style="
                        background: linear-gradient(
                          -135deg,
                          #444929 0%,
                          #765367 100%
                        );
                      "
                      id="submit"
                      type="submit"
                      class="btn button"
                      Text="Sign In"
                      OnClick="submit_Click"
                    ></asp:button>

                    <asp:button
                      runat="server"
                      id="Button1"
                      type="submit"
                      class="anchor mt-2"
                      OnClick="Seller_Click"
                      Text="Login as seller"
                    ></asp:button
                    ><br />
                    <asp:Button
                      runat="server"
                      id="btnForgotPass"
                      class="anchor mt-2"
                      OnClick="btnforgotpass_Click"
                      style="color: red"
                      Text="Forgot Password?"
                    ></asp:Button
                    ><br />
                    <%--<button
                      type="button"
                      class="bsbutton"
                      style="margin-left: 0; margin-top: 0"
                      data-toggle="modal"
                      data-target="#withdrawModal"
                    >
                      <span>Withdraw</span></button
                    >--%>

                    <!-- Modal -->

                    <div
                      class="modal fade"
                      id="forgotpassModal"
                      tabindex="-1"
                      role="dialog"
                      aria-labelledby="exampleModalLabel"
                      aria-hidden="true"
                    >
                      <div class="modal-dialog" role="document">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5
                              class="modal-title"
                              id="exampleModalLabel2"
                              style="color: black"
                            >
                              Forgot Password
                            </h5>
                            <button
                              type="button"
                              class="close"
                              data-dismiss="modal"
                              aria-label="Close"
                            >
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <div class="form-group">
                              <asp:TextBox
                                runat="server"
                                min="0"
                                type="number"
                                class="form-control"
                                id="txtOtp"
                                placeholder="Enter OTP"
                              />
                              <small
                                class="form-text text-muted"
                                style="color: black !important"
                                >OTP sent on your registered email</small
                              >
                              <asp:TextBox
                                runat="server"
                                type="text"
                                class="form-control mb-1"
                                id="txtP1"
                                placeholder="Enter Password"
                              />
                              <asp:TextBox
                                runat="server"
                                type="text"
                                class="form-control"
                                id="txtP2"
                                placeholder="Confirm Password"
                              />
                              <asp:Label
                                runat="server"
                                ID="lblError"
                                style="color: red"
                              ></asp:Label>
                            </div>
                          </div>

                          <div class="modal-footer">
                            <button
                              style="background-color: dimgrey"
                              type="button"
                              class="btn btn-secondary"
                              data-dismiss="modal"
                            >
                              Close
                            </button>
                            <asp:Button
                              style="background-color: dodgerblue"
                              runat="server"
                              OnClick="cgPass_Click"
                              type="button"
                              ID="btnwithdraw"
                              class="btn btn-primary"
                              text="Proceed"
                            />
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="callout">
                      <span
                        >Don't have account?
                        <a href="signup.aspx">Create Account</a></span
                      >
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- End of Sign In -->
          <!-- Start of Sidebar -->
          <div class="aside order-md-2 aside1">
            <div class="container">
              <div class="col-md-12">
                <div class="preference">
                  <h2>Hello, Friend!</h2>
                  <p>
                    Enter your personal details and start your journey with
                    Zapl-Earn today.
                  </p>
                  <a href="signup.aspx" class="btn button">Sign Up</a>
                  <a href="landing.aspx" class="btn" style="color: white"
                    >Return Back</a
                  >
                </div>
              </div>
            </div>
          </div>
          <!-- End of Sidebar -->
        </div>
        <!-- Layout -->
      </main>
      <!-- Bootstrap core JavaScript
		================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script
        src="dist/js/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"
      ></script>
      <script src="dist/js/vendor/popper.min.js"></script>
      <script src="dist/js/bootstrap.min.js"></script>
      <script>
        function exampleModalCenter() {
          $("#forgotpassModal").modal("show");
        }
      </script>
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
