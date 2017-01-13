<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="AdminApproveConfirm.aspx.cs" Inherits="AdminApproveConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
        }
        .auto-style4 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
            width: 200px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>
        <tr>
            <td style="width:500px">
                
                Online acccount for
                <asp:Label ID="LblAcccountNo" runat="server" Text="AccountID" ForeColor="#33CC33"></asp:Label>
&nbsp;is approved.</td>
        </tr>
    </table>

</asp:Content>

