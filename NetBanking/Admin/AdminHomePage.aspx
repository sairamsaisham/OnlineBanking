<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/AdminHome.css" rel="stylesheet" type="text/css" />
    <table>
        <tr>
            <td style="width:500px">

                <table class="auto-style2">
                    <tr>
                        <td>Total user:</td>
                        <td>
                            <asp:Label ID="lblTotalUser" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Approved:</td>
                        <td>
                            <asp:Label ID="lblUsertoApprove" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
    </table>
</asp:Content>

