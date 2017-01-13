<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="AdminTransaction.aspx.cs" Inherits="Admin_AdminCredit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style4">
        <tr>
            <td>Account no
                <asp:Label ID="lblAcccountNo" runat="server" Text="lblAcccountNo" BorderColor="#6666FF"></asp:Label>
            </td>
            <td>Name:
                <asp:Label ID="lblAccountName" runat="server" Text="lblAccountName"></asp:Label>
            </td>
            <td>Balance:<asp:Label ID="lblBalance" runat="server" Text="lblBalance"></asp:Label>
            </td>
            <td>City:<asp:Label ID="lblCity" runat="server" Text="lblCity"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Credit Amount:</td>
            <td>
                <asp:TextBox ID="tbCreditAmount" runat="server"></asp:TextBox>
            </td>
            <td>Debit Amount:</td>
            <td>
                <asp:TextBox ID="tbDebitAmount" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter numbers" ValidationGroup="CreditGroup" ControlToValidate="tbCreditAmount" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Credit" ValidationGroup="CreditGroup" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter numbers" ValidationGroup="DebitGroup" ValidationExpression="^\d+$" ControlToValidate="tbDebitAmount"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Debit" ValidationGroup="DebitGroup" OnClick="Button2_Click" />
            </td>
        </tr>
        </table>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Debit amount" ValidationGroup="DebitGroup" ControlToValidate="tbDebitAmount"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter credit amount" ValidationGroup="CreditGroup" ControlToValidate="tbCreditAmount"></asp:RequiredFieldValidator>
                <asp:Label ID="lblCreditConfirm" runat="server" Text="creditconfirm" Visible="False"></asp:Label>
                <asp:Label ID="lblDebitConfirm" runat="server" Text="debitconfirm" Visible="False"></asp:Label>
            
</asp:Content>

