﻿CREATE TABLE [dbo].[ECI_DATA_GROUP] (
    [GROUP_NAME]  VARCHAR (100) NOT NULL,
    [ID]          VARCHAR (100) NOT NULL,
    [STATUS]      CHAR (1)      NULL,
    [MEMO]        VARCHAR (100) NULL,
    [GROUP_CODE]  VARCHAR (100) NOT NULL,
    [CREATE_USER] VARCHAR (36)  NULL,
    [CREATE_DATE] DATETIME      NULL,
    [UPDATE_USER] VARCHAR (36)  NULL,
    [UPDATE_DATE] DATETIME      NULL,
    [ADMIN_LOCK]  CHAR (1)      NULL,
    CONSTRAINT [PK_ECI_DATA_GROUP] PRIMARY KEY CLUSTERED ([GROUP_CODE] ASC)
);

