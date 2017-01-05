using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminApprovals : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string query = "select * from tblNewUser where Status='Pending'";
            dt=Database.GetData(query);
            dt.Columns.Add("Approve", typeof(string));
            for(int i=0;i<dt.Rows.Count;i++)
            {
                
                dt.Rows[i]["Approve"]= "Approve";

            }
            gvUserList.DataSource = dt;
            gvUserList.DataBind();
        }
    }
    protected void gvUserList_RowDataBound(object sender,
    System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // CREATE A LinkButton AND IT TO EACH ROW.
            LinkButton lb = new LinkButton();
            lb.ID = "lblApprove";
            lb.Text = "Approve";

            e.Row.Cells[14].Controls.Add(lb);
        }
    }

    protected void gvUserList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminLogin.aspx");

    }
}