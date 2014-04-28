<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultsPage.aspx.cs" Inherits="Cp18EventRegistrationWeb.ResultsPage" %>
<%@ PreviousPageType VirtualPath="~/Registration.aspx" %>
<%--指定PreviousPage类型，默认Page类型--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbResult" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
