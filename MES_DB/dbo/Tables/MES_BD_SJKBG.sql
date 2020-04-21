CREATE TABLE [dbo].[MES_BD_SJKBG] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BH]               VARCHAR (10)  NULL,
    [TABLEM]           VARCHAR (20)  NULL,
    [DBM]              VARCHAR (20)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_SJKBG] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '数据库表格表', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SJKBG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '数据表编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SJKBG', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '数据表名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SJKBG', @level2type = N'COLUMN', @level2name = N'TABLEM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '数据库表名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SJKBG', @level2type = N'COLUMN', @level2name = N'DBM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SJKBG', @level2type = N'COLUMN', @level2name = N'REMARK';

