CREATE TABLE [dbo].[MES_BD_JZ] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [QZRQ]             VARCHAR (10)  NULL,
    [RQ]               DATETIME      NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_JZ] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '结账设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '账期起/终止日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JZ', @level2type = N'COLUMN', @level2name = N'QZRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JZ', @level2type = N'COLUMN', @level2name = N'RQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JZ', @level2type = N'COLUMN', @level2name = N'REMARK';

