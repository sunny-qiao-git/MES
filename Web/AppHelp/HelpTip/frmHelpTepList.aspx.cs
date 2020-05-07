using ECI.MES.ServiceList;
using PL.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AppHelp_HelpTip_frmHelpTepList : QueryPage
{
    private string catelogid
    {
        get { return this.hidCatalogId.Value; }
        set { this.hidCatalogId.Value = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.catelogid = PageHelper.Request("fguid");

            if (this.catelogid.HasValue())
            {
                this.Search();
            }
        }
    }
    public override void QuerySetting(EciRequest request)
    {
        request.ServiceId = MESService.MesBdZyStatusSearch;

        request.Entity = new EntityBase();
        request.Entity.GetBindingData();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string key = btn.CommandArgument;

        EciRequest request = new EciRequest(MESService.MesBdZyStatusDelete);

        request.ListKey = new List<string>() { key };

        SOA.Execute(request);

        EAlert.Tip("删除执行成功");

        this.Search();
    }
}