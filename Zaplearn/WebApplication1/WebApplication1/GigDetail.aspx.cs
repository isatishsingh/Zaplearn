using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Xml.Linq;
using System.Net.Mail;
using System.Text;


namespace WebApplication1
{
    public partial class BuyerProfile : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        SqlDataReader dr;
        SqlConnection conn; 
        string email;
        string name;
        string user;
        int credit = 0;
        int debit = 0;
        int blocked = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }


            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
            try
            {
                user = Request.QueryString["user"].ToString();
            }
            catch (Exception)
            {

                user = "15";
            }
            
            da = new SqlDataAdapter("select s.* , u.* , se.*,(select count(*) from tblRating r , tblOrder o , tblSeller s where r.orderId=o.orderId and o.sellerId=s.id and o.sellerId='"+ user +"') as nofRatings ,(select sum(r.rating) from tblRating r , tblOrder o , tblSeller s where r.orderId=o.orderId and o.sellerId=s.id and o.sellerId='"+ user +"') as totRatings from tblUser u , tblSeller s ,tblService se where s.username = u.username and se.serviceId = s.serviceId and s.id='"+ user +"';", conn);
            //da = new SqlDataAdapter("select * from tblSeller where username='"+ user +"'",conn);
            ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();

            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {

                email = ds.Tables[0].Rows[0]["email"].ToString();
                name = ds.Tables[0].Rows[0]["name"].ToString();
            }



            da = new SqlDataAdapter("select add_info from tblSeller where id='" + user + "'", conn);
            ds = new DataSet();
            da.Fill(ds);
            add_info.DataSource = ds;
            add_info.DataBind();

            da = new SqlDataAdapter("select path from tblPhotos where sellerId ="+ user +" union select videoPath from tblVideos where sellerId="+ user +"",conn);
            ds = new DataSet();
            da.Fill(ds);
            RepPhotonVideo.DataSource = ds;
            RepPhotonVideo.DataBind();

            da = new SqlDataAdapter("select o.orderId,o.amount,o.endDate,o.status,u.name,se.sername,r.rating,r.review from tblOrder o, tblRating r, tblSeller s, tblUser u ,tblBuyer b, tblService se where o.sellerId = s.id and o.sellerId = '"+ Request.QueryString["user"] +"' and o.buyerId = b.id and b.username = u.username and s.serviceId = se.serviceId and o.orderId = r.orderId;", conn);
            ds = new DataSet();
            da.Fill(ds);
            repShowReviews.DataSource = ds;
            repShowReviews.DataBind();

            cmd = new SqlCommand("select SUM(amount) as credit from tblWallet where userId='" + Session["login"] + "' and type='credit';", conn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                try
                {
                    credit = Convert.ToInt32(dr["credit"]);
                }
                catch (Exception)
                {

                }

            }
            dr.Close();

            cmd = new SqlCommand("select SUM(amount) as debit from tblWallet where userId='" + Session["login"] + "' and type='debit';", conn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                try
                {
                    debit = Convert.ToInt32(dr["debit"]);
                }
                catch (Exception)
                {

                }

            }
            dr.Close();

            cmd = new SqlCommand("select SUM(o.amount) as blocked from tblOrder o , tblPayment p where o.buyerId in(select id from tblBuyer where username='" + Session["login"] + "') and p.status ='blocked' and o.orderId = p.orderId ; ", conn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                try
                {
                    blocked = Convert.ToInt32(dr["blocked"]);
                }
                catch (Exception)
                {

                }

            }
            dr.Close();
            inputamount.Attributes.Add("max", (credit - (debit + blocked)).ToString());
            Page.DataBind();

        }
        protected void lc(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("landing.aspx");
        }

        protected void btnbookfreelancer_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into tblOrder(buyerId,sellerId,status,deadLine,amount) values((select id from tblBuyer where username='"+ Session["login"] +"'),'"+ user +"','pending','"+ inputdate.Text +"','"+ inputamount.Text +"')",conn);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("insert into tblPayment(orderId,status) values((select max(orderId) from tblOrder) , 'blocked')",conn);
            cmd.ExecuteNonQuery();

            string to = email.ToString();
            string from = "zaplearn.web@gmail.com";
            MailMessage message = new MailMessage(from, to);

            string mailbody = "Hiii " + name + "! " + Session["login"] + " is assigning the new work to You For More Contact Check Your Profile.";
            message.Subject = "Let's do some work";
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

            Response.Write("<script>alert('Freelancer Booked . Please check Orders Tab .'); location.href='buyergig.aspx'; </script>");
        }
    }
}