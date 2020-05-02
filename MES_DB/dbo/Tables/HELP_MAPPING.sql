CREATE TABLE [dbo].[HELP_MAPPING] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PAGE_TITLE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [PAGE_TYPE_NAME] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [HELP_CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_DATE] datetime  NULL,
  [CREATE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)  
ON [PRIMARY]
GO

ALTER TABLE [dbo].[HELP_MAPPING] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'页面标题',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'PAGE_TITLE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'页面地址',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'PAGE_TYPE_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'帮助代码',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'HELP_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'CREATE_DATE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统代码',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'SYS_CODE'