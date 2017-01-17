using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Register : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source = (LocalDb)\MSSQLLocalDB; AttachDbFilename=C:\Users\lcom13_one\Documents\Visual Studio 2015\WebSites\WebSite2\App_Data\aspnet-WebSite2-f781b900-f676-4b35-a8ed-ef238ee0e1e5.mdf;Initial Catalog = aspnet - WebSite2 - f781b900 - f676 - 4b35-a8ed-ef238ee0e1e5;Integrated Security = True");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        string qry = "insert into Phone (fname,lname,Mobile,Email,Password,Category) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.Text + "')";
        SqlCommand com = new SqlCommand(qry, cn);
        com.ExecuteNonQuery();
        cn.Close();
        Response.Write("insert successful.....");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        Response.Redirect("Login.aspx");
    }
}