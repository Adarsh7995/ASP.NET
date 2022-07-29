using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace sqlex
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=.\\SQLEXPRESS; User ID=sa; Password=sqlserver; database=pubs;");
            if (!IsPostBack) {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select au_id, au_fname, au_lname from authors";
                cmd.Connection = con;
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read()) {
                    ListItem li = new ListItem();
                    li.Value = reader["au_id"].ToString();
                    li.Text = reader["au_fname"].ToString() + " , " + reader["au_lname"].ToString();
                    lstAuthors.Items.Add(li);
                }
                con.Close();
            }
        }

        protected void lstAuthors_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("Select * from authors where au_id='"+lstAuthors.SelectedValue+"'",con);
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read()){
                txtau_id.Text = reader[0].ToString();
                txtau_ln.Text = reader[1].ToString();
                txtau_fn.Text = reader[2].ToString();
                txtphone.Text = reader[3].ToString();
                txtadd.Text = reader[4].ToString();
                txtcity.Text = reader[5].ToString();
                txtstate.Text = reader[6].ToString();
                txtzip.Text = reader[7].ToString();
                chkcontract.Checked = (bool)reader[8];
            }

        }

        protected void cmdCR_Click(object sender, EventArgs e)
        {
            txtau_id.Text = "";
            txtau_ln.Text = "";
            txtau_fn.Text = "";
            txtphone.Text = "";
            txtadd.Text = "";
            txtcity.Text = "";
            txtstate.Text = "";
            txtzip.Text = "";
            chkcontract.Checked = false;
        }

        protected void cmdIR_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand();
                Int16 a = Convert.ToInt16(chkcontract.Checked);
                
                cmd.CommandText = "Insert into authors(au_id, au_lname, au_fname, phone, address, city, state, zip, contract) values('" + txtau_id.Text + "', '" + txtau_ln.Text + "', '" + txtau_fn.Text + "', '" + txtphone.Text + "', '" + txtadd.Text + "', '" + txtcity.Text + "', '" + txtstate.Text + "', '" + txtzip.Text + "', " + Convert.ToInt16(chkcontract.Checked) + ")";
                cmd.Connection = con;
                int ne = cmd.ExecuteNonQuery();
                lblstatus.Text = ne + " of rows affected";
                con.Close();
                Response.Redirect("~/Default.aspx");
            }
            catch (Exception ex) {
                lblstatus.Text = ex.StackTrace;
            }
        }

        protected void cmdUR_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand("update authors set au_lname=@au_ln, au_fname=@au_fn, phone=@phone, address=@address, city=@city, state=@state, zip=@zip, contract=@contract where au_id=@au_id", con);
                cmd.Parameters.AddWithValue("@au_fn", txtau_fn.Text);
                cmd.Parameters.AddWithValue("@au_ln", txtau_ln.Text);
                cmd.Parameters.AddWithValue("@phone", txtphone.Text);
                cmd.Parameters.AddWithValue("@address", txtadd.Text);
                cmd.Parameters.AddWithValue("@city", txtcity.Text);
                cmd.Parameters.AddWithValue("@state", txtstate.Text);
                cmd.Parameters.AddWithValue("@zip", txtzip.Text);
                cmd.Parameters.AddWithValue("@contract", chkcontract.Checked);
                cmd.Parameters.AddWithValue("@au_id", txtau_id.Text);
                int ne = cmd.ExecuteNonQuery();
                lblstatus.Text = ne + " of rows affected";
                con.Close();
                Response.Redirect("~/Default.aspx");
            }
            catch (Exception ex) {
                lblstatus.Text = ex.Message;
            }
        }

        protected void cmdDR_Click(object sender, EventArgs e)
        {

        }
    }
}