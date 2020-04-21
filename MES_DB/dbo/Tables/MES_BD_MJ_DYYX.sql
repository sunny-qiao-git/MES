CREATE TABLE [dbo].[MES_BD_MJ_DYYX] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [FGUID]            VARCHAR (36)  NULL,
    [BH]               VARCHAR (20)  NULL,
    [MJM]              VARCHAR (20)  NULL,
    [SXM]              VARCHAR (20)  NULL,
    [SXSL]             NUMERIC (19)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_MJ_DYYX] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具子表-模具对应用芯信息', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DYYX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_MJ.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DYYX', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DYYX', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DYYX', @level2type = N'COLUMN', @level2name = N'MJM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '使用砂芯名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DYYX', @level2type = N'COLUMN', @level2name = N'SXM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '使用砂芯数量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DYYX', @level2type = N'COLUMN', @level2name = N'SXSL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DYYX', @level2type = N'COLUMN', @level2name = N'REMARK';

