using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindDDL("Year");
        BindDDL("Month");
        BindDDL("Date");
    }
    private void BindDDL(string ddl)
    {
        switch (ddl)
        {
            case "Year":
                ddlYear.DataSource = GetYear();
                ddlYear.DataBind();
                ddlYear.Items.Insert(0, new ListItem("Year"));
                break;
            case "Date":
                ddlDate.DataSource = GetDate();
                ddlDate.DataBind();
                ddlDate.Items.Insert(0, new ListItem("Date"));
                break;
            case "Month":
                ddlMonth.DataSource = GetMonth();
                ddlMonth.DataBind();
                ddlMonth.Items.Insert(0, new ListItem("Month"));
                break;
        }
    }
    private List<int> GetYear()
    {
        List<int> year = new List<int>();
        for (int i = (DateTime.Now.Year) - 20; i != (DateTime.Now.Year) + 20; i++)
        {
            year.Add(i);
        }
        return year;

    }
    private List<int> GetDate()
    {
        List<int> date = new List<int>();
        for (int i = 1; i <= 31; i++)
        {
            date.Add(i);
        }
        return date;
    }
    private List<int> GetMonth()
    {
        List<int> month = new List<int>();
        for (int i = 1; i <= 12; i++)
        {
            month.Add(i);
        }
        return month;
    }

    protected void CustomValidator1_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        CustomValidator validator = (CustomValidator)sender;

        ddlDate = (DropDownList)validator.Parent.FindControl("ddlDate");
        ddlMonth = (DropDownList)validator.Parent.FindControl("ddlMonth");
        ddlYear = (DropDownList)validator.Parent.FindControl("ddlYear");

        if (ddlDate.SelectedIndex == 0 || ddlMonth.SelectedIndex == 0 ||
            ddlYear.SelectedIndex == 0)
        {
            e.IsValid = false;
        }
        else
        {
            string dateOfBirthString = ddlDate.SelectedItem.Value + "/" + ddlMonth.SelectedItem.Value +
                                       "/" + ddlYear.SelectedItem.Value;
            try
            {
                System.Globalization.CultureInfo cultureinfo = new System.Globalization.CultureInfo("in-IN");

                DateTime.Parse(dateOfBirthString, cultureinfo);
            }
            catch
            {
                e.IsValid = false;
            }
        }
    }
}