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
    public partial class AdminDashboard : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader dr;
        DataSet ds;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();

            if ((Session["login"]) == null)
            {
                Response.Redirect("Login.aspx");
            }


            da = new SqlDataAdapter("select * from tblAdmin where username='" + Session["login"] + "';", conn);
            //da = new SqlDataAdapter("select * from tblSeller where username='"+ user +"'",conn);
            ds = new DataSet();
            da.Fill(ds);
            sellerprofile.DataSource = ds;
            sellerprofile.DataBind();

            cmd = new SqlCommand("select count(*),(select count(*) from tblSeller),(select count(*) from tblService) from tblUser;", conn);
            
            dr = cmd.ExecuteReader();
            dr.Read();
            totusers.InnerText = dr[0].ToString();
            totgigs.InnerText = dr[1].ToString();
            totservs.InnerText = dr[2].ToString();
            dr.Close();
        }

        protected void lc(object sender, EventArgs e)
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