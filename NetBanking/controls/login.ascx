﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="login.ascx.cs" Inherits="controls_login" %>
<style type="text/css">


    .auto-style2 {
        width: 500px;
        background-color: #308BE4;
        color:white;
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
                                   <td>
                                      
                                       <asp:TextBox ID="txtUserLoginEmail" runat="server"></asp:TextBox>
                                   </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="width:50px">Password:</td>
                                <td> 
                                    <asp:TextBox ID="txtUserPwd" TextMode="Password" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center" Text="Login" />
                        &nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewUser.aspx">New User</asp:HyperLink>
                    </td>
                </tr>
            </table>
        

