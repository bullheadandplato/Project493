using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project493
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //check session
            if (Session["UID"]==null || Session.IsNewSession)
            {
                Response.Redirect("~/Login/Index.aspx", false);
            }
            else
            {
                usernameText.Text = (String)Session["username"];
            }
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Login/index.aspx");
        }
    }
}