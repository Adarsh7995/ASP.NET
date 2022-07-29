using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calendar
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            txtdate.Text = Calendar.SelectedDate.Date.ToShortDateString();
        }
    }
}
