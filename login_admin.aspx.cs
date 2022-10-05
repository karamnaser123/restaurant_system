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
    public partial class login_admin : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            DataTable dtUser = getData("sp_Login_admin");

            if (dtUser.Rows.Count > 0)
            {
                DataRow dr = dtUser.Rows[0];
                Session["UserId"] = Convert.ToInt32(dr["UserId"].ToString());
                Response.Redirect("menu_admin.aspx");
            }

            else
            {
                lblMsg.BackColor = System.Drawing.ColorTranslator.FromHtml("#ff4d4d");
                lblMsg.Text = "اسم المستخدم او كلمة المرور غير صحيحة";
            }
        }

        private DataTable getData(string cmd)
        {
            DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter(cmd, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;

            if (cmd.Equals("sp_Login_admin"))
            {
                da.SelectCommand.Parameters.AddWithValue("@username1", txtUsername.Text);
                da.SelectCommand.Parameters.AddWithValue("@password1", txtPassword.Text);

                da.Fill(dt);
            }
            return dt;
        }


    }
}