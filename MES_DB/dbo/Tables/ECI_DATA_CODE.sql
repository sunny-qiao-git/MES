﻿CREATE TABLE [dbo].[ECI_DATA_CODE] (
    [GROUP_CODE]  VARCHAR (100)  NOT NULL,
    [KEY_NAME]    VARCHAR (100)  NULL,
    [KEY_VALUE]   VARCHAR (100)  NOT NULL,
    [ID]          VARCHAR (100)  NOT NULL,
    [STATUS]      CHAR (1)       NULL,
    [MEMO]        VARCHAR (4000) NULL,
    [UDF1]        VARCHAR (200)  NULL,
    [UDF2]        VARCHAR (100)  NULL,
    [UDF3]        VARCHAR (100)  NULL,
    [UDF4]        VARCHAR (100)  NULL,
    [CREATE_DATE] DATETIME       NULL,
    [SEQ]         INT            NULL,
    [CREATE_USER] VARCHAR (36)   NULL,
    [UPDATE_DATE] DATETIME       NULL,
    [UPDATE_USER] VARCHAR (36)   NULL,
    [ADMIN_LOCK]  CHAR (1)       NULL,
    CONSTRAINT [PK_ECI_DATA_CODE] PRIMARY KEY CLUSTERED ([GROUP_CODE] ASC, [KEY_VALUE] ASC)
);

