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
    public partial class buyergig : System.Web.UI.Page
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
            da = new SqlDataAdapter("select s.* , u.* , se.* from tblUser u , tblSeller s ,tblService se where s.username = u.username and se.serviceId = s.serviceId and s.username != '"+ Session["login"] +"' and s.status='active';", conn);
            ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataSource = ds;
            Repeater1.DataBind();

            da = new SqlDataAdapter("select s.* , u.* , se.* from tblUser u , tblSeller s ,tblService se where s.username = u.username and se.serviceId = s.serviceId and s.username = '" + Session["login"] + "' and s.status='active';", conn);
            ds = new DataSet();
            da.Fill(ds);
            repYourGig.DataSource = ds;
            repYourGig.DataBind();
        }

        protected void lc(object sender , EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("landing.aspx");
        }

        protected void btnFeedback_ServerClick(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into tblFeedback(name,email,message) values('" + txtName.Value + "','" + txtEmail.Value + "','" + txtMsg.Value + "')", conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Feedback Sent ! ');  </script>");
        }

    }
}