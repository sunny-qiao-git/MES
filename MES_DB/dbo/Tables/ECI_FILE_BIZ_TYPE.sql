CREATE TABLE [dbo].[ECI_FILE_BIZ_TYPE] (
    [GUID]        VARCHAR (36)   NULL,
    [CODE]        VARCHAR (100)  NULL,
    [NAME]        VARCHAR (50)   NULL,
    [CONFIG]      VARCHAR (1000) NULL,
    [STATUS]      CHAR (1)       NULL,
    [CREATE_DATE] DATETIME       NULL,
    [CREATE_USER] VARCHAR (50)   NULL,
    [IS_DELETE]   CHAR (1)       NULL,
    [SAVE_DB]     VARCHAR (1)    NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'框架表', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ECI_FILE_BIZ_TYPE';

