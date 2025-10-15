using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Text;
using System.Xml.Linq;

namespace WebApplication1
{   
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlConnection conn2;
        SqlCommand cmd;
        SqlCommand cmd2;
        SqlDataReader dr;
        SqlDataReader dr2;
        static int randomNumber;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
            conn2 = new SqlConnection(strcon);
            conn2.Open();
            
        }


        protected void submit_Click(object sender, EventArgs e)
        {
            Session["email"] = Email.Text;
            cmd = new SqlCommand("select * from tblAdmin",conn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if ((dr["username"]).ToString() == Email.Text)
                {
                    if ((dr["password"]).ToString() == Password.Text)
                    {
                        Session["login"] = dr["username"];

                        string to = dr["email"].ToString();
                        string from = "zaplearn.web@gmail.com";
                        MailMessage message = new MailMessage(from, to);

                        string mailbody = "Attention " + dr["name"] + " ! We noticed a new login if not you CHANGE THE PASSWORD IMMEDIATELY";
                        message.Subject = "Login Successfull!";
                        message.Body = mailbody;
                        message.BodyEncoding = Encoding.UTF8;
                        message.IsBodyHtml = true;
                        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                        System.Net.NetworkCredential basicCredential1 = new
                        System.Net.NetworkCredential("zaplearn.web@gmail.com", "tymuhreyhpqnqamx");
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = basicCredential1;
                        client.Send(message);
                        Response.Write("<script>alert('Login Successful " + dr["username"] +"'); location.href='AdminDashboard.aspx'; </script>");

                    }
                    

                }
            }
            dr.Close();
            cmd = new SqlCommand("select * from tblUser", conn);
            dr = cmd.ExecuteReader();
            int flag = 0;
            while (dr.Read())
            {
                if ((dr["username"]).ToString() == Email.Text)
                {
                    if ((dr["password"]).ToString() == Password.Text)
                    {
                        Session["login"] = dr["username"];

                        string to = dr["email"].ToString();
                        string from = "zaplearn.web@gmail.com";
                        MailMessage message = new MailMessage(from, to);

                        string mailbody = "Attention " + dr["name"] + " ! We noticed a new login if not you CHANGE THE PASSWORD IMMEDIATELY";
                        message.Subject = "NEW LOGIN DETECTED!";
                        message.Body = mailbody;
                        message.BodyEncoding = Encoding.UTF8;
                        message.IsBodyHtml = true;
                        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                        System.Net.NetworkCredential basicCredential1 = new
                        System.Net.NetworkCredential("zaplearn.web@gmail.com", "tymuhreyhpqnqamx");
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = basicCredential1;
                        client.Send(message);
                        Response.Write("<script>alert('Login Sucessful'); location.href='buyergig.aspx'; </script>");  
                       
                    }
                    else
                    {
                        flag = 1;
                        Response.Write("<script>alert('Incorrect Password');</script>");
                    }
                    
                }
            }
            if (flag == 0)
            {
                Response.Write("<script>alert('User Not Found . Please Sign up..');</script>");
            }
            dr.Close();

        }

        protected void Seller_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from tblUser", conn);
            dr = cmd.ExecuteReader();
            int flag = 0;
            while (dr.Read())
            {
                if ((dr["username"]).ToString() == Email.Text)
                {
                    if ((dr["password"]).ToString() == Password.Text)
                    {
                        Session["login"] = dr["username"];
                        cmd2 = new SqlCommand("select * from tblSeller", conn2);
                        dr2 = cmd2.ExecuteReader();
                        while (dr2.Read())
                        {
                            if ((dr2["username"]).ToString() == Session["login"].ToString())
                            {

                                Response.Write("<script>alert('Login Sucessful'); location.href='SellerDashboard.aspx'; </script>");
                            }

                        }

                        dr2.Close();


                        Response.Write("<script>alert('Please make your gig first'); location.href='gigreg.aspx'; </script>");

                    }
                    else
                    {
                        flag = 1;
                        Response.Write("<script>alert('Incorrect Password');</script>");
                    }
                }
            }

            if (flag == 0)
            {
                Response.Write("<script>alert('User Not Found . Please Sign up..');</script>");
            }
            dr.Close();
        }

        protected void btnforgotpass_Click(object sender, EventArgs e)
        {
            if (Email.Text != null)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "exampleModalCenter();", true);
                cmd = new SqlCommand("select email,name from tblUser where username='"+ Email.Text +"' ",conn);
                dr = cmd.ExecuteReader();
                dr.Read();
                string to = dr[0].ToString();
                Random random = new Random();
                randomNumber = random.Next(100000, 999999);
                
                string from = "zaplearn.web@gmail.com";
                MailMessage message = new MailMessage(from, to);

                string mailbody = "Hiii " + dr[1].ToString() + " ! Your OTP for Zaplearn : " + randomNumber;
                message.Subject = "Let's Change Your Passcode";
                dr.Close();
                message.Body = mailbody;
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp
                System.Net.NetworkCredential basicCredential1 = new
                System.Net.NetworkCredential("zaplearn.web@gmail.com", "tymuhreyhpqnqamx");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = basicCredential1;
                client.Send(message);
                txtOtp.Text = "";
                txtP1.Text = "";
                txtP2.Text = "";
                lblError.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Please Enter your username..');</script>");
            }
        }

        protected void cgPass_Click(object sender, EventArgs e)
        {
            
            if (Convert.ToInt32(txtOtp.Text)==randomNumber)
            {
                if (txtP1.Text==txtP2.Text)
                {
                    cmd = new SqlCommand("Update tblUser set password='"+ txtP1.Text +"' where username='"+ Email.Text +"'",conn);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Password changed sucessfully..');</script>");
                }
                else
                {
                    lblError.Text = "Passwords does not match..";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "exampleModalCenter();", true);
                }
            }
            else
            {

                lblError.Text = "Invalid Otp..";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "exampleModalCenter();", true);
            }
        }
    }
}