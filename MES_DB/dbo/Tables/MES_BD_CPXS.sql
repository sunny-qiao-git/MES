CREATE TABLE [dbo].[MES_BD_CPXS] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [BH]               VARCHAR (10)    NULL,
    [NAME]             VARCHAR (20)    NULL,
    [SB]               VARCHAR (10)    NULL,
    [BZDZ]             NUMERIC (19, 4) NULL,
    [BMJ]              NUMERIC (19, 6) NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_CPXS] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认商标', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS', @level2type = N'COLUMN', @level2name = N'SB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '标准单重/kg', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS', @level2type = N'COLUMN', @level2name = N'BZDZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '表面积/cm^2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS', @level2type = N'COLUMN', @level2name = N'BMJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS', @level2type = N'COLUMN', @level2name = N'REMARK';

