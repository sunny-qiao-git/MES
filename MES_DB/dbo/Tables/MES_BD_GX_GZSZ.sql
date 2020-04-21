CREATE TABLE [dbo].[MES_BD_GX_GZSZ] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [FGUID]            VARCHAR (36)  NULL,
    [IS_ADD]           CHAR (1)      NULL,
    [QTY]              INT           NULL,
    [IS_WZ]            CHAR (1)      NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_GX_GZSZ] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'MES_BD_GX.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX_GZSZ', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'记录表中是否加入该工种员工框', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX_GZSZ', @level2type = N'COLUMN', @level2name = N'IS_ADD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'加入员工框数量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX_GZSZ', @level2type = N'COLUMN', @level2name = N'QTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'该工种员工产量是否以员工框为准', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX_GZSZ', @level2type = N'COLUMN', @level2name = N'IS_WZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GX_GZSZ', @level2type = N'COLUMN', @level2name = N'REMARK';

