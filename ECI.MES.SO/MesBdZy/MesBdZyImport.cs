using ECI.MES.BLL;
using ECI.MES.ServiceList;
using PL.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ECI.MES.SO
{
    public class MesBdZyImport : BaseSO
    {
        public override void Execute(EciContext context)
        {
            this.ServiceId = MESService.MesBdZyImport;

            EntityBase saveEntity = context.Request.Entity;
            bool isAdd = context.Request.IsAdd;

            MesBdZyBLL.Instance.MesBdZyImport(context.BLLContext, saveEntity, context.Request.DataSet);

            context.Response.Message = "导入成功";

        }
    }
}
