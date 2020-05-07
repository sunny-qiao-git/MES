CREATE TABLE [dbo].[HELP_READ] (
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [HELP_CODE] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [USER_NAME] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_DATE] datetime  NOT NULL,
  [LOGIN_NO] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [TITLE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_CODE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_INSTANCE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [URL_REFERRER] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [USER_IP] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  CONSTRAINT [PK_ECI_HELP_READ] PRIMARY KEY CLUSTERED ([GUID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
)  
ON [PRIMARY]
GO

ALTER TABLE [dbo].[HELP_READ] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'GUID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'帮助编码',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'HELP_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'USER_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'阅读时间',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'CREATE_DATE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录账户',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'LOGIN_NO'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'TITLE'