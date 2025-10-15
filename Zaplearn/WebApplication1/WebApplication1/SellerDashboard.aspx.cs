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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        SqlDataReader dr;
        int credit = 0;
        int debit = 0;
        int blocked = 0;
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();

            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }

            
            da = new SqlDataAdapter("select s.* , u.* , se.* from tblUser u , tblSeller s ,tblService se where s.username = u.username and se.serviceId = s.serviceId and s.username='" + Session["login"] + "';", conn);
            //da = new SqlDataAdapter("select * from tblSeller where username='"+ user +"'",conn);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('You do not have any gigs.'); location.href='gigreg.aspx'</script>");
            }
            sellerprofile.DataSource = ds;
            sellerprofile.DataBind();

            cmd = new SqlCommand("select SUM(amount) as credit from tblWallet where userId='" + Session["login"] + "' and type='credit';", conn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                try
                {
                    credit = Convert.ToInt32(dr["credit"]);
                }
                catch (Exception)
                {

                }

            }
            dr.Close();

            cmd = new SqlCommand("select SUM(amount) as debit from tblWallet where userId='" + Session["login"] + "' and type='debit';", conn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                try
                {
                    debit = Convert.ToInt32(dr["debit"]);
                }
                catch (Exception)
                {

                }

            }
            dr.Close();

            cmd = new SqlCommand("select SUM(o.amount) as blocked from tblOrder o , tblPayment p where o.buyerId in(select id from tblBuyer where username='" + Session["login"] + "') and p.status ='blocked' and o.orderId = p.orderId ; ", conn);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                try
                {
                    blocked = Convert.ToInt32(dr["blocked"]);
                }
                catch (Exception)
                {

                }

            }
            dr.Close();

            amount.Text = (credit - (debit + blocked)).ToString();
            txtwithdraw.Attributes.Add("max", amount.Text);
            lblblocked.Text = blocked.ToString();

            cmd = new SqlCommand("select count(*) as pendingcount , (select count(*) as completecount from tblOrder where sellerId in (select id from tblSeller where username = '"+ Session["login"] + "') and status='complete') from tblOrder where sellerId in (select id from tblSeller where username = '" + Session["login"] + "') and status='pending' or status='approved' or status='in-process';", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            lblOrdersPending.Text = dr[0].ToString();
            lblOrdersComplete.Text = dr[1].ToString();
            dr.Close();

            cmd = new SqlCommand("select sum(amount) from tblWallet where userId='"+ Session["login"] +"' and detail like 'rec%';", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr[0].ToString() == null )
            {
                lblEarnings.Text = "0";
            }
            else
            {
                lblEarnings.Text = dr[0].ToString();
            }
            
            dr.Close();

            da = new SqlDataAdapter("select * from tblWallet where userId='"+ Session["login"] +"'",conn);
            ds = new DataSet();
            da.Fill(ds);
            repWallet.DataSource = ds;
            repWallet.DataBind();
            
            da = new SqlDataAdapter("select p.*,se.sername from tblPhotos p , tblSeller s , tblService se where p.sellerId in(select id from tblSeller where username='"+ Session["login"] +"') and p.sellerId=s.id and s.serviceId=se.serviceId ;", conn);
            ds = new DataSet();
            da.Fill(ds);
            repPhotoMedia.DataSource = ds;
            repPhotoMedia.DataBind();
            da = new SqlDataAdapter("select v.*,se.sername from tblVideos v , tblSeller s , tblService se where v.sellerId in(select id from tblSeller where username='"+ Session["login"] +"') and v.sellerId=s.id and s.serviceId=se.serviceId ;", conn);
            ds = new DataSet();
            da.Fill(ds);
            repVideoMedia.DataSource = ds;
            repVideoMedia.DataBind();
            
        }

        protected void lc(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("landing.aspx");
        }

        protected void btnwithdraw_Click(object sender, EventArgs e)
        {
            // cmd = new SqlCommand("insert into tblWallet(userId,amount,type,detail) values('" + Session["login"].ToString() + "','" + txtwithdraw.Text + "','debit','withdraw')", conn);
            // cmd.ExecuteNonQuery();
            // Response.Write("<script>alert('Withdraw sucessful'); location.href='SellerDashboard.aspx'; </script>");
            string data = txtwithdraw.Text;
            Session["Data"] = data;
            Session["Page"] = "SellerDashboard.aspx";
            Response.Redirect("paymentwidthraw.aspx");
        }

        protected void btndeposit_Click(object sender, EventArgs e)
        {
            // cmd = new SqlCommand("insert into tblWallet(userId,amount,type,detail) values('" + Session["login"] + "','" + txtdeposit.Text + "','credit','deposit')", conn);
            // cmd.ExecuteNonQuery();
            // Response.Write("<script>alert('Deposit sucessful'); location.href='SellerDashboard.aspx'; </script>");
            string data = txtdeposit.Text;
            Session["Data"] = data;
            Session["Page"] = "SellerDashboard.aspx";
            Response.Redirect("payment.aspx");
        }

    }
}