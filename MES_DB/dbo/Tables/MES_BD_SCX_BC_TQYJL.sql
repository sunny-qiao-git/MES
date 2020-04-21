CREATE TABLE [dbo].[MES_BD_SCX_BC_TQYJL] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [FGUID]            VARCHAR (36)  NULL,
    [SCX_GUID]         VARCHAR (36)  NULL,
    [SCX]              VARCHAR (20)  NULL,
    [BCM]              VARCHAR (20)  NULL,
    [QY_DATE]          DATETIME      NULL,
    [TY_DATE]          DATETIME      NULL,
    [QY_YY]            VARCHAR (20)  NULL,
    [TY_YY]            VARCHAR (20)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_SCX_BC_TQYJL] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '生产线子表-班次设置子表-停启用记录', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_TQYJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_SCX_BC.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_TQYJL', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_SCX.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_TQYJL', @level2type = N'COLUMN', @level2name = N'SCX_GUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应生产线', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_TQYJL', @level2type = N'COLUMN', @level2name = N'SCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应班次名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_TQYJL', @level2type = N'COLUMN', @level2name = N'BCM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '启用日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_TQYJL', @level2type = N'COLUMN', @level2name = N'QY_DATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '停用日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_TQYJL', @level2type = N'COLUMN', @level2name = N'TY_DATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '启用原因', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_TQYJL', @level2type = N'COLUMN', @level2name = N'QY_YY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '停用原因', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_TQYJL', @level2type = N'COLUMN', @level2name = N'TY_YY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_TQYJL', @level2type = N'COLUMN', @level2name = N'REMARK';

