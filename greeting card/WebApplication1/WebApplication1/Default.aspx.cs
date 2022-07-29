using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Text;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string[] colorarray = Enum.GetNames(typeof(KnownColor));
            lstbackcolor.DataSource = colorarray;
            lstbackcolor.DataBind();
            InstalledFontCollection fc = new InstalledFontCollection();
            foreach (FontFamily ff in fc.Families)
            {
                lstfontnames.Items.Add(ff.Name);
            }
            String[] bs = Enum.GetNames(typeof(BorderStyle));
            lstborder.DataSource = bs;
            lstborder.DataBind();
            imgdefault.ImageUrl = ("~/Chrysanthemum.jpg");
            imgdefault.Visible = false;
        }
    }

    protected void cmdupdate_click(object sender, EventArgs e)
    {
        Panel1.BackColor = Color.FromName(lstbackcolor.SelectedValue);
        lblgreeting.Font.Name = lstfontnames.SelectedValue;
        lblgreeting.Font.Size = Int32.Parse(txtfontsize.Text);
        lblgreeting.Text = txtgreeting.Text;
        TypeConverter convertor = TypeDescriptor.GetConverter(typeof(BorderStyle));
        Panel1.BorderStyle = (BorderStyle)convertor.ConvertFromString(lstborder.SelectedValue);
        if (chkdefaultpic.Checked)
        {
            imgdefault.Visible = true;
        }
    }

}