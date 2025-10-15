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

    public partial class GigNotifications : System.Web.UI.Page
    {

        SqlDataAdapter da;
        DataSet ds;
        string username;
        string name;
        SqlConnection conn;
        int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }

            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
            da = new SqlDataAdapter("select o.orderId,o.amount,o.deadLine,o.status,u.name,se.sername,b.username from tblOrder o , tblBuyer b , tblSeller s, tblUser u , tblService se where o.sellerId in (select id from tblSeller where username = '"+ Session["login"] +"') and o.status = 'pending' and o.sellerId = s.id and b.id=o.buyerId and b.username = u.username and s.serviceId = se.serviceId ;", conn);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                count = 1;
            }
            repStatus.DataSource = ds;
            repStatus.DataBind();
            if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
            {
                username = ds.Tables[0].Rows[0]["username"].ToString();
            }

            
            da = new SqlDataAdapter("select o.orderId,o.amount,o.deadLine,o.status,u.name,se.sername,b.username from tblOrder o , tblBuyer b , tblSeller s, tblUser u , tblService se where o.sellerId in (select id from tblSeller where username = '" + Session["login"] + "') and o.status = 'approved' and o.sellerId = s.id and b.id=o.buyerId and b.username = u.username and s.serviceId = se.serviceId ;", conn);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                count = 1;
            }
            Repprog.DataSource = ds;
            Repprog.DataBind();

            da = new SqlDataAdapter("select o.orderId,o.amount,o.deadLine,o.status,u.name,se.sername,b.username from tblOrder o , tblBuyer b , tblSeller s, tblUser u , tblService se where o.sellerId in (select id from tblSeller where username = '" + Session["login"] + "') and o.status = 'in-process' and o.sellerId = s.id and b.id=o.buyerId and b.username = u.username and s.serviceId = se.serviceId ;", conn);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                count = 1;
            }
            Repcomplete.DataSource = ds;
            Repcomplete.DataBind();
            if (count == 0)
            {
                divnot.Visible = true;
            }


            
        }

        protected void lc(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("landing.aspx");
        }


    }


}