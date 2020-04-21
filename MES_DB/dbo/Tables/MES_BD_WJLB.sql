CREATE TABLE [dbo].[MES_BD_WJLB] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BH]               VARCHAR (20)  NULL,
    [WJLBM]            VARCHAR (20)  NULL,
    [BCWZ]             VARCHAR (MAX) NULL,
    [DKRJ]             VARCHAR (100) NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_WJLB] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '文件类别设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WJLB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '文件类别编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WJLB', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '文件类别', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WJLB', @level2type = N'COLUMN', @level2name = N'WJLBM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认保存位置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WJLB', @level2type = N'COLUMN', @level2name = N'BCWZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认打开软件', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WJLB', @level2type = N'COLUMN', @level2name = N'DKRJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WJLB', @level2type = N'COLUMN', @level2name = N'REMARK';

