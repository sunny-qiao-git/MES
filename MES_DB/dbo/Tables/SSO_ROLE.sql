﻿CREATE TABLE [dbo].[SSO_ROLE] (
    [ROLEID]         NVARCHAR (32)  NOT NULL,
    [NAME]           NVARCHAR (255) NOT NULL,
    [DESCRIPTION]    NVARCHAR (255) NULL,
    [CREATEUSER]     NVARCHAR (36)  NULL,
    [CREATETIME]     DATETIME       NULL,
    [LASTMODIFYUSER] NVARCHAR (36)  NULL,
    [LASTMODIFYTIME] DATETIME       NULL,
    [NODEID]         NVARCHAR (32)  NULL,
    [TYPE]           INT            NULL,
    [APPCODE]        NVARCHAR (32)  NULL,
    [CODE]           NVARCHAR (50)  NULL,
    [ROLETYPE]       NVARCHAR (50)  NULL,
    CONSTRAINT [PK_SSO_ROLE] PRIMARY KEY CLUSTERED ([ROLEID] ASC)
);
