CREATE TABLE [dbo].[MES_BD_SBDB] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BH]               VARCHAR (10)  NULL,
    [NMAE]             VARCHAR (20)  NULL,
    [GL]               VARCHAR (20)  NULL,
    [PJGL]             VARCHAR (10)  NULL,
    [SJPJGL]           VARCHAR (20)  NULL,
    [DLTGDBM]          VARCHAR (20)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_SBDB] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '设备电表设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBDB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBDB', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应设备名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBDB', @level2type = N'COLUMN', @level2name = N'NMAE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '设备功率/W', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBDB', @level2type = N'COLUMN', @level2name = N'GL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '设备平均使用率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBDB', @level2type = N'COLUMN', @level2name = N'PJGL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '实际设备平均功率/W', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBDB', @level2type = N'COLUMN', @level2name = N'SJPJGL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电量通过电表名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBDB', @level2type = N'COLUMN', @level2name = N'DLTGDBM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBDB', @level2type = N'COLUMN', @level2name = N'REMARK';

