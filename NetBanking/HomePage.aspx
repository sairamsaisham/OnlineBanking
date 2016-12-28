<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 2px solid #FF00FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <br />   
     <br />
    <div>
        <h4>Select Login</h4>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Customer Login</asp:HyperLink>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AdminLogin.aspx">Admin Login</asp:HyperLink>
    </div>
    <br />
        <br />
        <br />
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
    
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1" OnActiveViewChanged="MultiView1_ActiveViewChanged">
        <asp:View ID="View1" runat="server">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/image1.jpg" Height="200px" Width="200px"/>
            <asp:Button ID="Button2" runat="server" Text="Next" CommandName="NextView"/>
        </asp:View>
        <asp:View ID="View2" runat="server">

            <asp:Button ID="Button5" runat="server" Text="Prev" CommandName="PrevView"/>

            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/image2.jpg" Height="200px" Width="200px" />
            <asp:Button ID="Button3" runat="server" CommandName="NextView" Text="Next" />
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:Button ID="Button6" runat="server" CommandName="PrevView" Text="Prev" />
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/image3.jpg" Height="200px" Width="200px" />
            <asp:Button ID="Button1" runat="server" Text="Next" CommandName="NextView"/>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <asp:Button ID="Button7" runat="server" CommandName="PrevView" Text="Prev" />
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/image4.jpg" Height="200px" Width="200px" />
            <asp:Button ID="Button4" runat="server" CommandName="NextView" Text="Next" />
        </asp:View>
        <asp:View ID="View5" runat="server">
            <asp:Button ID="Button8" runat="server" CommandName="PrevView" Text="Prev" />
            <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/image5.jpg" Height="200px" Width="200px" />
        </asp:View>
    </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
     <br />
  
</asp:Content>

