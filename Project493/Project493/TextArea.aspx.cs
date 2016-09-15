using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project493
{
    public partial class Textarea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void editor_save(object sender, System.Web.UI.WebControls.CommandEventArgs e)
        {
            if (string.Compare(e.CommandName, "Save", true) == 0)
            {
                Editor123.Enabled = false;
            }
        }
    }
}