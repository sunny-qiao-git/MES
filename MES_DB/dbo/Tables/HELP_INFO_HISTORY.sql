﻿CREATE TABLE [dbo].[HELP_INFO_HISTORY] (
  [OPER_TYPE] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [OPER_DATE] datetime  NULL,
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TITLE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [BODY] text COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_DATE] datetime  NULL,
  [CREATE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_DATE] datetime  NULL,
  [UPDATE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CATALOG_ID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [READ_COUNT] int  NULL,
  [OPER_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [AUTO_ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL
)  
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[HELP_INFO_HISTORY] SET (LOCK_ESCALATION = TABLE)