﻿using PL.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using ECI.MES.BLL;
using ECI.MES.ServiceList;

namespace ECI.MES.SO
{
    public partial class  MesBdKqjSearch : BaseSO
     {
        public override void  Execute(EciContext context)
        {
              this.ServiceId = MESService.MesBdKqjSearch;

              SearchResult result= MesBdKqjBLL.Instance.Search(context.BLLContext,context.Request.Paging, context.Request.Entity);

              SearchHelper.ConvertToContext(context, result);
        }     
    }
}