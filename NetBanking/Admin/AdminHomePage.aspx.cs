using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminHomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        string query = "select * from tblNewUser";
        dt = Database.GetData(query);
        lblTotalUser.Text = Convert.ToString(dt.Rows.Count);
        
        string query1 = "select * from tblNewUser where Status='Pending'";
        dt1 = Database.GetData(query1);
        lblUsertoApprove.Text= Convert.ToString(dt1.Rows.Count);



    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminApprovals.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
 


    protected void btnLogout1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminLogin.aspx");
    }
}