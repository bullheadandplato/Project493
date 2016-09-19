using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project493
{
    public partial class Calander : System.Web.UI.Page
    {
        int[] notes;
        Note note;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UID"] == null || Session.IsNewSession)
            {
                Response.Redirect("~/Login/Index.aspx");
                return;
            }
             note= new Note();
            note.setUID((int)Session["UID"]);
            notes=note.getNoteDatesForMonth(Calendar1.VisibleDate.Month, Calendar1.VisibleDate.Year);
        }
        protected void google(object sender, EventArgs e)
        {
            DataTable dt= note.getNoteOnDate(Calendar1.SelectedDate.Day, Calendar1.SelectedDate.Month, Calendar1.SelectedDate.Year);
            if(dt.Rows.Count > 0)
            {
                Label1.Text = " Note for selected date ";
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.Visible = true;
            }
            else
            {
                Label1.Text = "No Note for selected date ";
                GridView1.Visible = false;


            }

        }
        protected void dayRender(object sender, DayRenderEventArgs e)
        {
            notes = note.getNoteDatesForMonth(e.Day.Date.Month, e.Day.Date.Year);
             

            foreach (int day in notes)
            {
                if(e.Day.Date.Day==day  && !e.Day.IsToday)
                {
                    e.Cell.CssClass = "eventDay";
                    e.Cell.ForeColor = System.Drawing.Color.White;
                }
            }
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string decodedText1 = HttpUtility.HtmlDecode(e.Row.Cells[0].Text);
                e.Row.Cells[0].Text = decodedText1;
                string decodedText = HttpUtility.HtmlDecode(e.Row.Cells[1].Text);
                e.Row.Cells[1].Text = decodedText;
            }
        }

        protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
        }
    }
}