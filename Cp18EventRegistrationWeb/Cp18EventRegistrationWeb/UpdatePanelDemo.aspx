<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePanelDemo.aspx.cs" Inherits="Cp18EventRegistrationWeb.UpdatePanelDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lbAjax" runat="server" Text="Label"></asp:Label>
                    <asp:Button ID="btnAjax" runat="server" Text="Ajax Postback" OnClick="OnButtonClick" />
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="ASP.NET Postback" OnClick="OnButtonClick" />
            
        </div>
    </form>
</body>
</html>
