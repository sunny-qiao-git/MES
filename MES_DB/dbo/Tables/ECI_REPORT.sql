﻿CREATE TABLE [dbo].[ECI_REPORT] (
    [GUID]          VARCHAR (36)   NOT NULL,
    [CODE]          VARCHAR (20)   NOT NULL,
    [NAME]          VARCHAR (50)   NULL,
    [MAIN_SQL]      VARCHAR (1000) NULL,
    [DTL1]          VARCHAR (50)   NULL,
    [SQL1]          VARCHAR (1000) NULL,
    [DTL2]          VARCHAR (50)   NULL,
    [SQL2]          VARCHAR (1000) NULL,
    [DTL3]          VARCHAR (50)   NULL,
    [SQL3]          VARCHAR (1000) NULL,
    [TEST_PARAM]    VARCHAR (100)  NULL,
    [CREATE_DATE]   DATETIME       NULL,
    [CREATE_USER]   VARCHAR (20)   NULL,
    [UPDATE_DATE]   DATETIME       NULL,
    [UPDATE_USER]   VARCHAR (20)   NULL,
    [STATUS]        CHAR (1)       NULL,
    [TYPE]          VARCHAR (50)   NULL,
    [MAIN]          VARCHAR (50)   NULL,
    [MEMO]          VARCHAR (500)  NULL,
    [MAP]           VARCHAR (50)   NULL,
    [PREVIEW_PARAM] VARCHAR (500)  NULL,
    [TEMPLATE_FILE] VARCHAR (500)  NULL,
    CONSTRAINT [PK_ECI_REPORT] PRIMARY KEY CLUSTERED ([CODE] ASC),
    CONSTRAINT [UK_ECI_REPORT] UNIQUE NONCLUSTERED ([GUID] ASC)
);

