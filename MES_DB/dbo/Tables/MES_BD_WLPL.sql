CREATE TABLE [dbo].[MES_BD_WLPL] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BH]               VARCHAR (50)  NULL,
    [SB_CODE]          VARCHAR (50)  NULL,
    [NAME]             VARCHAR (50)  NULL,
    [QNAME]            VARCHAR (50)  NULL,
    [CODE]             VARCHAR (20)  NULL,
    [CPXS1]            VARCHAR (20)  NULL,
    [CPXS1_LEVEL]      VARCHAR (30)  NULL,
    [REMARK1]          VARCHAR (300) NULL,
    [CPXS2]            VARCHAR (20)  NULL,
    [CPXS2_LEVEL]      VARCHAR (30)  NULL,
    [REMARK2]          VARCHAR (300) NULL,
    [CPXS3]            VARCHAR (20)  NULL,
    [CPXS3_LEVEL]      VARCHAR (30)  NULL,
    [REMARK3]          VARCHAR (300) NULL,
    [TJLB1]            VARCHAR (20)  NULL,
    [TJLB2]            VARCHAR (20)  NULL,
    [TJLB3]            VARCHAR (20)  NULL,
    [TJLB4]            VARCHAR (20)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_WLPL] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料品类', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料品类编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '商标', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'SB_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料品类名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料品类全名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'QNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料品类代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应产品型式1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'CPXS1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式1优先级别', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'CPXS1_LEVEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式1备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'REMARK1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应产品型式2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'CPXS2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式2优先级别', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'CPXS2_LEVEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式2备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'REMARK2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应产品型式3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'CPXS3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式3优先级别', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'CPXS3_LEVEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式3备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'REMARK3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '统计类别1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'TJLB1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '统计类别2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'TJLB2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '统计类别3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'TJLB3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '统计类别4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'TJLB4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WLPL', @level2type = N'COLUMN', @level2name = N'REMARK';

