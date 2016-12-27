<%@ Page Title="" Language="C#" MasterPageFile="~/SuperAdmin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="mainHolder">
                    <div class="mainDetails">
                        <h4 class="heading">
                           <strong> Select Bank:</strong>
                        </h4>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="ddlBankList" runat="server">
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem Value="1">SBI</asp:ListItem>
                                <asp:ListItem Value="2">HDFC</asp:ListItem>
                                <asp:ListItem Value="3">SBH</asp:ListItem>

                            </asp:DropDownList>
                           
                        </p>
                        <br />
                        <br />
                        <br />

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                         <asp:Button ID="btnButton" runat="server" Text="Submit" OnClick="btnButton_Click" />
                       <%-- <h4 class="heading">Select Login</h4>
                        <p>
                            <a href="Login.aspx" target="_blank">Customer Login</a>&nbsp;&nbsp;&nbsp;
                             <a href="AdminLogin.aspx" target="_blank">Admin Login</a>
                        </p>--%>
                    </div>
                </div>
</asp:Content>

