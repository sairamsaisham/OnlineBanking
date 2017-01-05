using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class NewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        string AccountNumber = txtAccountnoPrefix.Text + txtAccountNo.Text;
        DataTable dt = new DataTable();

        string checkExistsUser = "select * from tblNewUser where Account_no='" + AccountNumber + "'";
        dt = Database.GetData(checkExistsUser);
        
        if (dt.Rows.Count > 0)
        {
            string acntstatus = Convert.ToString(dt.Rows[0]["Status"]);
            lblMessage.Text = "Account Already Registered. Status=" + acntstatus;
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            string checkExistsUser1 = "select * from tblNewUser where Email='" + txtEmail.Text + "'";
            dt = Database.GetData(checkExistsUser1);
            if (dt.Rows.Count > 0)
            {
                lblMessage.Text = "Email Id " + txtEmail.Text + " already registered!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                string DOB = ddlDate.SelectedItem.Value + ddlMonth.SelectedItem.Value + ddlYear.SelectedItem.Value;
                string query = "insert into tblNewUser(Bank,Account_no,Email,Password,Account_Name,DOB,Gender,[Father/Husband_Name],Address,City,State,Pincode,Status) values('SBI','" + AccountNumber + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtAccountName.Text + "','" + DOB + "','" + ddlGender.Text + "','" + txtGaurdianName.Text + "','" + txtAddress.Text + "','" + txtCity.Text + "','" + DropDownList1.Text + "','" + txtPincode.Text + "','Pending') ";
                Database.InsertData(query);
                //Response.Write(query);
                lblMessage.Text = "Registration Done Successfully";
            }
        }
    }
}