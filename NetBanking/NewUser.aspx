<%@ Page Title="" Language="C#" MasterPageFile="~/sbi-Admin.master" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="NewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style2 {
            height: 33px;
        }
        .auto-style1 {
            height: 29px;
        }
        .auto-style3 {
            height: 33px;
            color: #FF3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Account number<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" GroupValidation="vsubmit" ControlToValidate="txtAccountNo">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAccountNo" ErrorMessage="6 numbers" ForeColor="Red" ValidationExpression="\d{6}(-\d{6})?"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:TextBox ID="txtAccountnoPrefix" runat="server" Enabled="False" Width="24px">321</asp:TextBox>
                <asp:Label ID="Label1" runat="server" Text="-"></asp:Label>
                <asp:TextBox ID="txtAccountNo" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Confirm Account number<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" GroupValidation="vsubmit" ControlToValidate="txtConfirmAccountNo">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtAccountNo" ControlToValidate="txtConfirmAccountNo" ErrorMessage="CompareValidator" GroupValidation="vsubmit" ForeColor="#FF3300">Account number dont match</asp:CompareValidator>
            </td>
            <td>
                <asp:TextBox ID="txtAccountnoPrefix0" runat="server" Enabled="False" ReadOnly="True" Width="24px">321</asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="-"></asp:Label>
                <asp:TextBox ID="txtConfirmAccountNo" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Email-ID<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmailID" runat="server" 
ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Register" ErrorMessage="Enter Valid ID" ForeColor="Red">Enter Valid Email Id</asp:RegularExpressionValidator> 
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Password<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" GroupValidation="vsubmit" ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Confirm Password<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" GroupValidation="vsubmit" ControlToValidate="txtConfirmPassword">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="CompareValidator" GroupValidation="vsubmit" ForeColor="#FF3300">Passwords dont match</asp:CompareValidator>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Account Name<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAccountName" ErrorMessage="RequiredFieldValidator" GroupValidation="vsubmit"  ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtAccountName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Date of Birth</td>
            <td>
                
                <asp:DropDownList ID="ddlDate" runat="server" >
                                <asp:ListItem>Day</asp:ListItem>
                                <asp:ListItem Value="01">01</asp:ListItem>
                                <asp:ListItem Value="02">02</asp:ListItem>
                                <asp:ListItem Value="03">03</asp:ListItem>
                                <asp:ListItem Value="04">04</asp:ListItem>
                                <asp:ListItem Value="05">05</asp:ListItem>
                                <asp:ListItem Value="06">06</asp:ListItem>
                                
                                <asp:ListItem Value="07">07</asp:ListItem>
                                <asp:ListItem Value="08">08</asp:ListItem>
                                <asp:ListItem Value="09">09</asp:ListItem>
                                <asp:ListItem Value="10">10</asp:ListItem>
                                <asp:ListItem Value="11">11</asp:ListItem>
                                <asp:ListItem Value="12">12</asp:ListItem>
                                <asp:ListItem Value="13">13</asp:ListItem>
                                <asp:ListItem Value="14">14</asp:ListItem>
                                <asp:ListItem Value="15">15</asp:ListItem>
                                <asp:ListItem Value="16">16</asp:ListItem>
                                <asp:ListItem Value="17">17</asp:ListItem>
                                <asp:ListItem Value="18">18</asp:ListItem>
                                <asp:ListItem Value="19">19</asp:ListItem>
                                <asp:ListItem Value="20">20</asp:ListItem>
                                <asp:ListItem Value="21">21</asp:ListItem>
                                <asp:ListItem Value="22">22</asp:ListItem>
                                <asp:ListItem Value="23">23</asp:ListItem>
                                <asp:ListItem Value="24">24</asp:ListItem>
                                <asp:ListItem Value="25">25</asp:ListItem>
                                <asp:ListItem Value="26">26</asp:ListItem>
                                <asp:ListItem Value="27">27</asp:ListItem>
                                <asp:ListItem Value="28">28</asp:ListItem>
                                <asp:ListItem Value="29">29</asp:ListItem>
                                <asp:ListItem Value="30">30</asp:ListItem>
                                <asp:ListItem Value="31">31</asp:ListItem>

                </asp:DropDownList>
                <asp:DropDownList ID="ddlMonth" runat="server">
                                <asp:ListItem>Month</asp:ListItem>
                                <asp:ListItem>Jan</asp:ListItem>
                                <asp:ListItem>Feb</asp:ListItem>
                                <asp:ListItem>Mar</asp:ListItem>
                                <asp:ListItem>Apr</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>Jun</asp:ListItem>
                                <asp:ListItem>Jul</asp:ListItem>
                                <asp:ListItem>Aug</asp:ListItem>
                                <asp:ListItem>Sep</asp:ListItem>
                                <asp:ListItem>Oct</asp:ListItem>
                                <asp:ListItem>Nov</asp:ListItem>
                                <asp:ListItem>Dec</asp:ListItem>

                </asp:DropDownList>
                <asp:DropDownList ID="ddlYear" runat="server">
<asp:ListItem>1988</asp:ListItem>
<asp:ListItem>1987</asp:ListItem>
<asp:ListItem>1986</asp:ListItem>
<asp:ListItem>1985</asp:ListItem>
<asp:ListItem>1984</asp:ListItem>
<asp:ListItem>1983</asp:ListItem>
<asp:ListItem>1982</asp:ListItem>
<asp:ListItem>1981</asp:ListItem>
<asp:ListItem>1980</asp:ListItem>
<asp:ListItem>1979</asp:ListItem>
<asp:ListItem>1978</asp:ListItem>
<asp:ListItem>1977</asp:ListItem>
<asp:ListItem>1976</asp:ListItem>
<asp:ListItem>1975</asp:ListItem>
<asp:ListItem>1974</asp:ListItem>
<asp:ListItem>1973</asp:ListItem>
<asp:ListItem>1972</asp:ListItem>
<asp:ListItem>1971</asp:ListItem>
<asp:ListItem>1970</asp:ListItem>
<asp:ListItem>1969</asp:ListItem>
<asp:ListItem>1968</asp:ListItem>
<asp:ListItem>1967</asp:ListItem>
<asp:ListItem>1966</asp:ListItem>
<asp:ListItem>1965</asp:ListItem>
<asp:ListItem>1964</asp:ListItem>
<asp:ListItem>1963</asp:ListItem>
<asp:ListItem>1962</asp:ListItem>
<asp:ListItem>1961</asp:ListItem>
<asp:ListItem>1960</asp:ListItem>
<asp:ListItem>1959</asp:ListItem>
<asp:ListItem>1958</asp:ListItem>
<asp:ListItem>1957</asp:ListItem>
<asp:ListItem>1956</asp:ListItem>
<asp:ListItem>1955</asp:ListItem>
<asp:ListItem>1954</asp:ListItem>
<asp:ListItem>1953</asp:ListItem>
<asp:ListItem>1952</asp:ListItem>
<asp:ListItem>1951</asp:ListItem>
<asp:ListItem>1950</asp:ListItem>
<asp:ListItem>1949</asp:ListItem>
<asp:ListItem>1948</asp:ListItem>
<asp:ListItem>1947</asp:ListItem>
<asp:ListItem>1946</asp:ListItem>
<asp:ListItem>1945</asp:ListItem>
<asp:ListItem>1944</asp:ListItem>
<asp:ListItem>1943</asp:ListItem>
<asp:ListItem>1942</asp:ListItem>
<asp:ListItem>1941</asp:ListItem>
<asp:ListItem>1940</asp:ListItem>
<asp:ListItem>1939</asp:ListItem>
<asp:ListItem>1938</asp:ListItem>
<asp:ListItem>1937</asp:ListItem>
<asp:ListItem>1936</asp:ListItem>
<asp:ListItem>1935</asp:ListItem>
<asp:ListItem>1934</asp:ListItem>
<asp:ListItem>1933</asp:ListItem>
<asp:ListItem>1932</asp:ListItem>
<asp:ListItem>1931</asp:ListItem>
<asp:ListItem>1930</asp:ListItem>
<asp:ListItem>1929</asp:ListItem>
<asp:ListItem>1928</asp:ListItem>
<asp:ListItem>1927</asp:ListItem>
<asp:ListItem>1926</asp:ListItem>
<asp:ListItem>1925</asp:ListItem>
<asp:ListItem>1924</asp:ListItem>
<asp:ListItem>1923</asp:ListItem>
<asp:ListItem>1922</asp:ListItem>
<asp:ListItem>1921</asp:ListItem>
<asp:ListItem>1920</asp:ListItem>
<asp:ListItem>1919</asp:ListItem>
<asp:ListItem>1918</asp:ListItem>
<asp:ListItem>1917</asp:ListItem>
<asp:ListItem>1916</asp:ListItem>
<asp:ListItem>1915</asp:ListItem>
<asp:ListItem>1914</asp:ListItem>
<asp:ListItem>1913</asp:ListItem>
<asp:ListItem>1912</asp:ListItem>
<asp:ListItem>1911</asp:ListItem>
<asp:ListItem>1910</asp:ListItem>
<asp:ListItem>1909</asp:ListItem>
<asp:ListItem>1908</asp:ListItem>
<asp:ListItem>1907</asp:ListItem>
<asp:ListItem>1906</asp:ListItem>
<asp:ListItem>1905</asp:ListItem>

                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Gender</td>
            <td>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Text="Select"></asp:ListItem>
                    <asp:ListItem Text="Male"> </asp:ListItem>
                    <asp:ListItem Text="Female"></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Father/Husband Name<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtGaurdianName" ErrorMessage="RequiredFieldValidator" GroupValidation="vsubmit" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtGaurdianName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>Address<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="RequiredFieldValidator" GroupValidation="vsubmit" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>City<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCity" ErrorMessage="*" GroupValidation="vsubmit" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>State<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList1" InitialValue="0" GroupValidation="vsubmit" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style1">Pincode<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPassword" GroupValidation="vsubmit" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d{6}(-\d{6})?" GroupValidation="vsubmit" ControlToValidate="txtPincode">6-digit number</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
            </td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" ForeColor="#3333FF" OnClick="Button1_Click"/>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

