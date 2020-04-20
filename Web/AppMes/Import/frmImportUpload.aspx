<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmImportUpload.aspx.cs" Inherits="AppMes_Import_frmImportUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>导入页面</title>
    <link href="../../Themes/Default/eci.css" rel="stylesheet" />
    <!-- #include File="../../App/Common/PageLoad.aspx" -->
    <script type="text/javascript">
     
         function fileUpload(obj) {
             var bizNo = $("#hidGuid").val();
             var bizType = $("#hidType").val();
             eci.dialog("上传附件", "../../App/File/FileUploadEdit.aspx?bizType=" + bizType+ "&bizNo=" + bizNo);
            // eci.fileUpload(bizNo, bizType, options);

        }
        function fileView(obj) {
            var bizNo = $("#hidGuid").val();
            var bizType = $("#hidType").val();
            eci.dialog("附件预览", "../../App/File/FileUpload.aspx?bizType=" + bizType + "&bizNo=" + bizNo);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ETitle runat="server" ID="pagetitle"></asp:ETitle>
        <input type="hidden" id="hidType" runat="server" />
        <input type="hidden" id="hidGuid" runat="server" />

        <input type="hidden" id="showrow" value="1" runat="server" />

        <table id="tbQuery" class="grid" cellpadding="0" cellspacing="0">
            <tr>
                        <th style="width: 25%"></th>
                        <th style="width: 25%"></th>
                        <th style="width: 25%"></th>
                        <th style="width: 25%"></th>

            </tr>
            
                <tr>
                    <th colspan="4">先点击上传打开上传窗口，将文件传至服务器后点击确定导入。上传前请查看当前服务器文件是否为空，若不为空请删除之后再操作</th>
                </tr>
            <tr>
                <th></th>
                <th>  <asp:EButton runat="server" ID="btnFileUpload" Text="上传" IsClient="true" Icon="import" OnClientClick="fileUpload(this);" />
       </th>
                <th>  <asp:EButton runat="server" ID="btnView" Text="查看" IsClient="true" Icon="book_open" OnClientClick="fileView(this);" />
      </th>
                <th></th>
            </tr>
            <tr>
                
                <th colspan="4">
        <asp:EButton ID="EButton2" runat="server" Text="确定上传" OnClick="NSKUploadBtn_Click" CancelLoading="true" /></th>
             
            </tr>
<%--            <tr>
                <th colspan="4">
                    
                    <asp:CheckBox ID="CheckBox1" runat="server" text="以当前的“公司编码”作为“申报单位代码”导入数据"/>
                </th>
            </tr>--%>
            
            <asp:Label runat="server" ID="lbl" />
        </table>

    </form>
</body>
</html>
