CREATE TABLE [dbo].[MES_BD_SCX_CPPL] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [FGUID]            VARCHAR (36)    NULL,
    [SCX]              VARCHAR (10)    NULL,
    [BH]               VARCHAR (10)    NULL,
    [CPM]              VARCHAR (20)    NULL,
    [YSCSJYLCS]        VARCHAR (10)    NULL,
    [GCSBZ]            NUMERIC (19, 3) NULL,
    [YCPJS1]           VARCHAR (10)    NULL,
    [YCPJSBZ1]         NUMERIC (19, 3) NULL,
    [YCPJS2]           VARCHAR (10)    NULL,
    [YCPJSBZ2]         NUMERIC (19, 3) NULL,
    [YCPJS3]           VARCHAR (10)    NULL,
    [YCPJSBZ3]         NUMERIC (19, 3) NULL,
    [YCPJS4]           VARCHAR (10)    NULL,
    [YCPJSBZ4]         NUMERIC (19, 3) NULL,
    [CKCK]             VARCHAR (20)    NULL,
    [RKCK]             VARCHAR (20)    NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_SCX_CPPL] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '生产线子表-产品及配料设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_SCX.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '生产线', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'SCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品/配料名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'CPM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '依生产数据用量参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'YSCSJYLCS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'GCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '依产品/配料1计算', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'YCPJS1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '依产品/配料1计算比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'YCPJSBZ1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '依产品/配料2计算', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'YCPJS2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '依产品/配料2计算比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'YCPJSBZ2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '依产品/配料3计算', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'YCPJS3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '依产品/配料3计算比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'YCPJSBZ3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '依产品/配料4计算', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'YCPJS4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '依产品/配料4计算比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'YCPJSBZ4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_CPPL', @level2type = N'COLUMN', @level2name = N'REMARK';

