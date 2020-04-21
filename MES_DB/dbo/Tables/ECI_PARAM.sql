﻿CREATE TABLE [dbo].[ECI_PARAM] (
    [ID]             VARCHAR (36)   NOT NULL,
    [GROUP_ID]       VARCHAR (36)   NOT NULL,
    [PARAM_KEY]      VARCHAR (200)  NULL,
    [PARAM_NAME]     VARCHAR (200)  NULL,
    [PARAM_VALUE]    VARCHAR (2000) NULL,
    [MEMO]           VARCHAR (200)  NULL,
    [STATUS]         CHAR (1)       NULL,
    [CREATE_USER]    VARCHAR (20)   NULL,
    [CREATE_DATE]    DATETIME       NULL,
    [UPDATE_USER]    VARCHAR (20)   NULL,
    [UPDATE_DATE]    DATETIME       NULL,
    [GROUP_CODE]     VARCHAR (20)   NULL,
    [UI_TYPE]        VARCHAR (50)   NULL,
    [UI_TYPE_CONFIG] VARCHAR (255)  NULL,
    [UI_OPTION]      VARCHAR (255)  NULL,
    [SEQ]            FLOAT (53)     NULL,
    [OPERATION_ID]   VARCHAR (36)   NULL
);

