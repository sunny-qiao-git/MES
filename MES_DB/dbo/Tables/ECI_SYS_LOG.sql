﻿CREATE TABLE [dbo].[ECI_SYS_LOG] (
    [GUID]           VARCHAR (36)   NOT NULL,
    [USER_NAME]      VARCHAR (50)   NULL,
    [LOG_DATE]       DATETIME       NULL,
    [TYPE]           VARCHAR (20)   NULL,
    [URL]            VARCHAR (255)  NULL,
    [EVENT_TARGET]   VARCHAR (50)   NULL,
    [EVENT_ARGUMENT] VARCHAR (100)  NULL,
    [KEY_NO]         VARCHAR (100)  NULL,
    [PARAM]          VARCHAR (200)  NULL,
    [SUCCESS]        FLOAT (53)     NULL,
    [MESSAGE]        VARCHAR (2000) NULL,
    [IP]             VARCHAR (50)   NULL,
    [BROWSER]        VARCHAR (100)  NULL,
    [OS]             VARCHAR (100)  NULL,
    [PAGE_TITLE]     VARCHAR (100)  NULL,
    [FUNCTION_NAME]  VARCHAR (100)  NULL,
    [SERVICE_ID]     VARCHAR (100)  NULL,
    [EXECUTE_BEGIN]  FLOAT (53)     NULL,
    [EXECUTE_END]    FLOAT (53)     NULL,
    [COST]           FLOAT (53)     NULL,
    [SESSION_ID]     VARCHAR (50)   NULL,
    [AJAX_ACTION]    VARCHAR (30)   NULL,
    [ERROR_TYPE]     VARCHAR (10)   NULL,
    [LOGIN_NO]       VARCHAR (50)   NULL,
    [USER_COMPANY]   VARCHAR (200)  NULL,
    CONSTRAINT [PK_ECI_SYS_LOG] PRIMARY KEY CLUSTERED ([GUID] ASC)
);
