using ECI.MES.Entity;
using PL.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ECI.MES.VAL
{
    public class ImportVAL : BaseVAL
    {
        /// <summary>
        /// 删除验证
        /// </summary>
        /// <param name="context"></param>
        /// <param name="groupCode"></param>
        public void DeleteValidate(BLLContext context, string guid)
        {
            
        }

        /// <summary>
        /// 保存验证
        /// </summary>
        /// <param name="context"></param>
        /// <param name="eciDataGroup"></param>
        /// <param name="isAdd"></param>
        public void SaveValidate(BLLContext context, ECI_FILE_INFO fileINFO, bool isAdd)
        {
            if (isAdd)
            {
                
            }
            else
            {
                
            }
        }
    }
}
