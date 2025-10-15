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

namespace WebApplication1
{
    public partial class app_decline : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataReader dr;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();

            if (Request.QueryString["seller"] != null)
            {
                Session["seller"] = Request.QueryString["seller"];
                Response.Redirect("Managegig.aspx");
            }

            if (Request.QueryString["sessLoc"] != null)
            {
                Session["location"] = Request.QueryString["sessLoc"];
                Response.Redirect("chat.aspx");
            }
            if (Request.QueryString["act"] == "\"blkGig\"")
            {
                string selid = Request.QueryString["selid"];
                cmd = new SqlCommand("update tblSeller set status='inactive' where id="+ selid +"",conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Gig Blocked'); location.href='AdminGigsnUsers.aspx';</script>");
            }

            if (Request.QueryString["act"] == "\"unblkGig\"")
            {
                string selid = Request.QueryString["selid"];
                cmd = new SqlCommand("update tblSeller set status='active' where id="+ selid +"",conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Gig Unblocked'); location.href='AdminGigsnUsers.aspx';</script>");
            }
            
            if (Request.QueryString["act"] == "\"deleteGig\"")
            {
                string selid = Request.QueryString["selid"];
                cmd = new SqlCommand("delete from tblSeller where id="+ selid +"",conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Gig Deleted'); location.href='AdminGigsnUsers.aspx';</script>");
            }

            if (Request.QueryString["act"] == "\"userDeleteGig\"")
            {
                string selid = Request.QueryString["selid"];
                cmd = new SqlCommand("delete from tblSeller where id="+ selid +"",conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Gig Deleted'); location.href='SellerDashboard.aspx';</script>");
            }

            if (Request.QueryString["act"] == "\"deletePhoto\"")
            {
                string selid = Request.QueryString["selid"];
                cmd = new SqlCommand("delete from tblPhotos where id="+ selid +"",conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Photo Deleted'); location.href='SellerDashboard.aspx';</script>");
            }

            if (Request.QueryString["act"] == "\"deleteVideo\"")
            {
                string selid = Request.QueryString["selid"];
                cmd = new SqlCommand("delete from tblVideos where id="+ selid +"",conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Video Deleted'); location.href='SellerDashboard.aspx';</script>");
            }

            if (Request.QueryString["mseller"] != null)
            {
                Session["seller"] = Request.QueryString["mseller"];
                Response.Redirect("AddMedia.aspx");
            }

            

            string action = Request.QueryString["action"];
            int id = Convert.ToInt32(Request.QueryString["odid"]);
            string username = Request.QueryString["usnm"];
            if (action=="approve")
            {
                cmd = new SqlCommand("update tblOrder set status='approved' where orderId="+ id +";",conn);
                cmd.ExecuteNonQuery();

                //Mail Message
                cmd = new SqlCommand("select * from tblUser where username='" + username + "'", conn);
                dr = cmd.ExecuteReader();

                dr.Read();


                string to = dr["email"].ToString();
                string from = "zaplearn.web@gmail.com";
                MailMessage message = new MailMessage(from, to);

                string mailbody = "Hiii " + "! " + dr["name"] + " " + Session["login"] + " is accepted your work request";
                message.Subject = "Request Accepted";
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
                Response.Write("<script>alert('Order Accepted'); location.href='GigNotifications.aspx'; </script>");
            }

            if (action == "decline")
            {
                cmd = new SqlCommand("update tblOrder set status='cancelled' where orderId=" + id + ";", conn);
                cmd.ExecuteNonQuery();

                //Mail Message
                cmd = new SqlCommand("select * from tblUser where username='" + username + "'", conn);
                dr = cmd.ExecuteReader();

                dr.Read();


                string to = dr["email"].ToString();
                string from = "zaplearn.web@gmail.com";
                MailMessage message = new MailMessage(from, to);

                string mailbody = "Hiii " + "! " + dr["name"] + " " + Session["login"] + " is rejected your work request";
                message.Subject = "Request Rejected";
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
                Response.Write("<script>alert('Order Cancelled'); location.href='GigNotifications.aspx'; </script>");
            }

            if (action == "inprog")
            {
                cmd = new SqlCommand("update tblOrder set status='in-process' , startDate='"+ DateTime.Now.ToString("yyyy - MM  - d").ToString() +"' where orderId=" + id + ";", conn);
                cmd.ExecuteNonQuery();

                // Mail Message
                cmd = new SqlCommand("select * from tblUser where username='" + username + "'", conn);
                dr = cmd.ExecuteReader();

                dr.Read();


                string to = dr["email"].ToString();
                string from = "zaplearn.web@gmail.com";
                MailMessage message = new MailMessage(from, to);

                string mailbody = "Hiii " + "! " + dr["name"] + " " + Session["login"] + " is started to work on your dream project";
                message.Subject = "Work Started";
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
                Response.Write("<script>alert('Work Started'); location.href='GigNotifications.aspx'; </script>");
            }

            if (action == "complete")
            {
                cmd = new SqlCommand("update tblOrder set status='complete' , endDate='" + DateTime.Now.ToString("yyyy - MM  - d").ToString() + "' where orderId=" + id + ";", conn);
                cmd.ExecuteNonQuery();


                cmd = new SqlCommand("update tblPayment set status = 'complete' where orderId=" + id + ";", conn);
                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("select o.amount,u.username,u.name from tblUser u, tblOrder o, tblBuyer b where o.orderId="+ id +" and o.buyerId = b.id and b.username = u.username ;", conn);
                dr = cmd.ExecuteReader();
                dr.Read();
                string buyerid = dr["username"].ToString();
                string buyername = dr["name"].ToString();
                int amount = Convert.ToInt32(dr["amount"]);
                dr.Close();

                cmd = new SqlCommand("select o.orderId,u.username,u.name from tblUser u, tblOrder o, tblSeller s where o.orderId="+ id +" and o.SellerId = s.id and s.username = u.username ;", conn);
                dr = cmd.ExecuteReader();
                dr.Read();
                string sellerid = dr["username"].ToString();
                string sellername = dr["name"].ToString();
                dr.Close();

                cmd = new SqlCommand("insert into tblWallet(userId,amount,type,detail) values('" + buyerid + "',"+ amount +",'debit','paid to "+ sellername +"')", conn);
                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("insert into tblWallet(userId,amount,type,detail) values('" + sellerid + "'," + amount + ",'credit','recieved from " + buyername + "')", conn);
                cmd.ExecuteNonQuery();

                // Mail Message
                cmd = new SqlCommand("select * from tblUser where username='" + username + "'", conn);
                dr = cmd.ExecuteReader();

                dr.Read();

                string to = dr["email"].ToString();
                string from = "zaplearn.web@gmail.com";
                MailMessage message = new MailMessage(from, to);

                string mailbody = "Hiii " + "! " + dr["name"] + " " + Session["login"] + " is completed your Work ";
                message.Subject = "Work Completed";
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

                Response.Write("<script>alert('Work Completed'); location.href='GigNotifications.aspx'; </script>");
            }

        }
    }
}