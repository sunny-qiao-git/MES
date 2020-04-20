using ECI.MES.BLL;
using ECI.MES.ServiceList;
using PL.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ECI.MES.SO
{
    public partial class ImportSearch : BaseSO
    {
        public override void Execute(EciContext context)
        {
            this.ServiceId = MESService.ImportSearch;

            string bizType = context.Request["BIZ_TYPE"].ToString();
            string bizNo = context.Request["BIZ_NO"].ToString();

            SearchResult result = ImportBLL.Instance.ImportSearch(context.BLLContext, context.Request.Paging, context.Request.Entity, bizType, bizNo);

            SearchHelper.ConvertToContext(context, result);
        }
    }
}
