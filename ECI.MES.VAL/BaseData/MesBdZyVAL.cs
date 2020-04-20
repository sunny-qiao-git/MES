﻿using System;
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
            bool exists = false;
            if (mesBdZy!=null)
            {
                exists = MES_BD_ZY.DAL.Select().Where(a => a.GH = mesBdZy.GH).Exists();
                if (exists)
                {
                    throw new AppException("工号"+mesBdZy.GH+"已存在");
                }
            }
            
        }
    }

}
