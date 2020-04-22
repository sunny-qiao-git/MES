using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using PL.Base;
using ECI.MES.DAL;
using ECI.MES.Entity;

namespace ECI.MES.VAL
{
    public class MesBdZyVAL : BaseVAL
    {
	   private MesBdZyDAL dal = new MesBdZyDAL();
	    /// <summary>
        /// 删除验证
        /// </summary>
        /// <param name="context"></param>
        /// <param name="groupCode"></param>
       public void DeleteValidate(BLLContext context,string guid)
        {
             
        }

		/// <summary>
        /// 保存验证
        /// </summary>
        /// <param name="context"></param>
        /// <param name="eciDataGroup"></param>
        /// <param name="isAdd"></param>
        public void SaveValidate(BLLContext context,MES_BD_ZY mesBdZy, bool isAdd)
        {
            string sql = "SELECT GUID  FROM MES_BD_ZY  WHERE BH = " + cmn.SQLQ(mesBdZy.BH);
            DBHelper.CheckRepeat(sql, mesBdZy.GUID, "职员编号已存在");

            sql = "SELECT GUID  FROM MES_BD_ZY  WHERE ZYNBM = " + cmn.SQLQ(mesBdZy.ZYNBM);
            DBHelper.CheckRepeat(sql, mesBdZy.GUID, "职员内部名已存在");
            //bool exists = false;
            //if (isAdd)
            //{
            //    exists = MES_BD_ZY.DAL.Select().Where(a => a.BH = mesBdZy.BH).Exists();
            //    if (exists)
            //    {
            //        throw new AppException("职员编号" + mesBdZy.BH+"已存在");
            //    }
            //    exists = MES_BD_ZY.DAL.Select().Where(a => a.ZYNBM = mesBdZy.ZYNBM).Exists();
            //    if (exists)
            //    {
            //        throw new AppException("职员内部名" + mesBdZy.ZYNBM + "已存在");
            //    }
            //}

        }
    }

}
