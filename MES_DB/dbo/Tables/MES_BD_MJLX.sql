CREATE TABLE [dbo].[MES_BD_MJLX] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [BH]               VARCHAR (30)    NULL,
    [NAME]             VARCHAR (30)    NULL,
    [CODE]             VARCHAR (300)   NULL,
    [DYGX]             VARCHAR (30)    NULL,
    [SYJX]             VARCHAR (30)    NULL,
    [MJ_LONG]          NUMERIC (19, 1) NULL,
    [MJ_WIDH]          NUMERIC (19, 1) NULL,
    [REMARK]           VARCHAR (200)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_MJLX] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'模具类型编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJLX', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'模具类型名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJLX', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'模具类型代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJLX', @level2type = N'COLUMN', @level2name = N'CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'模具对应工序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJLX', @level2type = N'COLUMN', @level2name = N'DYGX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'模具适用机型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJLX', @level2type = N'COLUMN', @level2name = N'SYJX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'模具长/mm', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJLX', @level2type = N'COLUMN', @level2name = N'MJ_LONG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'模具宽/mm', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJLX', @level2type = N'COLUMN', @level2name = N'MJ_WIDH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJLX', @level2type = N'COLUMN', @level2name = N'REMARK';

