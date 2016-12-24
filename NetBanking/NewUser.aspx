<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="NewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style2 {
            height: 33px;
        }
        .auto-style1 {
            height: 29px;
        }
        .auto-style3 {
            height: 33px;
            color: #FF3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
    function ValidateDropDown() {
    var cmbID = "<%=ddlDate.ClientID %>";
    if (document.getElementById(cmbID).selectedIndex == 0) {
        alert("Please select a Value");
        return false;
    }
    return true;
    }
        </script>
    <table>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Account number<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ControlToValidate="txtAccountNo">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtAccountNo" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Confirm Account number<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ControlToValidate="txtConfirmAccountNo">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtAccountNo" ControlToValidate="txtConfirmAccountNo" ErrorMessage="CompareValidator" ForeColor="#FF3300">Account number dont match</asp:CompareValidator>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmAccountNo" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Password<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Confirm Password<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ControlToValidate="txtConfirmPassword">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="CompareValidator" ForeColor="#FF3300">Passwords dont match</asp:CompareValidator>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Account Name<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAccountName" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtAccountName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Date of Birth<asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Select Date/Month/Year" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">Select Date/Month/Year</asp:CustomValidator>
            </td>
            <td>
                <asp:DropDownList ID="ddlDate" runat="server" >
                </asp:DropDownList>
                <asp:DropDownList ID="ddlMonth" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlYear" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Gender</td>
            <td>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Text="Select"></asp:ListItem>
                    <asp:ListItem Text="Male"> </asp:ListItem>
                    <asp:ListItem Text="Female"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Father/Husband Name<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtGaurdianName" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtGaurdianName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Address<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>City</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>State</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1">Pincode<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d{6}(-\d{6})?" ControlToValidate="txtPincode">6-digit number</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPassword" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">* Required Fields</td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Submit" ForeColor="#3333FF"/>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

