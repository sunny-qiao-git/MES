CREATE TABLE [dbo].[MES_BD_BZ] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BH]               VARCHAR (30)  NULL,
    [NAME]             VARCHAR (30)  NULL,
    [CODE]             VARCHAR (300) NULL,
    [GZHSFS]           VARCHAR (30)  NULL,
    [REMARK]           VARCHAR (200) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    [IS_SDKQ]          CHAR (1)      NULL,
    [IS_QYCQ]          CHAR (1)      NULL,
    CONSTRAINT [PK_MES_BD_BZ] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '班组', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '班组编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BZ', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '班组名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BZ', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '班组代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BZ', @level2type = N'COLUMN', @level2name = N'CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '班组工资核算方式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BZ', @level2type = N'COLUMN', @level2name = N'GZHSFS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BZ', @level2type = N'COLUMN', @level2name = N'REMARK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'是否手动考勤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BZ', @level2type = N'COLUMN', @level2name = N'IS_SDKQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'手动考勤是否默认全员出勤', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BZ', @level2type = N'COLUMN', @level2name = N'IS_QYCQ';

