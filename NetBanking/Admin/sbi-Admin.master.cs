using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sbi_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/AdminApprovals.aspx");
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/AdminLogin.aspx");
    }

    protected void lnkBManage_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Manage.aspx");
    }
}
