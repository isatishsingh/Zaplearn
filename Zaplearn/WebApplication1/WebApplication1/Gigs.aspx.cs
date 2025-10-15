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
    public partial class Gigs : System.Web.UI.Page
    {
        SqlDataAdapter da;
        DataSet ds;
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
            da = new SqlDataAdapter("select s.* , u.* , se.* from tblUser u , tblSeller s ,tblService se where s.username = u.username and se.serviceId = s.serviceId ;", conn);
            ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}