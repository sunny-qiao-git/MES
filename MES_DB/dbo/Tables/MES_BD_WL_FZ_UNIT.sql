CREATE TABLE [dbo].[MES_BD_WL_FZ_UNIT] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [FGUID]            VARCHAR (36)    NULL,
    [NAME]             VARCHAR (20)    NULL,
    [BH]               VARCHAR (30)    NULL,
    [UNIT]             VARCHAR (30)    NULL,
    [FZ_UNIT]          VARCHAR (30)    NULL,
    [FZ_UNIT_RATE]     NUMERIC (19, 5) NULL,
    [FZ_UNIT_JD]       INT             NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_WL_FZ_UNIT] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'MES_BD_WL.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL_FZ_UNIT', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'物料名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL_FZ_UNIT', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL_FZ_UNIT', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主计量单位', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL_FZ_UNIT', @level2type = N'COLUMN', @level2name = N'UNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'辅助计量单位', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL_FZ_UNIT', @level2type = N'COLUMN', @level2name = N'FZ_UNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'辅助计量单位对基本计量单位换算率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL_FZ_UNIT', @level2type = N'COLUMN', @level2name = N'FZ_UNIT_RATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'辅助计量单位输入精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL_FZ_UNIT', @level2type = N'COLUMN', @level2name = N'FZ_UNIT_JD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL_FZ_UNIT', @level2type = N'COLUMN', @level2name = N'REMARK';

