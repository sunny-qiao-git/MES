﻿CREATE TABLE [dbo].[MES_BD_UNIT] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BH]               VARCHAR (30)  NULL,
    [NAME]             VARCHAR (20)  NULL,
    [UNIT_FH]          VARCHAR (20)  NULL,
    [CODE]             VARCHAR (20)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_UNIT] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计量单位', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_UNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计量单位编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_UNIT', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计量单位名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_UNIT', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计量单位符号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_UNIT', @level2type = N'COLUMN', @level2name = N'UNIT_FH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计量单位代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_UNIT', @level2type = N'COLUMN', @level2name = N'CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_UNIT', @level2type = N'COLUMN', @level2name = N'REMARK';

