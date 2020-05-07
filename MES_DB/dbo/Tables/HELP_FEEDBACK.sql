CREATE TABLE [dbo].[HELP_FEEDBACK] (
  [FB_NO] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [BODY] text COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [STATUS] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_DATE] datetime  NOT NULL,
  [CREATE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [PAGE_URL] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [PAGE_TITLE] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [IP] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [BROWSER] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [OS] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_CODE] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_INSTANCE] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEAL_DATE] datetime  NULL,
  [DEAL_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEAL_USER_ID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [IS_DELETE] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ('N') NULL,
  [DELETE_DATE] datetime  NULL,
  [DELETE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [OPER_ID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TEL] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_USER_ID] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)  
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[HELP_FEEDBACK] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'GUID',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'FB_NO'
GO

EXEC sp_addextendedproperty
'MS_Description', N'反馈内容',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'BODY'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'反馈日期',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'CREATE_DATE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'反馈人',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'页面地址',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'PAGE_URL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'页面标题',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'PAGE_TITLE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户IP地址',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'IP'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户浏览器',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'BROWSER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户操作系统',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'OS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统编码',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'SYS_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实例编码',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'SYS_INSTANCE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'处理日期',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'DEAL_DATE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'处理人',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'DEAL_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'处理人ＩＤ',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'DEAL_USER_ID'