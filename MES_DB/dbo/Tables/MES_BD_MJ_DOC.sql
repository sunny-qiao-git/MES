CREATE TABLE [dbo].[MES_BD_MJ_DOC] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [FGUID]            VARCHAR (36)  NULL,
    [BH]               VARCHAR (30)  NULL,
    [NAME]             VARCHAR (20)  NULL,
    [FILE_TYPE]        VARCHAR (20)  NULL,
    [DOC]              VARCHAR (300) NULL,
    [DOC_PATH]         VARCHAR (MAX) NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_MJ_DOC] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'MES_BD_MJ.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DOC', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DOC', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'模具名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DOC', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '文件类别', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DOC', @level2type = N'COLUMN', @level2name = N'FILE_TYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '文件名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DOC', @level2type = N'COLUMN', @level2name = N'DOC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '文件保存位置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DOC', @level2type = N'COLUMN', @level2name = N'DOC_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_DOC', @level2type = N'COLUMN', @level2name = N'REMARK';

