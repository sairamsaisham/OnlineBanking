using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminApproveConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        if (Convert.ToString(Session["Username"]) == "sbi")
        {
            string s = Request.QueryString["Id"];
            string query = "update tblNewUser set Status=\"Approved\" where ID="+ s;
            Database.UpdateData(query);
            string query1 = "select * from tblNewUser where ID=" + s;
            dt = Database.GetData(query1);
            userGridView.DataSource = dt;
            userGridView.DataBind();
        }
        else
        {
            Response.Redirect("AdminLogin.aspx");

        }
    }
}