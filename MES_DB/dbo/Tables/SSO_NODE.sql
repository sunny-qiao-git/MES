﻿CREATE TABLE [dbo].[SSO_NODE] (
    [NODEID]         VARCHAR (36)    NOT NULL,
    [CODE]           VARCHAR (255)   NOT NULL,
    [FULLNAME]       VARCHAR (255)   NULL,
    [SHORTNAME]      VARCHAR (255)   NULL,
    [DESCRIPTION]    VARCHAR (255)   NULL,
    [PARENTID]       VARCHAR (36)    NULL,
    [COMPANYID]      VARCHAR (36)    NULL,
    [STATUS]         INT             NOT NULL,
    [TYPE]           INT             NULL,
    [CREATEUSER]     VARCHAR (36)    NULL,
    [CREATETIME]     DATETIME        NULL,
    [LASTMODIFYUSER] VARCHAR (36)    NULL,
    [LASTMODIFYTIME] DATETIME        NULL,
    [FCODE]          NVARCHAR (2000) NULL,
    [ORGCODE]        VARCHAR (36)    NULL,
    [CUSTOM_CODE]    VARCHAR (50)    NULL,
    [CUSTOM_NAME]    VARCHAR (50)    NULL,
    [TY_CODE]        VARCHAR (50)    NULL,
    [CIQ_CODE]       VARCHAR (50)    NULL,
    CONSTRAINT [PK_SSO_NODE] PRIMARY KEY CLUSTERED ([NODEID] ASC)
);

