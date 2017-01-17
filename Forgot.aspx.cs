using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Forgot : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDb)\MSSQLLocalDB; AttachDbFilename=C:\Users\lcom13_one\Documents\Visual Studio 2015\WebSites\WebSite2\App_Data\aspnet-WebSite2-f781b900-f676-4b35-a8ed-ef238ee0e1e5.mdf;Initial Catalog = aspnet - WebSite2 - f781b900 - f676 - 4b35-a8ed-ef238ee0e1e5;Integrated Security = True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == TextBox3.Text)
        {
            cn.Open();
            string qry = " update Phone set Password='" + TextBox5.Text + "' where Mobile='" + TextBox3.Text + "'";
            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("Password Successfully Changed.");
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Write("Password not Changed.");
        }
    }
}