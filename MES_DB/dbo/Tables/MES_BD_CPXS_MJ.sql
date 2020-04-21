﻿CREATE TABLE [dbo].[MES_BD_CPXS_MJ] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [FGUID]            VARCHAR (36)  NULL,
    [CPXS]             VARCHAR (20)  NULL,
    [BH]               VARCHAR (10)  NULL,
    [GX]               VARCHAR (20)  NULL,
    [SCX]              VARCHAR (30)  NULL,
    [MJBH]             VARCHAR (20)  NULL,
    [MJM]              VARCHAR (20)  NULL,
    [GS]               NUMERIC (19)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_CPXS_MJ] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式子表-模具使用设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS_MJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_CPXS.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS_MJ', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS_MJ', @level2type = N'COLUMN', @level2name = N'CPXS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS_MJ', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '使用工序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS_MJ', @level2type = N'COLUMN', @level2name = N'GX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '使用生产线', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS_MJ', @level2type = N'COLUMN', @level2name = N'SCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '优先使用模具编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS_MJ', @level2type = N'COLUMN', @level2name = N'MJBH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '优先使用模具名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS_MJ', @level2type = N'COLUMN', @level2name = N'MJM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该模具单次生产本产品型式个数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS_MJ', @level2type = N'COLUMN', @level2name = N'GS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_CPXS_MJ', @level2type = N'COLUMN', @level2name = N'REMARK';

