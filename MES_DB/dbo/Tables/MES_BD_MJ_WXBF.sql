CREATE TABLE [dbo].[MES_BD_MJ_WXBF] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [FGUID]            VARCHAR (36)    NULL,
    [BH]               VARCHAR (20)    NULL,
    [MJM]              VARCHAR (29)    NULL,
    [WXNRM]            VARCHAR (20)    NULL,
    [PDSCLXM]          VARCHAR (10)    NULL,
    [PDSCE]            NUMERIC (19, 3) NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_MJ_WXBF] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具子表-模具维修及报废生产量设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_WXBF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_MJ.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_WXBF', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_WXBF', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_WXBF', @level2type = N'COLUMN', @level2name = N'MJM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '维修内容名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_WXBF', @level2type = N'COLUMN', @level2name = N'WXNRM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '判断生产量项目', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_WXBF', @level2type = N'COLUMN', @level2name = N'PDSCLXM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '判断生产额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_WXBF', @level2type = N'COLUMN', @level2name = N'PDSCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_WXBF', @level2type = N'COLUMN', @level2name = N'REMARK';

