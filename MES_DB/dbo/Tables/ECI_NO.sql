﻿CREATE TABLE [dbo].[ECI_NO] (
    [GUID]        VARCHAR (36)  NOT NULL,
    [TYPE_NAME]   VARCHAR (200) NOT NULL,
    [START_NO]    VARCHAR (20)  NOT NULL,
    [CURRENT_NO]  VARCHAR (50)  NOT NULL,
    [TYPE_DESC]   VARCHAR (200) NULL,
    [CREATE_DATE] DATETIME      NULL,
    [UPDATE_DATE] DATETIME      NULL,
    CONSTRAINT [PK_ECI_NO] PRIMARY KEY CLUSTERED ([TYPE_NAME] ASC, [START_NO] ASC),
    CONSTRAINT [UK_ECI_NO] UNIQUE NONCLUSTERED ([GUID] ASC)
);
