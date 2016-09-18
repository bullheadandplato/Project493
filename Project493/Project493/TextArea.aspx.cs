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
        protected void Page_Load(object sender, EventArgs e)
        {
           
            note = new Note();
            
            
        }
        protected void editor_save(object sender, System.Web.UI.WebControls.CommandEventArgs e)
        {
            if (string.Compare(e.CommandName, "Save", true) == 0)
            {
                String text = Editor123.Text;
                //check if text has some texts
                if(!(text.Length > 0)) {
                    Response.Write("<script> alert ('Nothing to save')</script>");
                    return;
                }
                //get the note title
                String title = titleBox.Text;
                if(title.Length < 1)
                {
                    return;
                }
                //save note in database
                note.setTitle(title);
                note.setText(text);
                //get the UID from session
                note.setUID((int)Session["UID"]);
                if (note.saveNote())
                {
                    Editor123.Text = "";
                    Response.Write("<script> alert ('Note successfully saved.');</script>");
                }
                else
                {
                    Response.Write("<script> alert ('Cannot save note! there is an error.');</script>");

                }

            }
        }
    }
}