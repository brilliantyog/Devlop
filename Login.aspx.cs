using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDb)\MSSQLLocalDB; AttachDbFilename=C:\Users\lcom13_one\Documents\Visual Studio 2015\WebSites\WebSite2\App_Data\aspnet-WebSite2-f781b900-f676-4b35-a8ed-ef238ee0e1e5.mdf;Initial Catalog = aspnet - WebSite2 - f781b900 - f676 - 4b35-a8ed-ef238ee0e1e5;Integrated Security = True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string qry="select * from Phone where fname='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["username"] = TextBox1.Text;
            Session["password"] = TextBox2.Text;
            Response.Write("Login Succcessfully");
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Write("Enter Valid Username Or Password");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
