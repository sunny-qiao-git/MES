<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HelpTip.aspx.cs" Inherits="AppMes_Demo_HelpTip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="root">
            <asp:ETitle runat="server" ID="pagetitle" Title="导出离线资源"></asp:ETitle>

            <div id="toolbar" class="toolbar">
              <asp:EButton runat="server" ID="btnSave" Text="导出离线资源"  OnClick="btnExport_Click" Icon="save" />

            </div>
        </div>
    </form>
</body>
</html>
