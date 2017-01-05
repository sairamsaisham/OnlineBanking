<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            border-style: solid;
            border-width: 3px;
            padding: 1px 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="CSS/AdminHome.css" rel="stylesheet" type="text/css" />
    <table>
        <tr>
            <td class="auto-style1">
                <table>
                    <tr>
                        <td style="width:200px;height:20px;background-color:grey" class="auto-style3">
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Approvals</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;height:20px;background:grey" class="auto-style3">
                            <asp:LinkButton ID="LinkButton2" runat="server">Users</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;height:20px;background-color:grey" class="auto-style3">
                            <asp:LinkButton ID="btnLogout1" runat="server" OnClick="btnLogout1_Click">Logout</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
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

