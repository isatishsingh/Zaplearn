using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;
using System.Text;

namespace WebApplication1
{
    public partial class paymentwidthraw : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        string amt;
        string userName;
        static int randomNumber;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }

            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
        }

        protected void cnfrm_payment(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(otp.Text))
            {
                if (Convert.ToInt32(otp.Text) == randomNumber)
                {
                    if (Session["Data"] != null)
                    {
                        randomNumber = 0;
                        amt = Session["Data"].ToString();
                        // Use the data as needed
                       // cmd = new SqlCommand("insert into tblWallet(userId,amount,type,detail) values('" + Session["login"] + "','" + amt + "','debit','withdraw')", conn);

                      cmd = new SqlCommand("insert into tblWallet(userId,amount,type,detail) values('" + Session["login"].ToString() + "','" + amt + "','debit','withdraw')", conn);
                        cmd.ExecuteNonQuery();
                        Response.Redirect("buyerprof.aspx");
                    }


                }
                else
                {
                    Response.Write("<script>alert('Please Enter Valid OTP');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please Enter OTP');</script>");
            }


        }

        protected void get_otp(object sender, EventArgs e)
        {
            if (cardnum.Text != null && cvv.Text != null)
            {
                if (Session["login"] != null)
                {
                    userName = Session["login"].ToString();
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "exampleModalCenter();", true);
                cmd = new SqlCommand("select email,name from tblUser where username='" + userName + "' ", conn);
                dr = cmd.ExecuteReader();
                dr.Read();
                string to = dr[0].ToString();
                Random random = new Random();
                randomNumber = random.Next(100000, 999999);

                string from = "zaplearn.web@gmail.com";
                MailMessage message = new MailMessage(from, to);

                string mailbody = "Hiii " + dr[1].ToString() + " ! Your OTP for Payment is : " + randomNumber;
                message.Subject = "Don't share your credential to anyone";
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
            }
            else
            {
                Response.Write("<script>alert('Please Enter your username..');</script>");
            }

        }
    }
}