<%@ Page Title="" Language="C#" MasterPageFile="~/client/ClientHome.master" AutoEventWireup="true" CodeFile="AcntStmt.aspx.cs" Inherits="client_AcntStmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
        <tr>
            <td style="width:100%">
                  <asp:GridView ID="GridView1" runat="server">
                  </asp:GridView>
            </td>
        </tr>


    </table>
</asp:Content>

