CREATE TABLE [dbo].[ECI_FILE_INFO] (
    [GUID]          VARCHAR (36)  NULL,
    [BIZ_NO]        VARCHAR (100) NULL,
    [BIZ_TYPE]      VARCHAR (50)  NULL,
    [TYPE]          VARCHAR (20)  NULL,
    [FILE_NAME]     VARCHAR (100) NULL,
    [FILE_NAME_ORI] VARCHAR (100) NULL,
    [PATH]          VARCHAR (500) NULL,
    [CREATE_DATE]   DATETIME      NULL,
    [CREATE_USER]   VARCHAR (50)  NULL,
    [SEQ]           INT           NULL,
    [SAVE_DB]       VARCHAR (1)   NULL,
    [DATA_CONTENT]  TEXT          NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'框架表', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ECI_FILE_INFO';

