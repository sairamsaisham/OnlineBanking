using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Manage : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string query = "select * from tblNewUser where Status='Approved'";
            dt = Database.GetData(query);
            if (dt.Rows.Count > 0)
            {
                dt.Columns.Add("Transact", typeof(string));
                for (int i = 0; i < dt.Rows.Count; i++)
                {

                    dt.Rows[i]["Transact"] = "Transact";

                }
            }
            
            GVUserManage.DataSource = dt;
            GVUserManage.DataBind();
        }
    }
    protected void GVUserManage_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // CREATE A LinkButton AND IT TO EACH ROW.
            LinkButton lb = new LinkButton();
            lb.ID = "lblTransact";
            lb.Text = "Transact";

            e.Row.Cells[14].Controls.Add(lb);
        }
    }
}
