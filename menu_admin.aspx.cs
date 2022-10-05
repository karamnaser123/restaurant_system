using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace ka
{
    public partial class menu_admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            var path = Server.MapPath("~/images");
            var directory = new DirectoryInfo(path);

            if (directory.Exists == false)
            {
                directory.Create();
            }

            var file = Path.Combine(path, uplod.FileName);

            uplod.SaveAs(file);

        }
    }
}