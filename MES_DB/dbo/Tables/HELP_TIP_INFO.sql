﻿CREATE TABLE [dbo].[HELP_TIP_INFO] (
  [GUID] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CATALOG_ID] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SYS_CODE] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME] varchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NOTE] text COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] char(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_DATE] datetime  NOT NULL,
  [CREATE_USER] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UPDATE_DATE] datetime  NOT NULL,
  [UPDATE_USER] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)  
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[HELP_TIP_INFO] SET (LOCK_ESCALATION = TABLE)