CREATE TABLE [dbo].[MES_BD_FPSZ] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [BH]               VARCHAR (30)    NULL,
    [NAME]             VARCHAR (30)    NULL,
    [HLLBL]            NUMERIC (19, 5) CONSTRAINT [DF_MES_BD_FPSZ_HLLBL] DEFAULT ((1)) NULL,
    [EJPBL]            NUMERIC (19, 5) CONSTRAINT [DF_MES_BD_FPSZ_EJPBL] DEFAULT ((0)) NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_FPSZ] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_FPSZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_FPSZ', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_FPSZ', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '转为回炉料比例', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_FPSZ', @level2type = N'COLUMN', @level2name = N'HLLBL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '转为二级品比例', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_FPSZ', @level2type = N'COLUMN', @level2name = N'EJPBL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_FPSZ', @level2type = N'COLUMN', @level2name = N'REMARK';

