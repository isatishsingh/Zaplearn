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
    public partial class buyerorders : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
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
            ds = new DataSet();
            da = new SqlDataAdapter("select o.amount,o.deadLine,o.status,u.name,se.sername from tblOrder o , tblSeller s, tblUser u , tblService se where o.buyerId in (select id from tblBuyer where username = '"+ Session["login"].ToString() +"') and o.sellerId = s.id and s.username = u.username and s.serviceId = se.serviceId ;", conn);
            da.Fill(ds);
            repOrders.DataSource = ds;
            repOrders.DataBind();

            ds = new DataSet();
            da = new SqlDataAdapter("select o.orderId,o.amount,o.endDate,o.status,u.name,se.sername,r.rating,r.review from tblOrder o ,tblRating r, tblSeller s, tblUser u , tblService se where o.buyerId in (select id from tblBuyer where username = '"+ Session["login"] +"') and o.sellerId = s.id and s.username = u.username and s.serviceId = se.serviceId and o.orderId=r.orderId;", conn);
            da.Fill(ds);
            repRating.DataSource = ds;
            repRating.DataBind();

            ds = new DataSet();
            da = new SqlDataAdapter("select o.orderId,u.name,o.status,o.endDate,se.sername from tblOrder o ,tblSeller s, tblBuyer b , tblUser u  , tblService se where orderId not in(select orderId from tblRating) and buyerId in(select id from tblBuyer where username='"+ Session["login"] +"') and o.sellerId = s.id and s.username=u.username and o.buyerId=b.id and s.serviceId=se.serviceId and o.status='complete' ;", conn);
            da.Fill(ds);
            RepGiveReview.DataSource = ds;
            RepGiveReview.DataBind();
        }

        protected void lc(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("landing.aspx");
            
        }

        protected void sendReview_ServerClick(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into tblRating(orderId,rating,review) values("+ hfid.Value +","+ hfstars.Value +",'"+ messageText.Value +"')",conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Rating submitted..'); location.href='buyerorders.aspx'; </script>");
        }
    }
}