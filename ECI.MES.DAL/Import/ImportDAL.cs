using ECI.MES.Entity;
using PL.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ECI.MES.DAL
{
    public class ImportDAL : BaseDAL
    {

        public ECI_FILE_INFO Get(string bizNo)
        {
            return Get(bizNo, null);
        }

        public ECI_FILE_INFO Get(string bizNo, object ts)
        {
            return ECI_FILE_INFO.DAL.Select().Where(a => a.BIZ_NO = bizNo).SingleOrDefault(ts);
        }

        #region 导入查询
        public SearchResult ImportSearch(BLLContext context, Paging paging, EntityBase queryEntity, string bizType, string bizNo)
        {
            SearchResult result = new SearchResult();

            string sql = @"SELECT A.GUID,A.BIZ_NO,A.BIZ_TYPE,A.TYPE,A.FILE_NAME
                           ,A.FILE_NAME_ORI,A.PATH,A.CREATE_DATE,A.CREATE_USER,A.SEQ
                           ,A.SAVE_DB,A.DATA_CONTENT ";
            sql += " FROM ECI_FILE_INFO A ";
            sql += " WHERE 1=1";

            string condition = "";

            condition += QueryHelper.BuildCommonSQL(queryEntity);

            condition += " AND A.BIZ_TYPE=" + cmn.SQLQ(bizType) + " AND A.BIZ_NO=" + cmn.SQLQ(bizNo);

            sql += condition;
            result = SearchHelper.Search(sql, paging);

            return result;
        }
        #endregion
    }
}
