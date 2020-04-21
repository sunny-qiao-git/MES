CREATE TABLE [dbo].[MES_BD_DB] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [BH]               VARCHAR (10)    NULL,
    [NAME]             VARCHAR (20)    NULL,
    [WZ]               VARCHAR (20)    NULL,
    [BL]               NUMERIC (19, 2) NULL,
    [STATUS]           VARCHAR (5)     NULL,
    [QYRQ]             DATETIME        NULL,
    [TYRQ]             DATETIME        NULL,
    [JLPCBFB]          VARCHAR (10)    NULL,
    [CPSJ]             DATETIME        NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_DB] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电表设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电表编码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电表名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电表位置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB', @level2type = N'COLUMN', @level2name = N'WZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电表倍率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB', @level2type = N'COLUMN', @level2name = N'BL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电表状态', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电表启用日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB', @level2type = N'COLUMN', @level2name = N'QYRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电表停用日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB', @level2type = N'COLUMN', @level2name = N'TYRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电表计量偏差百分比', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB', @level2type = N'COLUMN', @level2name = N'JLPCBFB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电表默认查表时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB', @level2type = N'COLUMN', @level2name = N'CPSJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_DB', @level2type = N'COLUMN', @level2name = N'REMARK';

