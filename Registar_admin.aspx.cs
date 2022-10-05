using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace ka
{
    public partial class Registar_admin : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text == txtConfirmPassword.Text)
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("sp_Register_admin", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@username1", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@password1", txtPassword.Text);
                    

                    con.Open();

                    cmd.ExecuteNonQuery();

                    lblMsg.BackColor = System.Drawing.ColorTranslator.FromHtml("#4dff4d");
                    lblMsg.Text = "تم التسجيل بنجاح " + txtUsername.Text.ToString() + " مبروك";
                }

            }
            else
            {
                lblMsg.BackColor = System.Drawing.ColorTranslator.FromHtml("#ff4d4d");
                lblMsg.Text = "Please make sure that the two passwords match";
            }
        }
    }
}