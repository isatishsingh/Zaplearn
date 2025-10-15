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

namespace WebApplication1
{
    public partial class AddMedia : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path;
            string fullpath;
            string dbfullpath;
            path = Server.MapPath("gigMedia");
            //for (int i = 0; i < uploadPhotos.PostedFiles.Count(); i++)
            //{

            //}
            if (uploadPhotos.HasFile)
            {
                foreach (HttpPostedFile Postedfile in uploadPhotos.PostedFiles)
                {
                    fullpath = path + "\\" + Postedfile.FileName;
                    Postedfile.SaveAs(fullpath);
                    dbfullpath = "\\gigMedia\\" + Postedfile.FileName;
                    cmd = new SqlCommand("Insert into tblPhotos(path,sellerId) values('" + dbfullpath + "'," + Session["seller"] + ")", conn);
                    cmd.ExecuteNonQuery();
                }
            }

            if (uploadVideos.HasFile)
            {
                foreach(HttpPostedFile Postedfile in uploadVideos.PostedFiles)
            {
                    fullpath = path + "\\" + Postedfile.FileName;
                    Postedfile.SaveAs(fullpath);
                    dbfullpath = "\\gigMedia\\" + Postedfile.FileName;
                    cmd = new SqlCommand("Insert into tblVideos(videoPath,sellerId) values('" + dbfullpath + "'," + Session["seller"] + ")", conn);
                    cmd.ExecuteNonQuery();
                }
            }

            Response.Write("<script>alert('Media added to your Gig.'); location.href='SellerDashboard.aspx';</script>");
        }
    }
}