CREATE TABLE [dbo].[MES_BD_ZQ] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BH]               VARCHAR (20)  NULL,
    [ZQM]              VARCHAR (20)  NULL,
    [JZYF]             VARCHAR (20)  NULL,
    [QSRQ]             DATETIME      NULL,
    [JZRQ]             DATETIME      NULL,
    [SJTS]             NUMERIC (19)  NULL,
    [IS_JZ]            CHAR (1)      NULL,
    [JZR]              VARCHAR (10)  NULL,
    [SHR]              VARCHAR (10)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_ZQ] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '账期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '账期名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ', @level2type = N'COLUMN', @level2name = N'ZQM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '账期结账月份', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ', @level2type = N'COLUMN', @level2name = N'JZYF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '账期起始日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ', @level2type = N'COLUMN', @level2name = N'QSRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '账期结账日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ', @level2type = N'COLUMN', @level2name = N'JZRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该账期实际天数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ', @level2type = N'COLUMN', @level2name = N'SJTS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '是否已经结账', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ', @level2type = N'COLUMN', @level2name = N'IS_JZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '结账人', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ', @level2type = N'COLUMN', @level2name = N'JZR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '审核人', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ', @level2type = N'COLUMN', @level2name = N'SHR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZQ', @level2type = N'COLUMN', @level2name = N'REMARK';

