CREATE TABLE [dbo].[MES_BD_GYS_GYWL] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [FGUID]            VARCHAR (36)  NULL,
    [BH]               VARCHAR (10)  NULL,
    [GYS]              VARCHAR (20)  NULL,
    [NAME]             VARCHAR (20)  NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_GYWL] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '供应商/客户子表格-供应物料', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS_GYWL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_GYS.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS_GYWL', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS_GYWL', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '供应商/客户', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS_GYWL', @level2type = N'COLUMN', @level2name = N'GYS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '供应物料名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GYS_GYWL', @level2type = N'COLUMN', @level2name = N'NAME';

