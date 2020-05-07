<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmHelpTepList.aspx.cs" Inherits="AppHelp_HelpTip_frmHelpTepList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="../../Themes/Default/eci.css" rel="stylesheet" />
    <!-- #include File="../../App/Common/PageLoad.aspx" -->
    <link href="../../EasyUI/themes/default/easyui.css" rel="stylesheet" />
    <link href="../../EasyUI/themes/icon.css" rel="stylesheet" />
    <script src="../../EasyUI/jquery.easyui.min.js" type="text/javascript"></script>
    <title></title>
    <script type="text/javascript">
        $(function () {
            if ($(".Wdate").length > 0) { $("head").append("<script src='../../PlugIn/My97DatePicker/WdatePicker.js'><" + "/script>"); }
        })
    </script>

    <script type="text/javascript">
        function deleteAction(obj) {
            msg.confirm("确定要执行删除操作吗?", function () {
                postback(obj);
            }, { validate: true });
        }

        function addAction() {

            var catalogId = $("#hidCatalogId").val();

            if (catalogId == "") {
                msg.warning("请先选择目录");
                return;
            }

            var url = "frmEciTipEdit.aspx?catalogId=" + catalogId;

            eci.open(url, { width: 800, height: 500 });
        }

        function editAction(obj) {
            var key = $(obj).getKey();

            var url = "frmEciTipEdit.aspx?key=" + key;



            eci.open(url, {});
        }

        function showId(key) {


            var url = "frmEciTipEdit.aspx?key=" + key;

            eci.open(url, {});
        }

        function viewAction(obj) {
            var code = $(obj).getField("CODE");
            var url = "../../AppHelp/Tip/frmEciTipView.aspx?Code=" + code;

            eci.open(url);
        }

        var hasSaved = false;

        function search() {
            if (hasSaved) {
                postback("btnSearch");
            }
        }

        function newWindow() {
            var url = window.location.href;
            eci.open(url, { full: true });
        }


        function importAction() {

            var catalogId = $("#hidCatalogId").val();
            var url = "Import.aspx?catalogId=" + catalogId;
            eci.dialog("导入提示信息", url, { width: 600, height: 300 });

        }



    </script>
</head>
<body>
    <form id="form1" runat="server">
        <input runat="server" type="hidden" id="hidCatalogId" />
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
                            <asp:ETitle runat="server" ID="pagetitle" Title="操作提示列表"></asp:ETitle>
                        </td>
                    </tr>

                    <tr style="height: 100%">
                        <td style="width: 200px; vertical-align: top;">
                            <div class="easyui-panel fitH" style="padding: 5px; border-top: 0px;">
                                <ul id="tt"></ul>
                            </div>
                        </td>
                        <td class="function-edit" style="vertical-align: top;">
                            <div id="divQuery" style="width: 100%;">
                                <table id="tbQuery" class="grid" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <th style="width: 10%"></th>
                                        <th style="width: 20%"></th>
                                        <th style="width: 10%"></th>
                                        <th style="width: 20%"></th>
                                        <th style="width: 10%"></th>
                                        <th style="width: 20%"></th>

                                    </tr>
                                    <tr>
                                        <td class="lbl">编码</td>
                                        <td>
                                            <asp:ETextBox runat="server" ID="txtCode" DataField="CODE" Query="A.BH|string|like" Width="85%"></asp:ETextBox></td>
                                        <td class="lbl">标题</td>
                                        <td>
                                            <asp:ETextBox runat="server" ID="txtName" DataField="NAME" Query="A.NAME|string|like" Width="85%"></asp:ETextBox></td>
                                        <td class="lbl">登录系统</td>
                                        <td>
                                            <asp:EChoose runat="server" ID="txtSysName" ReadOnly="true" DataField="SYS_CODE" Query="A.SYS_CODE|string|like" Width="85%"></asp:EChoose></td>

                                    </tr>
                                    <tr>
                                        <td class="lbl">包含下级目录</td>
                                        <td>
                                            <asp:ECheckBox runat="server" ID="chkIncludeNext" DataField="NEXT" Width="85%"></asp:ECheckBox></td>
                                        <td class="lbl">操作说明</td>
                                        <td>
                                            <asp:ECombox runat="server" ID="cboNoteFlag" DataField="NOTE_FLAG" Query="A.NOTE_FLAG|string|like" Width="85%"></asp:ECombox></td>
                                        <td class="lbl"></td>
                                        <td></td>

                                    </tr>
                                    <tr>
                                        <td class="center" colspan="6">
                                            <asp:EButton runat="server" ID="btnSearch" Text="查询" Icon="find" />
                                            <asp:EButton runat="server" ID="btnReset" IsClient="true" Text="重置" Icon="reset" OnClientClick="eci.reset('tbQuery');" /></td>
                                    </tr>
                                </table>
                            </div>
                            <div id="toolbar">
                                <asp:EButton runat="server" ID="btnAdd" Text="新增" Icon="Add" OnClientClick="addAction();" IsClient="true" />
                            </div>
                            <div id="datagrid">

                                <asp:EGridView ID="gvData" Layout="divQuery,toolbar,pagetitle" runat="server"
                                    FitWindow="true" EnableSorting="True" EnableSelect="false" EnablePaging="true" EnableClickSelectRow="true"
                                    Width="1000px" KeyField="GUID" HAlign="center" OnClick="editAction">
                                    <Columns>

                                        <asp:TemplateField HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150">
                                            <ItemTemplate>
                                                <asp:EButton runat="server" ID="btnEdit" Text="编辑" IsClient="true" Icon="edit" OnClientClick="editAction(this);" />
                                                <asp:EButton runat="server" Icon="Delete" ID="btnDelete" Text="删除" IsClient="true" OnClientClick="return deleteAction(this);" CommandArgument='<%#Eval("GUID")%>' OnClick="btnDelete_Click" />
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:BoundField DataField="CODE" HeaderText="系统代码" SortExpression="CODE" ItemStyle-Width="150"></asp:BoundField>
                                        <asp:BoundField DataField="NAME" HeaderText="编码" SortExpression="NAME" ItemStyle-Width="150"></asp:BoundField>
                                        <asp:BoundField DataField="CODE" HeaderText="名称" SortExpression="CODE" ItemStyle-Width="150"></asp:BoundField>
                                        <asp:BoundField DataField="REMARK" HeaderText="描述" SortExpression="REMARK" ItemStyle-Width="150"></asp:BoundField>
                                        <asp:BoundField DataField="REMARK" HeaderText="目录" SortExpression="REMARK" ItemStyle-Width="150"></asp:BoundField>
                                        <asp:BoundField DataField="REMARK" HeaderText="创建日期" SortExpression="REMARK" ItemStyle-Width="150"></asp:BoundField>
                                        <asp:BoundField DataField="REMARK" HeaderText="创建人" SortExpression="REMARK" ItemStyle-Width="150"></asp:BoundField>
                                    </Columns>
                                </asp:EGridView>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

    </form>
</body>
</html>
