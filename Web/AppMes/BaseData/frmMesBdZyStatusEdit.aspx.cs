﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PL.Base;
using PL.UI.Controls;
using ECI.MES.ServiceList;
using ECI.MES.Entity;
using ECI.MES.UI;


public partial class AppMes_BaseData_frmMesBdZyStatusEdit : BasePage
{
    private string key
    {
        get { return this.hidKey.Value; }
        set { this.hidKey.Value = value; }
    }
    private string fguid
    {
        get { return this.hidFguid.Value; }
        set { this.hidFguid.Value = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            this.key = PageHelper.Request("key");
            this.fguid = PageHelper.Request("fguid");
            if (this.key.HasValue())
            {
                LoadRecord();
            }
            else
            {
                LoadHeadRecord();
            }
        }
    }
    private void LoadHeadRecord()
    {
        EciRequest request = new EciRequest(MESService.MesBdZyLoad);
        request.Key = this.fguid;

        EciResponse response = SOA.Execute(request);

        MES_BD_ZY data = response.DataTable.ToEntity<MES_BD_ZY>();

        if (!data.IsNull())
        {
            txtName.Text = data.NAME;
        }
    }
    private void LoadRecord()
    {
        EciRequest request = new EciRequest(MESService.MesBdZyStatusLoad);
        request.Key = this.key;

        EciResponse response = SOA.Execute(request);

        MES_BD_ZY_STATUS data = response.DataTable.ToEntity<MES_BD_ZY_STATUS>();

        if (!data.IsNull())
        {
            this.Bind(data);
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        EciRequest request = new EciRequest(MESService.MesBdZyStatusSave);

        request.IsAdd = this.key.NullOrEmpty();

        MES_BD_ZY_STATUS saveEntity = new MES_BD_ZY_STATUS();

        request.Entity = saveEntity;

        saveEntity.Data = this.GetEntityFromUI().Data;

        saveEntity.GUID = this.key;
        if (request.IsAdd)
        {
            saveEntity.FGUID = this.fguid;
        }

        EciResponse response = SOA.Execute(request);

        MES_BD_ZY_STATUS data = response.Entity.Upgrade<MES_BD_ZY_STATUS>();

        if (request.IsAdd)
        {
            this.key = data.GUID;

            //this.btnAdd.Enabled = true;

            //this.txtCreateDate.Text = DateTime.Now.ToFullString();
            //this.txtCreateUser.Text = this.UserInfo.UserName;

        }

        //this.txtUpdateDate.Text = DateTime.Now.ToFullString();
        //this.txtUpdateUser.Text = this.UserInfo.UserName;

        response.Message.Tip();
    }
}