CREATE TABLE [dbo].[MES_BD_BGWJLB] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BGM]              VARCHAR (20)  NULL,
    [BH]               VARCHAR (10)  NULL,
    [WJLBM]            VARCHAR (20)  NULL,
    [FWQWJ_PATH]       VARCHAR (50)  NULL,
    [IS_XGWJM]         CHAR (1)      NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_BGWJLB] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '表格文件类别设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BGWJLB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '使用表格名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BGWJLB', @level2type = N'COLUMN', @level2name = N'BGM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BGWJLB', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '保存文件类别名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BGWJLB', @level2type = N'COLUMN', @level2name = N'WJLBM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '服务器文件保存位置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BGWJLB', @level2type = N'COLUMN', @level2name = N'FWQWJ_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '文件名是否自动修改为表名+数据条名+文件名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BGWJLB', @level2type = N'COLUMN', @level2name = N'IS_XGWJM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_BGWJLB', @level2type = N'COLUMN', @level2name = N'REMARK';

