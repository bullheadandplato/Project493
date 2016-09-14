using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project493.Login
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loginField.Visible = false;
            CreateUserWizard1.Visible = false;
           
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            loginField.Visible = false;
            CreateUserWizard1.Visible = true;
        }

        protected void login_Click(object sender, EventArgs e)
        {
        

            loginField.Visible = true;

        }

        protected void Unnamed_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}