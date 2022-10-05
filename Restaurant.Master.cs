using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace ka
{
    public partial class Restaurant : System.Web.UI.MasterPage
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                SqlConnection con = new SqlConnection(CS);

                SqlDataAdapter da = new SqlDataAdapter("Select * from users where UserId = " + Convert.ToInt32(Session["UserId"].ToString()), con);

                SqlDataAdapter dgn = new SqlDataAdapter("Select * from users_admin where UserId = " + Convert.ToInt32(Session["UserId"].ToString()), con);

                DataTable dt = new DataTable();

                da.Fill(dt);
                DataRow dr = dt.Rows[0];

                lbtnLogout.Visible = true;
                lbtnLogout.Text = "تسجيل خروج";
                hlLogin.Visible = false;
                hlLogin2.Visible = false;
                hlRegister.Visible = false;

                lblWelcome.Visible = true;
                lblWelcome.Text = "اهلا وسهلا بك " + dr["Username"];

            }

            else
            {
                hlLogin.Visible = true;
                hlLogin2.Visible = true;
                hlLogin.Text = "تسجيل دخول";
                hlLogin2.Text = "تسجيل دخول ادمن";
                lbtnLogout.Visible = false;
                hlRegister.Visible = true;
                hlRegister.Text = "إنشاء حساب";

                lblWelcome.Visible = false;

            }

         }

        protected void lbtnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("UserId");
            lbtnLogout.Visible = false;
            lblWelcome.Visible = false;
            hlRegister.Visible = true;
            hlRegister.Text = "Register";
            hlLogin.Visible = true;
            hlLogin2.Visible = true;
            hlLogin.Text = "Login";
            hlLogin2.Text = "Login_admin";

        }


    }
}