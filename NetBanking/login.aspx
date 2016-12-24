<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<%@ Register src="http://localhost:62239/login.ascx" tagname="login" tagprefix="uc1" %>
<%@ Register src="controls/login.ascx" tagname="login" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style1 {
        width: 100%;
        border-style: solid;
        border-width: 1px;
    }
    .auto-style6 {
        height: 107px;
    }
    .auto-style4 {
        font-size: large;
    }
    .auto-style5 {
        font-size: small;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" cellpadding="2" class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/image4.jpg" />
            </td>
            <td>
                <uc2:login ID="login2" runat="server" />
            </td>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/image5.jpg" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"><span class="auto-style4"><strong>Why Online Banking?</strong></span><strong><br class="auto-style4" /></strong><span class="auto-style5">1. Banking from anywhere.</span><br class="auto-style5" /><span class="auto-style5">2. bla bla bla</span><br class="auto-style5" /><span class="auto-style5">3. bla bla bla</span><br class="auto-style5" /><span class="auto-style5">4. bla bla bla</span></td>
            <td class="auto-style6"></td>
        </tr>
    </table>

</asp:Content>

