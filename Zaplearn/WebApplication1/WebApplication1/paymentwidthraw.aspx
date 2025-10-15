<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paymentwidthraw.aspx.cs" Inherits="WebApplication1.paymentwidthraw" %>

<% string page = Session["Page"] as string; %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-KSZPFBPQ');</script>
<!-- End Google Tag Manager -->
    <title>Zaplearn</title>
    <link rel="shortcut icon" href="img/favicon/z-high-resolution-logo-black-transparent.png" sizes="16x16" type="image/png"/>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="css/payements-2.css" rel="stylesheet" />
   </head>
<body>
   
    <div id="parent-payment1">
               <!-- <img src="./imagesforcheckoutpage/pluralsightcheckoutlogo.webp" alt="logo"/>-->
        </div>
        <div id="child-payment7">
            <h1>PAYMENT</h1>
        </div>

        <div id="child-payment6">
            <a href="<%= page %>"><h6> < Back to Account details</h6></a>
            
        </div>

        <div id="parent-payment2"/>
            <div id="child-payment1"/>
            <div id="subchild-payment1">
                <h4>2</h4>
                <h2>Payment</h2>
            </div>
            <div id="child-payment2">
                <div id="subchild-payment2">
                    <h4>Select a payment method</h4>
                    <a href="#">Why do we need this for a free trial?</a>
                </div>
            <div id="child-payment3">
                <div>
                <input type="radio" value="Payment Card" name="cards" onclick="displaycards()"/>
                <label for="">Payment Card</label>
                </div>
                <div id="subchild-payment3">
                    <img src="img/visa-1.svg" alt="visalogo"/>
                    <img src="img/mastercard-1.svg" alt="visalogo"/>
                    <img src="img/discover-1.svg" alt="visalogo"/>
                    <img src="img/american_express-1.svg" alt="visalogo"/>
                </div>
            </div>
            <div id="paymentsuccesfull"></div>
            <div id="child-payment4">
                <form id="form1" runat="server">
                    <div>
                        <label for="">Name on card*</label><br/>
                        <asp:TextBox id="cardname" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please Enter Card Name" ControlToValidate="cardname" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic" ForeColor="Red" ValidationGroup="valid"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="cardname" ErrorMessage="Please enter card name" ValidationExpression="^[a-zA-Z]{1,24} [a-zA-Z]{1,24}$" SetFocusOnError="True" Display="Dynamic" ForeColor="Red" ValidationGroup="valid"></asp:RegularExpressionValidator>    
                        
                        <!--<input type="text" id="cardname"/>-->
                    </div>
                    <div>
                        <label for="">Card number*</label>
                        <br/>
                        <!--<input type="text" id="cardnum"/>-->
                        <asp:TextBox id="cardnum" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter Card Number" ControlToValidate="cardnum" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic" ForeColor="Red" ValidationGroup="valid"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="cardnum" ErrorMessage="Please enter valid card Num." ValidationExpression="^[1-9]\d{11}$" SetFocusOnError="True" Display="Dynamic" ForeColor="Red" ValidationGroup="valid"></asp:RegularExpressionValidator>    
                            
                    </div>
                    <div>
                        <label for="">Expiration*</label>
                        <br/>
                        <select id="cardexp" runat="server">
                            <option value="-Select One-">-Select One-</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="cardexp" ErrorMessage="Please select month" InitialValue="-Select One-" Display="Dynamic" ForeColor="Red"  SetFocusOnError="True" ValidationGroup="valid"></asp:RequiredFieldValidator>

                        <select id="cardyear" runat="server">
                            <option value="-Select One-">-Select One-</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                            <option value="2027">2027</option>
                            <option value="2028">2028</option>
                            <option value="2029">2029</option>
                            <option value="2030">2030</option>
                            <option value="2031">2031</option>
                            <option value="2032">2032</option>
                            <option value="2033">2033</option>
                        </select>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="cardyear" ErrorMessage="Please select year" InitialValue="-Select One-" Display="Dynamic" ForeColor="Red"  SetFocusOnError="True" ValidationGroup="valid"></asp:RequiredFieldValidator>

                    </div>
                    <div>
                        <label for="">CVV*</label>
                        <br/>
                        <!--<input type="text" id="cvv"/>-->
                        <asp:TextBox id="cvv" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter CVV" ControlToValidate="cvv" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic" ForeColor="Red" ValidationGroup="valid"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="cvv" ErrorMessage="Please enter valid CVV" ValidationExpression="^[1-9]\d{2}$" SetFocusOnError="True" Display="Dynamic" ForeColor="Red" ValidationGroup="valid"></asp:RegularExpressionValidator>                            

                    </div>
                    <div>
                        <label for="">Address*</label>
                        <br/>
                        <asp:TextBox id="address" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Address" ControlToValidate="address" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic" ForeColor="Red" ValidationGroup="valid"></asp:RequiredFieldValidator>
                  
                        <!--<input type="text" id="address"/>-->
                    </div>
                    <div>
                        <label for="">Address(cont.)</label>
                        <br/>
                        <asp:TextBox id="address2" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Address2" ControlToValidate="address2" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic" ForeColor="Red" ValidationGroup="valid"></asp:RequiredFieldValidator>
                  
                       <!-- <input type="text" id="address2"/>-->
                    </div>
                    <div id="subchild-payment4">
                        <label for="">Country*</label>
                        <br/>
                        <select id="country" runat="server">
                            <option value="-Select One-">-Select One-"</option>
                            <option value="Afghanistan">Afghanistan</option>
                            <option value="Austria">Austria</option>
                            <option value="Bahamas">Bahamas</option>
                            <option value="Bangladesh">Bangladesh</option>
                            <option value="India">India</option>
                            <option value="Congo">Congo</option>
                            <option value="Egypt">Egypt</option>
                            <option value="Iraq">Iraq</option>
                            <option value="Sri Lanka">Sri Lanka</option>
                        </select>
                        <asp:RequiredFieldValidator ID="countryValidator" runat="server" ControlToValidate="country" ErrorMessage="Please select a country" InitialValue="-Select One-" Display="Dynamic" ForeColor="Red"  SetFocusOnError="True" ValidationGroup="valid"></asp:RequiredFieldValidator>
                        
                    </div>
                    <div>
                        <label for="">City*</label>
                        <br/>
                        <!--<input type="text" id="city"/>-->
                        <asp:TextBox id="city" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Correct City" ControlToValidate="city" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic" ForeColor="Red" ValidationGroup="valid"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="city" ErrorMessage="Please enter city" ValidationExpression="^[a-zA-Z]+$" SetFocusOnError="True" Display="Dynamic" ForeColor="Red" ValidationGroup="valid"></asp:RegularExpressionValidator>    
                        
                    </div>
                    <div>
                        <label for="">Enter here OTP</label>
                        <br/>
                        <asp:TextBox id="otp" runat="server" CausesValidation="True" ValidationGroup="otpvalid"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Valid OTP" ControlToValidate="otp" SetFocusOnError="True" ValidateRequestMode="Enabled" Display="Dynamic" ForeColor="Red" ValidationGroup="otpvalid"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="otp" ErrorMessage="Please enter valid OTP" ValidationExpression="^\d{6}$" SetFocusOnError="True" Display="Dynamic" ForeColor="Red" ValidationGroup="otpvalid"></asp:RegularExpressionValidator>                         
                        
                        <!--<input type="text" id="state"/>-->
                    </div>
                    <div class="mt--25">
                        <asp:LinkButton id="LinkButton" OnClick ="get_otp"  class="btn btn-success" runat="server" ValidationGroup="valid">Send OTP</asp:LinkButton>
                        
                        </div>
                    <div>
                       <!-- <input type="submit" value="Confirm" onclick="displaypaymentcourse()"/> -->
                       <asp:Button ID="Button1" OnClick ="cnfrm_payment"  runat="server" Text="Submit" ValidationGroup="otpvalid" />
                        </div>

                </form>
            </div>
        </div>
        <div>
            <hr/>
        </div>
        <div id="child-payment5">
            <div>
                <input type="radio" value="Payment Card" name="cards" onclick="displaypaypal()"/>
                <img src="img/paypallogo.svg" alt="paypal pluralsight-logo"/>
            </div>
            <div id="paypal">
                <div>
                    <p>The safer, easier way to pay, PayPal uses data encryption and anti-fraud technology to help keep your information secure.</p>
                </div>
                <div>
                    <button><img src="img/paypalcheckout.svg" alt="logo"/>ComingSoon..</button>
                </div>
            </div>
        </div>
    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KSZPFBPQ"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
</body>
</html>

<script src="payments-2.js"></script>