using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class Chat : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }

            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();
            da = new SqlDataAdapter("select profilepic from tblUser where username='"+ Session["login"] +"'",conn);
            ds = new DataSet();
            da.Fill(ds);
            RepImg.DataSource = ds;
            RepImg.DataBind();
            da = new SqlDataAdapter("select * from tblUser where username='" + Session["login"] + "'", conn);
            ds = new DataSet();
            da.Fill(ds);
            RepUser.DataSource = ds;
            RepUser.DataBind();
            cmd = new SqlCommand("select profilepic from tblUser where username='"+ Session ["login"] +"'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            Session["pic"] = dr["profilepic"].ToString();
            dr.Close();
            if (!IsPostBack)
            {
                da = new SqlDataAdapter("select * from tblUser", conn);
                ds = new DataSet();
                da.Fill(ds);
                Repeater1.DataSource = ds.Tables[0];
                Repeater1.DataBind();

                da = new SqlDataAdapter("select TOP 5 * from tblChat order by Id desc",conn);
                ds = new DataSet();
                da.Fill(ds);
                Repeater3.DataSource = ds.Tables[0];
                Repeater3.DataBind();

            }




            if (Request.QueryString["sid"] != null)
            {
                string sid = (Request.QueryString["sid"]);
                da = new SqlDataAdapter("select * from tblChat where senderId='" + sid + "' and recieverId='" + Session["login"] + "' or senderId='" + Session["login"] + "' and recieverId='" + sid + "'", conn);
                ds = new DataSet();
                da.Fill(ds);
                Repeater2.DataSource = ds.Tables[0];
                Repeater2.DataBind();
                
                
               
                

            }
            //if (Request.QueryString["sid"] != null)
            //{
            //    string sid = (Request.QueryString["sid"]);
            //    cmd = new SqlCommand("select * from tblChat order by Id", conn);
            //    dr = cmd.ExecuteReader();
            //    while (dr.Read())
            //    {

            //        if (dr["senderId"].ToString() == Session["login"].ToString() && dr["recieverId"].ToString() == sid )
            //        { 
            //            Repeater3.DataSource = dr;
            //            Repeater3.DataBind();

            //        }
            //        else if(dr["senderId"].ToString() == sid && dr["recieverId"].ToString () == Session["login"].ToString() )
            //        {
            //            Repeater2.DataSource = dr;
            //            Repeater2.DataBind();
            //        }
            //    }

            //}


        }


        protected void lb_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("insert into tblChat(type,message,senderId,recieverId,msgtime) values('text','" + mesg.Value + "','" + Session["login"] + "','" + Request.QueryString["sid"] + "','"+ DateTime .Now .ToString("h:mm").ToString() +"')", conn);
            cmd.ExecuteNonQuery();
            Response.Redirect("Chat.aspx?sid="+ Request.QueryString["sid"]);
        }

        protected void retBack_ServerClick(object sender, EventArgs e)
        {
            string redirectLocation = Session["location"] != null ? Session["location"].ToString() : "GigNotifications.aspx";
            Response.Redirect(redirectLocation);

        }
    }

}