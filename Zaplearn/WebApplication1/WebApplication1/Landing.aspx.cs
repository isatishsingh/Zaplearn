using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Configuration;

namespace WebApplication1
{
    
    public partial class Landing : System.Web.UI.Page
    {


        SqlConnection conn;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
            da = new SqlDataAdapter("select TOP 3 s.*,u.* from tblSeller s , tblUser u where s.username=u.username", conn);
            ds = new DataSet() ;
            da.Fill(ds);
            repEarnings.DataSource = ds;
            repEarnings.DataBind();


        }


    }
}