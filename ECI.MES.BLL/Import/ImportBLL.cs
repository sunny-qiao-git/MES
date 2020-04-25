using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ECI.MES.DAL;
using ECI.MES.Entity;
using ECI.MES.VAL;
using PL.Base;

namespace ECI.MES.BLL
{
    public class ImportBLL : SuperBLL
    {
        private ImportDAL dal = new ImportDAL();

        private ImportVAL val = new ImportVAL();

        private static ImportBLL instance;

        public static ImportBLL Instance
        {
            get { return instance; }
        }

        static ImportBLL()
        {
            instance = new ImportBLL();
        }

        //批量导入查询
        public SearchResult ImportSearch(BLLContext context, Paging paging, EntityBase queryEntity, string bizType, string bizNo)
        {
            return dal.ImportSearch(context, paging, queryEntity, bizType, bizNo);
        }
        //批量导入查询后删除数据
        public void ImportDelete(BLLContext context, List<string> listGuid)
        {
            foreach (string guid in listGuid)
            {
                val.DeleteValidate(context, guid);
                ECI_FILE_INFO.DAL.Delete().Where(a => a.BIZ_TYPE = guid).Execute(context.ts);
            }
        }
    }
}
