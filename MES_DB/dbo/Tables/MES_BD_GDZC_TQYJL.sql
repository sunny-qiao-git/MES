﻿CREATE TABLE [dbo].[MES_BD_GDZC_TQYJL] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [FGUID]            VARCHAR (36)  NULL,
    [BH]               VARCHAR (10)  NULL,
    [GDZC]             VARCHAR (20)  NULL,
    [TYRQ]             DATETIME      NULL,
    [QYRQ]             DATETIME      NULL,
    [TQYYY]            VARCHAR (200) NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_GDZC_TQYJL] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '固定资产/设备子表-停启用记录', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_TQYJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_GDZC', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_TQYJL', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_TQYJL', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应固定资产/设备名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_TQYJL', @level2type = N'COLUMN', @level2name = N'GDZC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '停用日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_TQYJL', @level2type = N'COLUMN', @level2name = N'TYRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '启用日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_TQYJL', @level2type = N'COLUMN', @level2name = N'QYRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '停启用原因', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_TQYJL', @level2type = N'COLUMN', @level2name = N'TQYYY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_TQYJL', @level2type = N'COLUMN', @level2name = N'REMARK';

