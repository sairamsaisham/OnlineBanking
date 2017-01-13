<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Admin_Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GVUserManage" AutoGenerateColumns="false" runat="server">

                    <Columns>
                    <asp:BoundField  datafield="Account_no" headertext="Account number" >
                        </asp:BoundField>
                    <asp:BoundField  datafield="Account_Name" headertext="Name" >
                        </asp:BoundField>
                    <asp:BoundField  datafield="Balance" headertext="Balance" >
                        </asp:BoundField>

                    <asp:HyperLinkField DataTextField="Transact" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="~/Admin/AdminTransaction.aspx?Id={0}"
            HeaderText="Credit/Debit" ItemStyle-Width = "150" />


                    </Columns>

    </asp:GridView>
</asp:Content>

