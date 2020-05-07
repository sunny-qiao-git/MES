<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmHelpTipEdit.aspx.cs" Inherits="AppMes_HelpTip_frmHelpTipEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div id="root">
            <div class="workarea">
                <table style="height: 100%; width: 100%;" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <div class="toolbar">
                                <asp:EButton runat="server" Text="全部展开" Width="90" ID="btnExpandAll" Icon="application_put" IsClient="true" OnClientClick="expandAll()" />
                                <asp:EButton runat="server" Text="全部折叠" Width="90" ID="btnCollapseAll" Icon="application_osx_get" IsClient="true" OnClientClick="collapseAll()" />
                            </div>
                        </td>
                        <td>
                            <div class="toolbar function-edit" style="border-left: 1px;">
                                <input type="hidden" id="hidRootId" runat="server" />
                                <input type="hidden" id="hidKey" runat="server" />

                                <asp:EButton runat="server" Text="新增" ID="btnAdd" Icon="add" IsClient="true" OnClientClick="append()" />
                                <asp:EButton runat="server" Text="保存" ID="btnSave" Icon="save" IsClient="true" OnClientClick="save()" />
                                <%--<asp:EButton runat="server" Text="删除" ID="btnDeleteIt" Icon="delete" IsClient="true" OnClientClick="deleteIt()" />--%>
                                <asp:EButton runat="server" Text="下载模板" ID="btnDown" Icon="excel" IsClient="true" OnClientClick="excelDownload()" />
                                <asp:EButton runat="server" Text="导入" ID="btnImp" Icon="excel" IsClient="true" OnClientClick="excelUpload()" />
                            </div>
                        </td>
                    </tr>

                    <tr style="height: 100%">
                        <td style="width: 200px; vertical-align: top;">
                            <div class="easyui-panel fitH" style="padding: 5px; border-top: 0px;">
                                <ul id="tt"></ul>
                            </div>
                        </td>
                        <td class="function-edit" style="vertical-align: top;">
                            <div style="padding: 1px 0px 0px 1px; margin: 0px; border-bottom: 1px solid #95B8E7; border-right: 1px solid #95B8E7; overflow-y: auto; vertical-align: top;">
                                <div class="pagetitle">职员</div>
                                <uc1:ascxEdit runat="server" ID="ascxEdit" />
                                <div style="margin: 2px;"></div>
                            </div>
                            <div style="border-right: 1px solid #95B8E7;" class="fitH" layout="148">
                                <iframe runat="server" id="tabStatus" width="100%" height="100%"></iframe>
                                <%--<asp:ETab runat="server" ID="tabZy" ActiveTabIndex="0">
                                    <asp:ETabItem runat="server" ID="tabStatus" Title="职员工种及状态" Frame="true"></asp:ETabItem>
                                    <asp:ETabItem runat="server" ID="tabDoc" Title="文件录入" Frame="true"></asp:ETabItem>
                                </asp:ETab>--%>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
