CREATE TABLE [dbo].[MES_BD_GX] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [BH]               VARCHAR (30)    NULL,
    [NAME]             VARCHAR (30)    NULL,
    [CKCK]             VARCHAR (20)    NULL,
    [RKCK]             VARCHAR (20)    NULL,
    [CKCPQZM]          VARCHAR (30)    NULL,
    [RKCPQZM]          VARCHAR (30)    NULL,
    [BMCLYL]           VARCHAR (20)    NULL,
    [MD]               NUMERIC (19, 3) NULL,
    [YLSH]             NUMERIC (19, 2) NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_GX] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '工序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '工序编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '工序名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX', @level2type = N'COLUMN', @level2name = N'CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX', @level2type = N'COLUMN', @level2name = N'RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认出库产品前置名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX', @level2type = N'COLUMN', @level2name = N'CKCPQZM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认入库产品前置名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX', @level2type = N'COLUMN', @level2name = N'RKCPQZM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '表面处理用原料', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX', @level2type = N'COLUMN', @level2name = N'BMCLYL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该表面处理原料密度kg/cm^3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX', @level2type = N'COLUMN', @level2name = N'MD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '理论表面处理原料损耗百分比', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX', @level2type = N'COLUMN', @level2name = N'YLSH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX', @level2type = N'COLUMN', @level2name = N'REMARK';

