<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<%@ Register Src="~/controls/login.ascx" TagPrefix="uc1" TagName="login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  
<style type="text/css">


    .auto-style2 {
        width: 500px;
        background-color: #308BE4;
        color:white;
    }
    </style>
    <div>
    <br />

    <br />

    <br />

            <table align="center" class="auto-style2">
                <tr>
                    <td>Enter Your Account Username and Password</td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="width:50px">Username:</td>
                                   <td><input id="Text1" type="text" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="width:50px">Password:</td>
                                <td> <input id="Text2" type="text" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center" Text="Login" />
                        &nbsp;
                                           </td>
                </tr>
            </table>
        
    <br />
    <br />

    <br />

    </div>
      

</asp:Content>

