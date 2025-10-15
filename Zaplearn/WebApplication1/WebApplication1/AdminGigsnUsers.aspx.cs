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
    public partial class AdminGigsnUsers : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        SqlConnection conn;
        public string blk = "blkuser"; 
        public string unblk = "unblkuser";
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
            if (!IsPostBack) 
            {
                da = new SqlDataAdapter("select * from tblUser",conn);
                ds = new DataSet();
                da.Fill(ds);
                repUsers.DataSource = ds;
                repUsers.DataBind();

                da = new SqlDataAdapter("select * from tblFeedback", conn);
                ds = new DataSet();
                da.Fill(ds);
                repFeedback.DataSource = ds;
                repFeedback.DataBind();

                da = new SqlDataAdapter("select s.*,se.* from tblSeller s , tblService se where s.serviceId=se.serviceId", conn);
                ds = new DataSet();
                da.Fill(ds);
                repGigs.DataSource = ds;
                repGigs.DataBind();
            }
        }
        protected void lc(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("landing.aspx");

        }
    }

}