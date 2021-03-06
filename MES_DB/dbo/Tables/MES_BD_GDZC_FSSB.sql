﻿CREATE TABLE [dbo].[MES_BD_GDZC_FSSB] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [FGUID]            VARCHAR (36)    NULL,
    [BH]               VARCHAR (10)    NULL,
    [GDZC]             VARCHAR (20)    NULL,
    [NAME]             VARCHAR (20)    NULL,
    [QTY]              NUMERIC (19, 2) NULL,
    [ZB]               NUMERIC (19, 3) NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_GDZC_FSSB] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '固定资产/设备子表-附属设备', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_FSSB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_GDZC', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_FSSB', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_FSSB', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应固定资产/设备名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_FSSB', @level2type = N'COLUMN', @level2name = N'GDZC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '附属设备名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_FSSB', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '附属设备数量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_FSSB', @level2type = N'COLUMN', @level2name = N'QTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '附属设备价值占比', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_FSSB', @level2type = N'COLUMN', @level2name = N'ZB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_FSSB', @level2type = N'COLUMN', @level2name = N'REMARK';

