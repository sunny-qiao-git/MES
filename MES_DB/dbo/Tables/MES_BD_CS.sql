﻿CREATE TABLE [dbo].[MES_BD_CS] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BH]               VARCHAR (20)  NULL,
    [NAME]             VARCHAR (20)  NULL,
    [JD]               NUMERIC (19)  NULL,
    [BZCSZ]            VARCHAR (10)  NULL,
    [DZXX]             VARCHAR (10)  NULL,
    [PDXX]             VARCHAR (10)  NULL,
    [ZCXX]             VARCHAR (10)  NULL,
    [ZCSX]             VARCHAR (10)  NULL,
    [PGSX]             VARCHAR (10)  NULL,
    [GZSX]             VARCHAR (10)  NULL,
    [PDYS]             VARCHAR (10)  NULL,
    [DYS]              VARCHAR (10)  NULL,
    [CDYS]             VARCHAR (10)  NULL,
    [ZCYS]             VARCHAR (10)  NULL,
    [PGYS]             VARCHAR (10)  NULL,
    [GYS]              VARCHAR (10)  NULL,
    [CGYS]             VARCHAR (10)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_CS] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '参数编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '参数名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '参数精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'JD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '标准参数值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'BZCSZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '低值下限', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'DZXX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '偏低下限', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'PDXX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '正常下限', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'ZCXX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '正常上限', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'ZCSX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '偏高上限', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'PGSX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '高值上限', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'GZSX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '偏低颜色', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'PDYS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '低颜色', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'DYS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '超低颜色', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'CDYS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '正常颜色', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'ZCYS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '偏高颜色', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'PGYS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '高颜色', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'GYS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '超高颜色', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'CGYS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CS', @level2type = N'COLUMN', @level2name = N'REMARK';

