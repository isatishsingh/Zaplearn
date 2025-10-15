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
    public partial class sellerorders : System.Web.UI.Page
    {
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
            da = new SqlDataAdapter("select o.orderId,o.amount,o.deadLine,o.status,u.name,se.sername from tblOrder o , tblBuyer b,tblSeller s, tblUser u , tblService se where o.sellerId in (select id from tblSeller where username = '"+ Session["login"] +"') and o.sellerId = s.id and u.username=b.username and o.buyerId = b.id and s.serviceId = se.serviceId ;", conn);
            da.Fill(ds);
            repOrders.DataSource = ds;
            repOrders.DataBind();
        }
        protected void lc(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("landing.aspx");
        }
    }
}