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
        Note note;
        SharedData data;
        protected void Page_Load(object sender, EventArgs e)
        {
            note = new Note();
            
        }
        protected void editor_save(object sender, System.Web.UI.WebControls.CommandEventArgs e)
        {
            if (string.Compare(e.CommandName, "Save", true) == 0)
            {
                String text = Editor123.Text;
                String title = text.Substring(0, text.IndexOf('.'));
                //save note in database
                note.setTitle(title);
                note.setText(text);
                if (note.saveNote())
                {
                    Editor123.Text = "";
                    Response.Write("<script> alert ('Note successfully saved.');</script>");
                }
                
            }
        }
    }
}