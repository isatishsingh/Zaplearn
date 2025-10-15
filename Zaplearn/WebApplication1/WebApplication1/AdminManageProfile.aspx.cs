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
    public partial class AdminManageProfile : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        string picpath;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }
            if (!IsPostBack)
            {
                cmd = new SqlCommand("select * from tblAdmin where username='" + Session["login"].ToString() + "'", conn);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lblfile.Text = dr["profilepic"].ToString();
                    picname.Value = dr["profilepic"].ToString();
                    picpath = dr["profilepic"].ToString();
                    txtusrname.Text = dr["username"].ToString();
                    txtemail.Text = dr["email"].ToString();
                    txtpass.Text = dr["password"].ToString();
                    txtname.Text = dr["name"].ToString();
                    txtcno.Text = dr["cno"].ToString();
                    txtDOB.Text = dr["DOB"].ToString();
                    
                }
                dr.Close();
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string path;
            string fullpath;
            string dbfullpath;
            if (profilePhoto.FileName != "")
            {
                path = Server.MapPath("profileimg");
                fullpath = path + "\\" + profilePhoto.FileName;
                profilePhoto.SaveAs(fullpath);
                dbfullpath = "\\profileimg\\" + profilePhoto.FileName;
            }
            else
            {
                dbfullpath = picname.Value;
            }
            cmd = new SqlCommand("Update tblAdmin SET password='" + txtpass.Text + "', name='" + txtname.Text + "', cno=" + txtcno.Text + ", email='" + txtemail.Text + "', profilepic='" + dbfullpath + "', DOB='" + txtDOB.Text + "' where username='" + Session["login"].ToString() + "'", conn);

            //cmd = new SqlCommand("insert into tblUser values('" + txtusrname.Text + "', '" + txtpass.Text + "','" + txtname.Text + "', " + txtcno.Text + ",'" + txtemail.Text + "','" + dbfullpath + "','" + txtDOB.Text + "','" + txtcon.Text + "','" + txtcity.Text + "')", conn);
            cmd.ExecuteNonQuery();

            Response.Redirect("AdminDashboard.aspx");
        }
    }
}