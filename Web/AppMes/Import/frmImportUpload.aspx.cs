using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using PL.Base;
using PL.UI.Controls;
using System.Data;
using System.Web.UI;
using System.IO;
using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using System.Web;
using ECI.MES.ServiceList;
using ECI.MES.Entity;
using ECI.MES.UI;

public partial class AppMes_Import_frmImportUpload : BasePage
{


    private string Type
    {
        get { return this.hidType.Value; }
        set { this.hidType.Value = value; }
    }
    private string Guid
    {
        get { return this.hidGuid.Value; }
        set { this.hidGuid.Value = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            this.Init();
        }
    }
    protected void Init()
    {

        this.Type = PageHelper.Request("Type");
        this.Guid = PageHelper.Request("Guid");
        switch (this.Type)
        {
            case "ZY":
                this.pagetitle.Title = "职员导入";
                break;
            case "QT":

                this.pagetitle.Title = "其他导入";
                break;
            default:
                break;
        }
    }
    protected DataTable GetFileInfoData()
    {
        EciRequest request = new EciRequest(MESService.ImportSearch);
        request["BIZ_TYPE"] = "ZY";
        request["BIZ_NO"] = Guid;

        EciResponse response = SOA.Execute(request);
        DataTable dt = response.DataTable;
        return dt;
    }

    protected void NSKUploadBtn_Click(object sender, EventArgs e)
    {
        DataTable dt = GetFileInfoData();//获取服务器文件路径
        dt.Columns.Add("UPLOAD_PATH");
        if (dt.Rows.Count < 1)
        {

            return;
        }
        ConvertServerPathToLocal(dt);//将服务器路径转化为本地路径
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            string IsXls = Path.GetExtension(dt.Rows[i]["UPLOAD_PATH"].ToString().ToLower());//System.IO.Path.GetExtension获得文件的扩展名

            //DataTable data = ExcelToDataTable(dt.Rows[i]["UPLOAD_PATH"].ToString(), IsXls, 0);//取出导入表格
            DataSet ds = ExcelToDataTable(dt.Rows[i]["UPLOAD_PATH"].ToString(), IsXls);
            DyUpload(ds);
        }
    }
    /// <summary>
    /// 导入
    /// </summary>
    /// <param name="datatable"></param>
    protected void DyUpload(DataSet ds)
    {

        MES_BD_ZY saveEntity = new MES_BD_ZY();
        //DataSet hzqdDateSet = new DataSet();
        //hzqdDateSet.Tables.Add(datatable);
        //新增表头数据
        EciRequest request = new EciRequest(MESService.MesBdZyImport);
        request.Entity = saveEntity;
        request.DataSet = ds;

        EciResponse response = SOA.Execute(request);
        response.Message.Tip();

    }
    /// <summary>
    /// Excel转换成DataTable（.xls）
    /// </summary>
    /// <param name="filePath">Excel文件路径</param>
    /// <returns></returns>
    public static DataSet ExcelToDataTable(string filePath, string IsXls)
    {
        DataSet ds = new DataSet();
        //ds.Clear();
        DataTable dt = null;

        #region
        //DataTable dt = null;
        //DataSet ds = new DataSet();
        //using (var file = new FileStream(filePath, FileMode.Open, FileAccess.Read))
        //{
        //    if (IsXls == ".xlsx")
        //    {
        //        var hssfworkbook = new XSSFWorkbook(file);
        //        int inns = hssfworkbook.NumberOfSheets;
        //        for (int si = 0; si < inns; si++)
        //        {
        //            dt = new DataTable();
        //            var sheet = hssfworkbook.GetSheetAt(si);
        //            for (var j = 0; j < 100; j++)
        //            {
        //                dt.Columns.Add(Convert.ToChar(((int)'A') + j).ToString());
        //            }
        //            var rows = sheet.GetRowEnumerator();
        //            while (rows.MoveNext())
        //            {
        //                var row = (XSSFRow)rows.Current;
        //                DataRow dr = dt.NewRow();
        //                for (var i = 0; i < row.LastCellNum; i++)
        //                {
        //                    var cell = row.GetCell(i);
        //                    if (cell == null)
        //                    {
        //                        dr[i] = null;
        //                    }
        //                    else
        //                    {
        //                        switch (cell.CellType)
        //                        {
        //                            case CellType.Blank:
        //                                dr[i] = "";
        //                                break;
        //                            case CellType.Boolean:
        //                                dr[i] = cell.BooleanCellValue;
        //                                break;
        //                            case CellType.Numeric:
        //                                dr[i] = cell.ToString();
        //                                break;
        //                            case CellType.String:
        //                                dr[i] = cell.StringCellValue;
        //                                break;
        //                            case CellType.Error:
        //                                dr[i] = cell.ErrorCellValue;
        //                                break;
        //                            case CellType.Formula:
        //                                try
        //                                {
        //                                    dr[i] = cell.NumericCellValue;
        //                                }
        //                                catch
        //                                {
        //                                    dr[i] = cell.StringCellValue;
        //                                }
        //                                break;
        //                            default:
        //                                dr[i] = "=" + cell.CellFormula;
        //                                break;
        //                        }
        //                    }
        //                }
        //                dt.Rows.Add(dr);
        //            }
        //            ds.Tables.Add(dt);
        //        }
        //    }
        //    else
        //    {
        //        var hssfworkbook = new HSSFWorkbook(file);

        //        int inns = hssfworkbook.NumberOfSheets;
        //        for (int si = 0; si < inns; si++)
        //        {
        //            dt = new DataTable();
        //            var sheet = hssfworkbook.GetSheetAt(si);
        //            for (var j = 0; j < 100; j++)
        //            {
        //                dt.Columns.Add(Convert.ToChar(((int)'A') + j).ToString());
        //            }
        //            var rows = sheet.GetRowEnumerator();
        //            while (rows.MoveNext())
        //            {
        //                var row = (HSSFRow)rows.Current;
        //                DataRow dr = dt.NewRow();
        //                for (var i = 0; i < row.LastCellNum; i++)
        //                {
        //                    var cell = row.GetCell(i);
        //                    if (cell == null)
        //                    {
        //                        dr[i] = null;
        //                    }
        //                    else
        //                    {
        //                        switch (cell.CellType)
        //                        {
        //                            case CellType.Blank:
        //                                dr[i] = "";
        //                                break;
        //                            case CellType.Boolean:
        //                                dr[i] = cell.BooleanCellValue;
        //                                break;
        //                            case CellType.Numeric:
        //                                dr[i] = cell.ToString();
        //                                break;
        //                            case CellType.String:
        //                                dr[i] = cell.StringCellValue;
        //                                break;
        //                            case CellType.Error:
        //                                dr[i] = cell.ErrorCellValue;
        //                                break;
        //                            case CellType.Formula:
        //                                try
        //                                {
        //                                    dr[i] = cell.NumericCellValue;
        //                                }
        //                                catch
        //                                {
        //                                    dr[i] = cell.StringCellValue;
        //                                }
        //                                break;
        //                            default:
        //                                dr[i] = "=" + cell.CellFormula;
        //                                break;
        //                        }
        //                    }
        //                }
        //                dt.Rows.Add(dr);
        //            }
        //            ds.Tables.Add(dt);

        //        }
        //    }
        //}
        //return ds;
        #endregion

        #region new
        ExcelHelp eh=new ExcelHelp(filePath);
        int sheet=eh.ReturnSheetList().Count;
        for(int i=0;i<sheet;i++)
        {
            dt = new DataTable();
            dt=eh.ExcelToDataTable(i);
            ds.Tables.Add(dt);
        }
        return ds;
        #endregion
    }

    /// <summary>
    /// 将上传文件中的路径字段由服务器路径转为本地路径
    /// </summary>
    /// <param name="dt">上传文件数据</param>
    protected void ConvertServerPathToLocal(DataTable dt)
    {
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            string sss = System.AppDomain.CurrentDomain.SetupInformation.ApplicationBase;//获取根目录
            sss = sss.Substring(0, sss.Length - 1);
            dt.Rows[i]["UPLOAD_PATH"] = sss + dt.Rows[i]["PATH"].ToString();
        }
    }


}