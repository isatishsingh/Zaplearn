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
using System.IO;

namespace WebApplication1
{
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
            //cmd = new Sqlcommand("insert into tblbuyer(dos,username) values('" + datetime.today.tostring("d:mm:yyyy").tostring() + "','karan')", conn);
            //response.write("<script>alert('sucessfully registered')</script>");
            //DateTime now = DateTime .Now ;
            //cmd = new SqlCommand("insert into tblbuyer(DOS,username) values('" + DateTime.Today + "','karan')", conn);
            //txtDOB.Text = DateTime.Now.ToString("yy - MM - d").ToString();
            
        }


        protected void btnreg_Click(object sender, EventArgs e)
        {
            string path;
            string fullpath;
            string dbfullpath;
            if (profilePhoto.FileName != "")
            {   
                path = Server.MapPath("profileimg");
                fullpath = path + "\\" + profilePhoto.FileName;
                profilePhoto.SaveAs(fullpath);
                dbfullpath = "\\profileimg\\" + profilePhoto.FileName;
            }
            else
            {
                dbfullpath = "\\profileimg\\2.svg";
            }


            cmd = new SqlCommand("insert into tblUser values('" + txtusrname.Text + "', '" + txtpass.Text + "','" + txtname.Text + "', " + txtcno.Text + ",'" + txtemail.Text + "','" + dbfullpath + "','" + txtDOB.Text + "','" + txtcon.Text + "','" + txtcity.Text + "')", conn);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("insert into tblbuyer(DOS,username) values('" + DateTime.Now.ToString("yyyy - MM - d").ToString() + "','"+ txtusrname.Text +"')", conn);
            cmd.ExecuteNonQuery();
            string alert = "sucessfully registered";
            Response.Write("<script>alert("+ alert +");</script>");

            Session["login"] = txtusrname.Text;

            string to = txtemail.Text;
            string from = "zaplearn.web@gmail.com";
            MailMessage message = new MailMessage(from, to);

            string mailbody = "Hiii " + txtname.Text + " ! Thanks for joining with Zaplearn.";
            message.Subject = "Registration Successfull!";
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

            Response.Write("<script>alert('Registration Sucessful'); location.href='buyergig.aspx'; </script>");

        }
    }
}