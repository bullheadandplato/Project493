using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project493
{
    public partial class Allnotes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           DataTable dt = Note.getAllNotes();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

       
    }
}