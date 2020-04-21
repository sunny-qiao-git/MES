﻿CREATE TABLE [dbo].[ECI_PARAM_GROUP] (
    [ID]            VARCHAR (100) NOT NULL,
    [GROUP_NAME]    VARCHAR (100) NOT NULL,
    [GROUP_CODE]    VARCHAR (100) NULL,
    [STATUS]        CHAR (1)      NULL,
    [PARENTID]      VARCHAR (36)  NULL,
    [MEMO]          VARCHAR (100) NULL,
    [CREATE_USER]   VARCHAR (36)  NULL,
    [CREATE_DATE]   DATETIME      NULL,
    [UPDATE_USER]   VARCHAR (36)  NULL,
    [UPDATE_DATE]   DATETIME      NULL,
    [ADMIN_LOCK]    CHAR (1)      NULL,
    [SYS_CODE]      VARCHAR (100) NULL,
    [INSTANCE_CODE] VARCHAR (100) NULL,
    [SEQ]           INT           NULL
);

