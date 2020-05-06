using PL.Base;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using ECI.MES.Entity;
using ECI.MES.DAL;
using ECI.MES.VAL;
using System.Data.SqlClient;

namespace ECI.MES.BLL
{
    public class MesBdZyBLL : SuperBLL
    {
        private MesBdZyDAL dal = new MesBdZyDAL();
        private MesBdZyVAL val = new MesBdZyVAL();

        private static MesBdZyBLL instance;

        public static MesBdZyBLL Instance
        {
            get { return instance; }
        }

        static MesBdZyBLL()
        {
            instance = new MesBdZyBLL();
        }
        public DataTable GetLower(BLLContext context, string id)
        {
            return dal.GetLower(context, id);
        }
        public DataTable Load(BLLContext context, string guid)
        {
            return dal.Load(context, guid);
        }

        public SearchResult Search(BLLContext context, Paging paging, EntityBase queryEntity)
        {
            return dal.Search(context, paging, queryEntity);
        }

        public void Delete(BLLContext context, List<string> listGuid)
        {


            foreach (string guid in listGuid)
            {
                val.DeleteValidate(context, guid);
                MES_BD_ZY.DAL.Delete().Where(a => a.GUID = guid).Execute(context.ts);
            }
        }

        public EntityBase Save(BLLContext context, EntityBase saveEntity, bool isAdd)
        {

            MES_BD_ZY mesBdZy = new MES_BD_ZY(MES_BD_ZY.Fields.GUID);
            mesBdZy.Data = saveEntity.Data;
            mesBdZy.EffectDataFields();

            val.SaveValidate(context, mesBdZy, isAdd);

            if (isAdd)
            {
                if (context.Type != "tree")
                {
                    mesBdZy.GUID = Guid.NewGuid().ToString("N");
                }
                mesBdZy.AddUserInfo(context, isAdd);

                mesBdZy.Validate();
                mesBdZy.Insert(context.Transaction);
            }
            else
            {
                mesBdZy.AddUserInfo(context, isAdd);
                mesBdZy.NotSave("CREATE_DATE,CREATE_USER");

                mesBdZy.Validate();
                mesBdZy.Update(context.Transaction);
            }

            return mesBdZy;

        }


        #region 电子导入
        public void MesBdZyImport(BLLContext context, EntityBase saveEntity, DataSet ds)
        {
            string errMess = "", bh = "",zy="";
            int rowCount = 1,rowCount2 = 1; ;
            MES_BD_ZY head = null;
            MES_BD_ZY_STATUS body = null;

            DataTable dt = new DataTable();
            dt = ds.Tables[0];

            #region 新增列
            dt.Columns.Add("IMP_ID", typeof(System.String));
            dt.Columns.Add("GUID", typeof(System.String));
            dt.Columns.Add("FGUID", typeof(System.String));
            dt.Columns.Add("CREATE_USER", typeof(System.String));
            dt.Columns.Add("CREATE_USER_NAME", typeof(System.String));
            dt.Columns.Add("CREATE_DATE", typeof(System.DateTime));
            #endregion

            string impId = Guid.NewGuid().ToString();
            foreach (DataRow dr in dt.Rows)
            {
                dr["IMP_ID"] = impId;
                dr["GUID"] = Guid.NewGuid().ToString();
                dr["CREATE_USER"] = context.UserInfo.UserId;
                dr["CREATE_USER_NAME"] = context.UserInfo.UserName;
                dr["CREATE_DATE"] = DateTime.Now.ToString("yyyy-MM-dd");
                
                rowCount++;
                
                #region 必填项
                if (dr["职员编号"].ToString().NullOrEmpty())
                {
                    errMess += "<BR>第" + rowCount + "行:职员编号不能为空!";
                }
                if (dr["工号"].ToString().NullOrEmpty())
                {
                    errMess += "<BR>第" + rowCount + "行:工号不能为空!";
                }
                if (dr["职员代码"].ToString().NullOrEmpty())
                {
                    errMess += "<BR>第" + rowCount + "行:职员代码不能为空!";
                }
                if (dr["职员名"].ToString().NullOrEmpty())
                {
                    errMess += "<BR>第" + rowCount + "行:职员名不能为空!";
                }
                
                if (!errMess.NullOrEmpty())
                {
                    throw new AppException(errMess);
                }
                #endregion

                if (bh != dr["职员编号"].ToString())
                {
                    #region 表头
                    bh = dr["职员编号"].ToString();

                    head = new MES_BD_ZY();
                    head.EffectDataFields();
                    head.BH = bh;
                    head.PARENTID = dr["上级职员编号"].ToString();
                    head.GH = dr["工号"].ToString();
                    head.ZYNBM = dr["职员内部名"].ToString();
                    head.CODE = dr["职员代码"].ToString();
                    head.NAME = dr["职员名"].ToString();
                    head.STATUS = dr["职员状态"].ToString();
                    head.SSCJ = dr["所属车间"].ToString();
                    head.TEL = dr["移动电话"].ToString();
                    head.ID_CARD = dr["身份证号码"].ToString();
                    head.KHYH = dr["开户银行"].ToString();
                    head.KHM = dr["开户名"].ToString();
                    head.BANK = dr["银行账号"].ToString();
                    head.WHCD = dr["文化程度"].ToString();
                    head.BYXX = dr["毕业学校"].ToString();
                    head.BYZY = dr["毕业专业"].ToString();
                    head.BYNF = dr["毕业年份"].ToString();
                    head.PROVINCE = dr["省份"].ToString();
                    head.CITY = dr["城市"].ToString(); 
                    head.ADDRESS = dr["住址"].ToString();
                    head.MAIL = dr["电子邮件"].ToString();
                    head.REMARK = dr["备注"].ToString();
                    head.JS1 = dr["家属1"].ToString();
                    head.JS1_RELATION = dr["家属1关系"].ToString();
                    head.JS1_TEL = dr["家属1电话"].ToString();
                    head.JS1_ADDRESS = dr["家属1住址"].ToString();
                    head.JS2 = dr["家属2"].ToString();
                    head.JS2_RELATION = dr["家属2关系"].ToString();
                    head.JS2_TEL = dr["家属2电话"].ToString();
                    head.JS2_ADDRESS = dr["家属2住址"].ToString();
                    head.JS3 = dr["家属3"].ToString();
                    head.JS3_RELATION = dr["家属3关系"].ToString();
                    head.JS3_TEL = dr["家属3电话"].ToString();
                    head.JS3_ADDRESS = dr["家属3住址"].ToString();
                    head.JS4 = dr["家属4"].ToString();
                    head.JS4_RELATION = dr["家属4关系"].ToString();
                    head.JS4_TEL = dr["家属4电话"].ToString();
                    head.JS4_ADDRESS = dr["家属4住址"].ToString();
                    head.CAR_NO = dr["车牌号"].ToString();
                    head.CAR_TYPE = dr["车辆类型"].ToString();

                    head.Validate();
                    val.SaveValidate(null, head, true);
                    #endregion
                }

            }
            DataTable dt2 = new DataTable();
            dt2 = ds.Tables[1];
            #region 新增列
            dt2.Columns.Add("IMP_ID", typeof(System.String));
            dt2.Columns.Add("GUID", typeof(System.String));
            //dt2.Columns.Add("FGUID", typeof(System.String));
            dt2.Columns.Add("CREATE_USER", typeof(System.String));
            dt2.Columns.Add("CREATE_USER_NAME", typeof(System.String));
            dt2.Columns.Add("CREATE_DATE", typeof(System.DateTime));
            #endregion
            foreach (DataRow dr in dt2.Rows)
            {
                dr["IMP_ID"] = impId;
                dr["GUID"] = Guid.NewGuid().ToString();
                dr["CREATE_USER"] = context.UserInfo.UserId;
                dr["CREATE_USER_NAME"] = context.UserInfo.UserName;
                dr["CREATE_DATE"] = DateTime.Now.ToString("yyyy-MM-dd");

                rowCount2++;
                #region 必填项
                if (dr["职员编号"].ToString().NullOrEmpty())
                {
                    errMess += "<BR>第" + rowCount + "行:职员编号不能为空!";
                }
                //if (dr["职员"].ToString().NullOrEmpty())
                //{
                //    errMess += "<BR>第" + rowCount + "行:职员不能为空!";
                //}

                if (!errMess.NullOrEmpty())
                {
                    throw new AppException(errMess);
                }
                if (string.IsNullOrEmpty(dr["入职日期"] as string)) dr["入职日期"] = null;
                if (string.IsNullOrEmpty(dr["离职日期"] as string)) dr["离职日期"] = null;
                #endregion

                if (zy != dr["职员编号"].ToString())
                {
                    #region 表体
                    body = new MES_BD_ZY_STATUS();
                    body.EffectDataFields();
                    body.BH = dr["职员编号"].ToString();
                    body.NAME = dr["职员"].ToString();
                    body.RZ_DATE = dr["入职日期"].ToString().ToDateNullable();
                    body.LZ_DATE = dr["离职日期"].ToString().ToDateNullable();
                    body.SSCJ = dr["所属车间"].ToString();
                    body.SSCSCX = dr["所属生产线"].ToString();
                    body.ZW = dr["职务"].ToString();
                    body.GZ = dr["工种"].ToString();
                    body.SSBZ = dr["所属班组"].ToString();
                    body.GZJJGZBL = dr["工种计件工资比例"].ToString().ToDoubleNullOrEmptyToZero();
                    body.REMARK = dr["备注"].ToString();
                    body.Validate();
                    #endregion
                }

            }

            SqlBulkCopyByDataTable(context, "MES_BD_ZY_IMP", "MES_BD_ZY_STATUS_IMP", dt,dt2, impId);

            #region 调用存储过程写入状态表
            var po = new PO("SP_MES_BD_ZY_IMP");
            po["P_IMP_ID"] = impId;
            po.ExecuteProcedure(context.Transaction, "");

            #endregion
        }
        #endregion

        /// <summary>
        /// SqlBulkCopy批量插入数据
        /// </summary>
        /// <param name="connectionStr">链接字符串</param>
        /// <param name="dataHeadTableName">表名</param>
        /// <param name="sourceDataTable">数据源</param>
        /// <param name="batchSize">一次事务插入的行数</param>
        public void SqlBulkCopyByDataTable(BLLContext context, string dataHeadTableName,string dataBodyTableName, DataTable sourceDataHead,DataTable sourceDataBody, string impId, int batchSize = 100000)
        {
            string connectionStr = EciServer.ConnectionString;
            using (SqlConnection Con = new SqlConnection(connectionStr))
            {
                Con.Open();
                using (SqlTransaction st = Con.BeginTransaction())
                {
                    #region Head
                    using (SqlBulkCopy sqlBulkCopyHead = new SqlBulkCopy(Con, SqlBulkCopyOptions.Default, st))
                    {
                        try
                        {
                            #region Head
                            sqlBulkCopyHead.DestinationTableName = dataHeadTableName;
                            sqlBulkCopyHead.BatchSize = batchSize;

                            #region HeadColumnMappings
                            sqlBulkCopyHead.ColumnMappings.Add("IMP_ID", "IMP_ID");
                            sqlBulkCopyHead.ColumnMappings.Add("GUID", "GUID");
                            sqlBulkCopyHead.ColumnMappings.Add("CREATE_USER", "CREATE_USER");
                            sqlBulkCopyHead.ColumnMappings.Add("CREATE_USER_NAME", "CREATE_USER_NAME");
                            sqlBulkCopyHead.ColumnMappings.Add("CREATE_DATE", "CREATE_DATE");

                            sqlBulkCopyHead.ColumnMappings.Add("职员编号", "BH");
                            sqlBulkCopyHead.ColumnMappings.Add("上级职员编号", "PARENTID");
                            sqlBulkCopyHead.ColumnMappings.Add("工号", "GH");
                            sqlBulkCopyHead.ColumnMappings.Add("职员内部名", "ZYNBM");
                            sqlBulkCopyHead.ColumnMappings.Add("职员代码", "CODE");
                            sqlBulkCopyHead.ColumnMappings.Add("职员名", "NAME");
                            sqlBulkCopyHead.ColumnMappings.Add("职员状态", "STATUS");
                            sqlBulkCopyHead.ColumnMappings.Add("所属车间", "SSCJ");
                            sqlBulkCopyHead.ColumnMappings.Add("移动电话", "TEL");
                            sqlBulkCopyHead.ColumnMappings.Add("身份证号码", "ID_CARD");
                            sqlBulkCopyHead.ColumnMappings.Add("开户银行", "KHYH");
                            sqlBulkCopyHead.ColumnMappings.Add("开户名", "KHM");
                            sqlBulkCopyHead.ColumnMappings.Add("银行账号", "BANK");
                            sqlBulkCopyHead.ColumnMappings.Add("文化程度", "WHCD");
                            sqlBulkCopyHead.ColumnMappings.Add("毕业学校", "BYXX");
                            sqlBulkCopyHead.ColumnMappings.Add("毕业专业", "BYZY");
                            sqlBulkCopyHead.ColumnMappings.Add("毕业年份", "BYNF");
                            sqlBulkCopyHead.ColumnMappings.Add("省份", "PROVINCE");
                            sqlBulkCopyHead.ColumnMappings.Add("城市", "CITY");
                            sqlBulkCopyHead.ColumnMappings.Add("住址", "ADDRESS");
                            sqlBulkCopyHead.ColumnMappings.Add("电子邮件", "MAIL");
                            sqlBulkCopyHead.ColumnMappings.Add("备注", "REMARK");
                            sqlBulkCopyHead.ColumnMappings.Add("家属1", "JS1");
                            sqlBulkCopyHead.ColumnMappings.Add("家属1关系", "JS1_RELATION");
                            sqlBulkCopyHead.ColumnMappings.Add("家属1电话", "JS1_TEL");
                            sqlBulkCopyHead.ColumnMappings.Add("家属1住址", "JS1_ADDRESS");
                            sqlBulkCopyHead.ColumnMappings.Add("家属2", "JS2");
                            sqlBulkCopyHead.ColumnMappings.Add("家属2关系", "JS2_RELATION");
                            sqlBulkCopyHead.ColumnMappings.Add("家属2电话", "JS2_TEL");
                            sqlBulkCopyHead.ColumnMappings.Add("家属2住址", "JS2_ADDRESS");
                            sqlBulkCopyHead.ColumnMappings.Add("家属3", "JS3");
                            sqlBulkCopyHead.ColumnMappings.Add("家属3关系", "JS3_RELATION");
                            sqlBulkCopyHead.ColumnMappings.Add("家属3电话", "JS3_TEL");
                            sqlBulkCopyHead.ColumnMappings.Add("家属3住址", "JS3_ADDRESS");
                            sqlBulkCopyHead.ColumnMappings.Add("家属4", "JS4");
                            sqlBulkCopyHead.ColumnMappings.Add("家属4关系", "JS4_RELATION");
                            sqlBulkCopyHead.ColumnMappings.Add("家属4电话", "JS4_TEL");
                            sqlBulkCopyHead.ColumnMappings.Add("家属4住址", "JS4_ADDRESS");
                            sqlBulkCopyHead.ColumnMappings.Add("车牌号", "CAR_NO");
                            sqlBulkCopyHead.ColumnMappings.Add("车辆类型", "CAR_TYPE");
                            #endregion
                            #endregion

                            //DBHelper.ExecuteNoneQuery("delete from MES_BD_ZY_IMP", context.ts);
                            sqlBulkCopyHead.WriteToServer(sourceDataHead);
                        }
                        catch (Exception ex)
                        {
                            throw new AppException(ex.Message);
                        }
                    }
                    #endregion

                    #region Body
                    using (SqlBulkCopy sqlBulkBodyCopy = new SqlBulkCopy(Con, SqlBulkCopyOptions.Default, st))
                    {
                        try
                        {
                            sqlBulkBodyCopy.DestinationTableName = dataBodyTableName;
                            sqlBulkBodyCopy.BatchSize = batchSize;

                            #region BodyColumnMappings 

                            sqlBulkBodyCopy.ColumnMappings.Add("职员编号", "BH");
                            //sqlBulkBodyCopy.ColumnMappings.Add("工号", "GH");
                            //sqlBulkBodyCopy.ColumnMappings.Add("FGUID", "FGUID");
                            sqlBulkBodyCopy.ColumnMappings.Add("职员", "NAME");
                            sqlBulkBodyCopy.ColumnMappings.Add("入职日期", "RZ_DATE");
                            sqlBulkBodyCopy.ColumnMappings.Add("离职日期", "LZ_DATE");
                            sqlBulkBodyCopy.ColumnMappings.Add("所属车间", "SSCJ");
                            sqlBulkBodyCopy.ColumnMappings.Add("所属生产线", "SSCSCX");
                            sqlBulkBodyCopy.ColumnMappings.Add("职务", "ZW");
                            sqlBulkBodyCopy.ColumnMappings.Add("工种", "GZ");
                            sqlBulkBodyCopy.ColumnMappings.Add("所属班组", "SSBZ");
                            sqlBulkBodyCopy.ColumnMappings.Add("工种计件工资比例", "GZJJGZBL");
                            sqlBulkBodyCopy.ColumnMappings.Add("备注", "REMARK");
                            sqlBulkBodyCopy.ColumnMappings.Add("IMP_ID", "IMP_ID");
                            sqlBulkBodyCopy.ColumnMappings.Add("GUID", "GUID");
                            sqlBulkBodyCopy.ColumnMappings.Add("CREATE_USER", "CREATE_USER");
                            sqlBulkBodyCopy.ColumnMappings.Add("CREATE_USER_NAME", "CREATE_USER_NAME");
                            sqlBulkBodyCopy.ColumnMappings.Add("CREATE_DATE", "CREATE_DATE");
                            #endregion

                            //DBHelper.ExecuteNoneQuery("delete from MES_BD_ZY_IMP", context.ts);
                            //DBHelper.ExecuteNoneQuery("delete from MES_BD_ZY_STATUS_IMP", context.ts);
                            sqlBulkBodyCopy.WriteToServer(sourceDataBody);
                        }
                        catch (Exception ex)
                        {
                            throw new AppException(ex.Message);
                        }
                    }
                    #endregion

                    st.Commit();
                }
                Con.Close();
            }
        }
    }
}
