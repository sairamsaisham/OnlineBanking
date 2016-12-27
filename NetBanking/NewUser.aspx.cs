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

        DataTable dt = new DataTable();
      
        string DOB = ddlDate.SelectedItem.Value  + ddlMonth.SelectedItem.Value + ddlYear.SelectedItem.Value;
        string AccountNumber = txtAccountnoPrefix.Text + txtAccountNo.Text;
        string query = "insert into tblNewUser(Bank,Account_no,Email,Password,Account_Name,DOB,Gender,[Father/Husband_Name],Address,City,State,Pincode) values('SBI','"+ AccountNumber + "','"+ txtEmail.Text +"','"+ txtPassword.Text + "','" + txtAccountName.Text +"','"+ DOB +"','"+ ddlGender.Text +"','"+ txtGaurdianName.Text +"','"+ txtAddress.Text +"','"+ txtCity.Text +"','"+ DropDownList1.Text +"','"+ txtPincode.Text +"') ";
        Database.InsertData(query);
        //Response.Write(query);
        lblMessage.Text = "Registration Done Successfully";
    }
}