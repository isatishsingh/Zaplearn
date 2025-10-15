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
    public partial class buyerprof : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataSet ds;
        int credit = 0;
        int debit = 0;
        int blocked = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["login"]) == null)
            {
                Response.Redirect("login.aspx");
            }

            string strcon = ConfigurationManager.ConnectionStrings["dbZaplearn"].ConnectionString;
            conn = new SqlConnection(strcon);
            conn.Open();

            da = new SqlDataAdapter("select * from tblUser where username='"+ Session["login"] +"' ",conn);
            ds = new DataSet();
            da.Fill(ds);
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();

            da = new SqlDataAdapter("select amount,type,detail from tblWallet where userId='" + Session["login"] + "' order by type ;", conn);
            ds = new DataSet();
            da.Fill(ds);
            //GridWallet.DataSource = ds.Tables[0];
            //GridWallet.DataBind();

            cmd = new SqlCommand("select SUM(amount) as credit from tblWallet where userId='"+ Session["login"] +"' and type='credit';", conn);
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

            cmd = new SqlCommand("select SUM(o.amount) as blocked from tblOrder o , tblPayment p where o.buyerId in(select id from tblBuyer where username='"+ Session["login"] +"') and p.status ='blocked' and o.orderId = p.orderId ; ", conn);
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
            txtwithdraw.Attributes.Add("max",amount.Text);
            lblblocked.Text = blocked.ToString();
        }
        

        protected void lc(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("landing.aspx");
        }

        protected void gigclick(object sender, EventArgs e)
        {
            
            Response.Redirect("gigreg.aspx");
        }


        

        

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from tblSeller", conn);
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                if ((dr["username"]).ToString() == Session["login"].ToString())
                {
                    Response.Redirect("SellerDashboard.aspx");
                }
            }
            dr.Close();
            Response.Write("<script>alert('Please make your gig first'); location.href='gigreg.aspx'; </script>");

            
            
        }

        protected void btnwithdraw_Click(object sender, EventArgs e)
        {
            /* cmd = new SqlCommand("insert into tblWallet(userId,amount,type,detail) values('"+ Session["login"].ToString() +"','"+ txtwithdraw.Text +"','debit','withdraw')",conn);
             cmd.ExecuteNonQuery();
             Response.Write("<script>alert('Withdraw sucessful'); location.href='buyerprof.aspx'; </script>");
         */
            string data = txtwithdraw.Text;
            Session["Data"] = data;
            Session["Page"] = "buyerprof.aspx";
            Response.Redirect("paymentwidthraw.aspx");
        }

        protected void btndeposit_Click(object sender, EventArgs e)
        {
            /*if ()
            {
            cmd = new SqlCommand("insert into tblWallet(userId,amount,type,detail) values('"+ Session["login"] +"','"+ txtdeposit.Text +"','credit','deposit')",conn);
            cmd.ExecuteNonQuery();
            }*/
            /*    Response.Write("<script>alert('Deposit sucessful'); location.href='buyerprof.aspx'; </script>");*/
            string data = txtdeposit.Text;
            Session["Data"] = data;
            Session["Page"] = "buyerprof.aspx";
            Response.Redirect("payment.aspx");
        }
    }
}
