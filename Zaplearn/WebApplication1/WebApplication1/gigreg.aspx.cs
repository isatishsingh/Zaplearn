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
    public partial class gigreg : System.Web.UI.Page
    {
        SqlCommand cmd;

        SqlDataReader dr;
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
            if (! IsPostBack)
            {
                cmd = new SqlCommand("select * from tblService", conn);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    inputservice.Items.Add(dr["sername"].ToString());
                }
                dr.Close(); 
            }
            

        }

        protected void gigsubmit_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select serviceId from tblService where sername='" + inputservice.SelectedItem.ToString() + "'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            string ser = (dr["serviceId"]).ToString();
            dr.Close();
            string path;
            string fullpath;
            string dbfullpath;
            if (gigPhoto.FileName != "")
            {
                path = Server.MapPath("gigprofile");
                fullpath = path + "\\" + gigPhoto.FileName;
                gigPhoto.SaveAs(fullpath);
                dbfullpath = "\\gigprofile\\" + gigPhoto.FileName;
            }
            else
            {
                dbfullpath = "\\gigprofile\\2.png";
            }

            SqlCommand cmd2 = new SqlCommand("INSERT INTO tblSeller(gigpic, serviceId, experience, title, description, DOS, username, startprice, fblink, iglink, add_info, status) " +
                                  "VALUES (@gigpic, @serviceId, @experience, @title, @description, @DOS, @username, @startprice, @fblink, @iglink, @add_info, @status)", conn);

            // Add parameters
            cmd2.Parameters.AddWithValue("@gigpic", dbfullpath);
            cmd2.Parameters.AddWithValue("@serviceId", ser);
            cmd2.Parameters.AddWithValue("@experience", gigexp.Text);
            cmd2.Parameters.AddWithValue("@title", gigtitle.Text);
            cmd2.Parameters.AddWithValue("@description", gigdes.Text);
            cmd2.Parameters.AddWithValue("@DOS", DateTime.Now.ToString("yyyy-MM-d"));
            cmd2.Parameters.AddWithValue("@username", Session["login"].ToString());
            cmd2.Parameters.AddWithValue("@startprice", startprice.Text);
            cmd2.Parameters.AddWithValue("@fblink", fglink.Text);
            cmd2.Parameters.AddWithValue("@iglink", iglink.Text);
            cmd2.Parameters.AddWithValue("@add_info", addinfo.Text);
            cmd2.Parameters.AddWithValue("@status", "active");

            // Execute the query
            cmd2.ExecuteNonQuery();

            //cmd = new SqlCommand("insert into tblSeller(gigpic,serviceId,experience,title,description,DOS,username,)",conn);
            Response.Write("<script>alert('gig registered sucessfully..');</script>");
            Response.Redirect("SellerDashboard.aspx");
        }
    }
}