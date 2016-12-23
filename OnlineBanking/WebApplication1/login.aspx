<%@ Page Title="" Language="C#" MasterPageFile="~/Sbi-Admin.master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>
<%@ Register src="login.ascx" tagname="login" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        border-style: solid;
        border-width: 1px;
    }
    .auto-style4 {
        font-size: large;
    }
    .auto-style5 {
        font-size: small;
    }
    .auto-style6 {
        height: 107px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <table align="center" cellpadding="2" class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/image4.jpg" />
        </td>
        <td>
            <uc1:login ID="login1" runat="server" />
        </td>
        <td>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/image5.jpg" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style6"><span class="auto-style4"><strong>Why Online Banking?</strong></span><strong><br class="auto-style4" />
            </strong><span class="auto-style5">1. Banking from anywhere.</span><br class="auto-style5" />
            <span class="auto-style5">2. bla bla bla</span><br class="auto-style5" />
            <span class="auto-style5">3. bla bla bla</span><br class="auto-style5" />
            <span class="auto-style5">4. bla bla bla</span></td>
        <td class="auto-style6"></td>
    </tr>
</table>
</asp:Content>
