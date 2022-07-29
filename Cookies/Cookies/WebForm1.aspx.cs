using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("UserInfo");
            if (cookie != null)
            {
                Response.Write("<h1>User Details:</h1><h2>First Name:" + cookie["FN"] + "</h2>");
                Response.Write("<h2>Last Name:" + cookie["LN"] + "</h2>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("UserInfo");
            cookie.Expires = DateTime.Now.AddDays(7);
            cookie["FN"] = txtFN.Text;
            cookie["LN"] = txtLN.Text;
            Response.Cookies.Add(cookie);
        }
    }
}