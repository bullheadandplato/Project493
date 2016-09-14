using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project493
{
    public partial class Calander : System.Web.UI.Page
    {
        int[] notes = { 12, 10, 14 };
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void google(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label1.Text = "No note for this date: " + Calendar1.SelectedDate.Day + ":" + Calendar1.SelectedDate.Month + ":" + Calendar1.SelectedDate.Year;
        }
        protected void dayRender(object sender, DayRenderEventArgs e)
        {
           foreach(int day in notes)
            {
                if(e.Day.Date == new DateTime(2016, 9, day)  && !e.Day.IsToday)
                {
                    e.Cell.CssClass = "eventDay";
                    e.Cell.ForeColor = System.Drawing.Color.White;
                }
            }
        }

    }
}