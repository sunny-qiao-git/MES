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
    public class MesBdSbVAL : BaseVAL
    {
	   private MesBdSbDAL dal = new MesBdSbDAL();
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
        public void SaveValidate(BLLContext context,MES_BD_SB mesBdSb, bool isAdd)
        {
             
        }
    }

}
