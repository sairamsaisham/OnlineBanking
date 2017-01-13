using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       // Session["UserId"] = Session["Username"];
      
        string query = "select * from tblAdmins where Username='"+ TextBox1.Text +"' and Password='"+ TextBox2.Text +"'";
        dt = Database.GetData(query);
        Response.Redirect("AdminHomePage.aspx");
    
       
    }
}