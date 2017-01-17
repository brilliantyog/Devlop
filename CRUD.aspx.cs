using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CRUD : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=C:\Users\lcom13_one\Documents\Visual Studio 2015\WebSites\WebSite2\App_Data\aspnet-WebSite2-f781b900-f676-4b35-a8ed-ef238ee0e1e5.mdf;Initial Catalog=aspnet-WebSite2-f781b900-f676-4b35-a8ed-ef238ee0e1e5;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";


    }

    protected void Button2_Click(object sender, EventArgs e)
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
        Display();
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        string qry = "Delete from Phone where Mobile='" + TextBox3.Text+"'";
        SqlCommand com = new SqlCommand(qry, cn);
        com.ExecuteNonQuery();
        cn.Close();
        Response.Write("Delete successful.....");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        Display();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        cn.Open();
        string qry = " update Phone set fname='"+TextBox1.Text+ "',lname='" + TextBox2.Text + "',Mobile='" + TextBox3.Text + "',Email='" + TextBox4.Text + "',Password='" + TextBox5.Text + "',Category='" + DropDownList1.Text + "' where Mobile='" + TextBox3.Text + "'";
        SqlCommand com = new SqlCommand(qry, cn);
        com.ExecuteNonQuery();
        cn.Close();
        Response.Write("Update successful.....");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        Display();
    }
 void Display()
    {
        string Query = "select * from Phone";
        SqlCommand cmd = new SqlCommand(Query, cn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }



}