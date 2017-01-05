<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="AdminApprovals.aspx.cs" Inherits="AdminApprovals" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td class="auto-style1">
                <table>
                    <tr>
                        <td style="width:200px;height:20px;background-color:grey" class="auto-style3">
                            <asp:LinkButton ID="LinkButton1" runat="server">Approvals</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;height:20px;background:grey" class="auto-style3">
                            <asp:LinkButton ID="LinkButton2" runat="server">Users</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td style="width:200px;height:20px;background-color:grey" class="auto-style3">
                            <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click">Logout</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width:500px">
                <asp:GridView ID="gvUserList" AutoGenerateColumns="false" runat="server" OnSelectedIndexChanged="gvUserList_SelectedIndexChanged">
                    <Columns>
                    <asp:BoundField  datafield="Account_no" headertext="Account number" >
                        </asp:BoundField>
                    <asp:BoundField  datafield="Account_Name" headertext="Name" >
                        </asp:BoundField>
                    <asp:HyperLinkField DataTextField="Approve" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/AdminApproveConfirm.aspx?Id={0}"
            HeaderText="Approve" ItemStyle-Width = "150" />

                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

