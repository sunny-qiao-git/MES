CREATE TABLE [dbo].[MES_BD_SCX_FP] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [FGUID]            VARCHAR (36)    NULL,
    [SCX]              VARCHAR (20)    NULL,
    [BH]               VARCHAR (10)    NULL,
    [FPM]              VARCHAR (10)    NULL,
    [HLLBL]            NUMERIC (19, 3) NULL,
    [HLLRKCK]          VARCHAR (3)     NULL,
    [EJPBL]            NUMERIC (19, 3) NULL,
    [EJPCLGX]          VARCHAR (3)     NULL,
    [EJPRKCK]          VARCHAR (10)    NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_SCX_FP] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '生产线子表-废品设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_SCX.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应生产线名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP', @level2type = N'COLUMN', @level2name = N'SCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP', @level2type = N'COLUMN', @level2name = N'FPM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '转为回炉料比例', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP', @level2type = N'COLUMN', @level2name = N'HLLBL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '转为回炉料入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP', @level2type = N'COLUMN', @level2name = N'HLLRKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '转为二级品比例', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP', @level2type = N'COLUMN', @level2name = N'EJPBL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '二级片处理工序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP', @level2type = N'COLUMN', @level2name = N'EJPCLGX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '转为二级品入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP', @level2type = N'COLUMN', @level2name = N'EJPRKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_FP', @level2type = N'COLUMN', @level2name = N'REMARK';

