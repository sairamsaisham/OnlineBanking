using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AdminCredit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = Request.QueryString["Id"];
        DataTable dt = new DataTable();
        string query = "select * from tblNewUser where ID=" + s;
        dt = Database.GetData(query);
        if (dt.Rows.Count > 0)
        {
            lblAcccountNo.Text = Convert.ToString(dt.Rows[0]["Account_no"]);
            lblAccountName.Text = Convert.ToString(dt.Rows[0]["Account_name"]);
            if (dt.Rows[0]["Balance"] == null)
            {
                lblBalance.Text = "0";
            }
            else
            {
                lblBalance.Text = Convert.ToString(dt.Rows[0]["Balance"]);
            }
            lblCity.Text = Convert.ToString(dt.Rows[0]["City"]);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = Request.QueryString["Id"];
        int old_balance = Convert.ToInt32(lblBalance.Text);
        int new_balance = old_balance + Convert.ToInt32(tbCreditAmount.Text);
        string query = "update tblNewUser set Balance = " + new_balance + " where ID =" + s;
        Database.UpdateData(query);
        lblCreditConfirm.Text = "Amount credited to account,Reload Page";
        lblCreditConfirm.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string s = Request.QueryString["Id"];
        int old_balance = Convert.ToInt32(lblBalance.Text);
        int debit_amt = Convert.ToInt32(tbDebitAmount.Text);
        if(debit_amt < old_balance)
        {
            int new_balance = old_balance - debit_amt;
            string query = "update tblNewUser set Balance = " + new_balance + " where ID =" + s;
            Database.UpdateData(query);
            lblDebitConfirm.Text = "Amount debit from account,Reload Page";
        }
        else
        {
            lblDebitConfirm.Text = "Account Balance less than debit amount, please check";
        }
        lblDebitConfirm.Visible = true;
    }
}