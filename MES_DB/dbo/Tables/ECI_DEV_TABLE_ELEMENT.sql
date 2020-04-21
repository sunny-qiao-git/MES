CREATE TABLE [dbo].[ECI_DEV_TABLE_ELEMENT] (
    [GUID]                   VARCHAR (36)   NULL,
    [TABLE_GUID]             VARCHAR (36)   NULL,
    [CODE]                   VARCHAR (50)   NULL,
    [MAIN_ALIAS]             VARCHAR (400)  NULL,
    [PHYSICAL_TYPE]          VARCHAR (200)  NULL,
    [SQL_ATTRIBUTE]          VARCHAR (2000) NULL,
    [DICTIONARY_TYPE]        VARCHAR (400)  NULL,
    [QUERY_SHOW]             INT            NULL,
    [GRID_SHOW]              INT            NULL,
    [EDIT_SHOW]              INT            NULL,
    [QUERY_SEQ]              INT            NULL,
    [GRID_SEQ]               INT            NULL,
    [EDIT_SEQ]               INT            NULL,
    [NULLABLE_KEY]           INT            NULL,
    [DICTIONARY_TYPE_CONFIG] VARCHAR (400)  NULL,
    [DB_FIELD]               VARCHAR (50)   NULL
);

