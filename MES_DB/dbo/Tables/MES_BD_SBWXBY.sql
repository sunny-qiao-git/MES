CREATE TABLE [dbo].[MES_BD_SBWXBY] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [BH]               VARCHAR (10)    NULL,
    [NAME]             VARCHAR (20)    NULL,
    [WXBYNR]           VARCHAR (20)    NULL,
    [SCX]              VARCHAR (20)    NULL,
    [UNIT]             VARCHAR (10)    NULL,
    [WXBYXE]           NUMERIC (19, 3) NULL,
    [TXXE]             NUMERIC (19, 3) NULL,
    [ZDXE]             NUMERIC (19, 3) NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_SBWXBY] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '设备维修保养设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBWXBY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBWXBY', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应设备名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBWXBY', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '维修保养内容', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBWXBY', @level2type = N'COLUMN', @level2name = N'WXBYNR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '维修保养对应工作量调用生产线', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBWXBY', @level2type = N'COLUMN', @level2name = N'SCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '工作量对应单位', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBWXBY', @level2type = N'COLUMN', @level2name = N'UNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '维修保养工作量限额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBWXBY', @level2type = N'COLUMN', @level2name = N'WXBYXE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '提醒工作量限额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBWXBY', @level2type = N'COLUMN', @level2name = N'TXXE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '工作量最大限额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBWXBY', @level2type = N'COLUMN', @level2name = N'ZDXE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SBWXBY', @level2type = N'COLUMN', @level2name = N'REMARK';

