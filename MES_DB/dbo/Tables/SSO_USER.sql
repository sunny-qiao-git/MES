﻿CREATE TABLE [dbo].[SSO_USER] (
    [USERID]          NVARCHAR (32)  NOT NULL,
    [USERNAME]        NVARCHAR (255) NOT NULL,
    [PASSWORD]        NVARCHAR (255) NULL,
    [TRUENAME]        NVARCHAR (255) NULL,
    [EMAIL]           NVARCHAR (100) NULL,
    [MOBILE]          NVARCHAR (100) NULL,
    [TELEPHONENUMBER] NVARCHAR (100) NULL,
    [FAX]             NVARCHAR (100) NULL,
    [SEX]             INT            NULL,
    [POST]            NVARCHAR (255) NULL,
    [DESCRIPTION]     NVARCHAR (255) NULL,
    [STATUS]          INT            NULL,
    [TYPE]            INT            NULL,
    [EMPLOYEEID]      NVARCHAR (32)  NULL,
    [LASTLOGINTIME]   DATETIME       NULL,
    [CREATEUSER]      NVARCHAR (36)  NULL,
    [CREATETIME]      DATETIME       NULL,
    [LASTMODIFYUSER]  NVARCHAR (36)  NULL,
    [LASTMODIFYTIME]  DATETIME       NULL,
    [NODE]            NVARCHAR (36)  NULL,
    [PASSWORDTIME]    NVARCHAR (36)  NULL,
    [BEGIN_DATE]      DATETIME       NULL,
    [END_DATE]        DATETIME       NULL,
    CONSTRAINT [PK_SSO_USER] PRIMARY KEY CLUSTERED ([USERID] ASC)
);

