using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class controls_login : System.Web.UI.UserControl
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = "select * from tblNewUser where Email='"+ txtUserLoginEmail.Text +"' and Password='"+ txtUserPwd.Text +"'";
        dt = Database.GetData(query);
    }
}