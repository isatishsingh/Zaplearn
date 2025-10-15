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
    public partial class Managegig : System.Web.UI.Page
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
            //cmd = new SqlCommand("select * from tblSeller where username='"+ Session["login"] +"' ", conn);
            //dr = cmd.ExecuteReader();
            //while (dr.Read())
            //{
            //    if (Request.QueryString["seller"] == dr["id"].ToString())
            //    {
            //        flag = 1;
            //    }
            //}
            //if (flag == 0)
            //{
            //    Response.Redirect("SellerDashboard.aspx");
            //}
            //dr.Close();
            if (!IsPostBack)
            {
                
                cmd = new SqlCommand("select * from tblService", conn);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    inputservice.Items.Add(dr["sername"].ToString());
                }
                dr.Close();

                cmd = new SqlCommand("select s.* , se.sername from tblSeller s , tblService se where se.serviceId=s.serviceId and s.id='" + Session["seller"] + "' and s.username='"+ Session["login"].ToString() +"' ", conn);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lblfile.Text = dr["gigpic"].ToString();
                    picname.Value = dr["gigpic"].ToString();
                    
                    gigtitle.Text = dr["title"].ToString();
                    gigdes.Text = dr["description"].ToString();
                    string sername = dr["sername"].ToString();
                    inputservice.Items.FindByValue(sername).Selected = true;
                    gigexp.Text = dr["experience"].ToString();
                    startprice.Text = dr["startprice"].ToString();
                    addinfo.Text = dr["add_info"].ToString();
                    iglink.Text = dr["iglink"].ToString();
                    fglink.Text = dr["fblink"].ToString();
                    
                }
                dr.Close();
            }
        }

        protected void gigUpdate(object sender, EventArgs e)
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
                dbfullpath = picname.Value;
            }

            cmd = new SqlCommand("Update tblSeller SET gigpic='" + dbfullpath + "' , serviceId=" + ser + ", experience=" + gigexp.Text + ", title='" + gigtitle.Text + "', description='" + gigdes.Text + "', startprice=" + startprice.Text + ", fblink='" + fglink.Text + "', iglink='" + iglink.Text + "' where id='" + Session["seller"] + "' and username='"+ Session["login"] +"' ", conn);

            //cmd = new SqlCommand("insert into tblUser values('" + txtusrname.Text + "', '" + txtpass.Text + "','" + txtname.Text + "', " + txtcno.Text + ",'" + txtemail.Text + "','" + dbfullpath + "','" + txtDOB.Text + "','" + txtcon.Text + "','" + txtcity.Text + "')", conn);
            cmd.ExecuteNonQuery();
            Session.Remove("seller");
            Response.Redirect("SellerDashboard.aspx");
        }
    }
}