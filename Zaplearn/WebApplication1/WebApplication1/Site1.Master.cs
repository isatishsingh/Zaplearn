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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
        }

       

        protected void btnFeedback_ServerClick(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into tblFeedback(name,email,message) values('"+ txtName.Value  +"','"+ txtEmail.Value +"','"+ txtMsg.Value +"')",conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Feedback Sent ! ');  </script>");
        }
    }
}