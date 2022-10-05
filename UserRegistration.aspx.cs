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
    public partial class UserRegistration : System.Web.UI.Page
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
                    SqlCommand cmd = new SqlCommand("sp_Register", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@username", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                    cmd.Parameters.AddWithValue("@phone", txtphone.Text);
                    cmd.Parameters.AddWithValue("@cardnumber", card.Text);
                    cmd.Parameters.AddWithValue("@Expiration", exp.Text);
                    cmd.Parameters.AddWithValue("@SecurityCode", code.Text);


                    con.Open();

                    cmd.ExecuteNonQuery();

                    lblMsg.BackColor = System.Drawing.ColorTranslator.FromHtml("#4dff4d");
                    lblMsg.Text = "تم التسجيل بنجاح " + txtUsername.Text.ToString() + " مبروك";
                }

            }
            else
            {
                lblMsg.BackColor = System.Drawing.ColorTranslator.FromHtml("#ff4d4d");
                lblMsg.Text = "يرجى التأكد من تطابق كلمتا المرور";
            }

        }
    }
}