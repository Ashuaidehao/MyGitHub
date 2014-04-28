<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Cp18EventRegistrationWeb.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbEvent" runat="server" Text="Event"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="drpEvent" runat="server">
                        <asp:ListItem Value="Introduction ti ASP.NET"></asp:ListItem>
                        <asp:ListItem Value="Introduction to Windows Azure"></asp:ListItem>
                        <asp:ListItem Value="Take off to .NET 4.0"></asp:ListItem>
                    </asp:DropDownList></td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbFirst" runat="server" Text="First name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFirstname" ErrorMessage="请填写First Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbLast" runat="server" Text="Last name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastname" ErrorMessage="请填写Last Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbEmail" runat="server" Text="Email:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="请填写Email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="不是合法的Email格式" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btn_Submit" runat="server" OnClick="btn_Submit_Click" Text="Submit" PostBackUrl="~/ResultsPage.aspx" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="lbResult" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
