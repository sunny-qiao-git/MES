CREATE TABLE [dbo].[MES_BD_GYS] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BH]               VARCHAR (10)  NULL,
    [NAME]             VARCHAR (30)  NULL,
    [FULL_NAME]        VARCHAR (30)  NULL,
    [LXR1]             VARCHAR (10)  NULL,
    [LXDH1]            VARCHAR (20)  NULL,
    [LXR2]             VARCHAR (10)  NULL,
    [LXDH2]            VARCHAR (20)  NULL,
    [LXR3]             VARCHAR (10)  NULL,
    [LXDH3]            VARCHAR (20)  NULL,
    [LXR4]             VARCHAR (10)  NULL,
    [LXDH4]            VARCHAR (20)  NULL,
    [LXR5]             VARCHAR (10)  NULL,
    [LXDH5]            VARCHAR (20)  NULL,
    [RATE]             NUMERIC (19)  NULL,
    [COUNTRY]          VARCHAR (10)  NULL,
    [PROVINCE]         VARCHAR (10)  NULL,
    [CITY]             VARCHAR (10)  NULL,
    [ADDRESS]          VARCHAR (30)  NULL,
    [IS_QYXE]          CHAR (1)      NULL,
    [XE]               VARCHAR (10)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_GYS] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '供应商/客户', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '供应商/客户编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '供应商/客户名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '供应商/客户全名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'FULL_NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '联系人1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'LXR1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '联系电话1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'LXDH1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '联系人2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'LXR2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '联系电话2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'LXDH2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '联系人3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'LXR3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '联系电话3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'LXDH3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '联系人4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'LXR4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '联系电话4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'LXDH4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '联系人5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'LXR5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '联系电话5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'LXDH5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '税率(%)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'RATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '所属国家', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'COUNTRY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '所属省份', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'PROVINCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '所属城市', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'CITY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '地址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'ADDRESS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '是否启用限额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'IS_QYXE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '限额(应收款限额为正,应付款限额为负)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'XE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS', @level2type = N'COLUMN', @level2name = N'REMARK';

