using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication1
{
    public partial class yourGig : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        SqlConnection conn;
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }


            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
            user = Request.QueryString["user"].ToString();
            da = new SqlDataAdapter("select s.* , u.* , se.*,(select count(*) from tblRating r , tblOrder o , tblSeller s where r.orderId=o.orderId and o.sellerId=s.id and o.sellerId='" + user + "') as nofRatings ,(select sum(r.rating) from tblRating r , tblOrder o , tblSeller s where r.orderId=o.orderId and o.sellerId=s.id and o.sellerId='" + user + "') as totRatings from tblUser u , tblSeller s ,tblService se where s.username = u.username and se.serviceId = s.serviceId and s.id='" + user + "';", conn);
            //da = new SqlDataAdapter("select * from tblSeller where username='"+ user +"'",conn);
            ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();

            da = new SqlDataAdapter("select add_info from tblSeller where id='" + user + "'", conn);
            ds = new DataSet();
            da.Fill(ds);
            add_info.DataSource = ds;
            add_info.DataBind();

            da = new SqlDataAdapter("select path from tblPhotos where sellerId =" + user + " union select videoPath from tblVideos where sellerId=" + user + "", conn);
            ds = new DataSet();
            da.Fill(ds);
            RepPhotonVideo.DataSource = ds;
            RepPhotonVideo.DataBind();

            da = new SqlDataAdapter("select o.orderId,o.amount,o.endDate,o.status,u.name,se.sername,r.rating,r.review from tblOrder o, tblRating r, tblSeller s, tblUser u ,tblBuyer b, tblService se where o.sellerId = s.id and o.sellerId = '" + Request.QueryString["user"] + "' and o.buyerId = b.id and b.username = u.username and s.serviceId = se.serviceId and o.orderId = r.orderId;", conn);
            ds = new DataSet();
            da.Fill(ds);
            repShowReviews.DataSource = ds;
            repShowReviews.DataBind();

            
        }

        protected void lc(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("landing.aspx");
        }

        

    }
}