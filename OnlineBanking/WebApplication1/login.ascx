<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="login.ascx.cs" Inherits="WebApplication1.login1" %>
<style type="text/css">

    .auto-style2 {
        width: 500px;
        background-color: #308BE4;
        color:white;
    }
    .auto-style3 {
        height: 26px;
    }
</style>
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
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center" Text="Login" />
                    </td>
                </tr>
            </table>
        
