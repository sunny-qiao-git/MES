CREATE TABLE [dbo].[MES_BD_SCX_BC_GZ_GZ] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [FGUID]            VARCHAR (36)  NULL,
    [SCX_GUID]         VARCHAR (36)  NULL,
    [SCX]              VARCHAR (20)  NULL,
    [BH]               VARCHAR (10)  NULL,
    [BCM]              VARCHAR (20)  NULL,
    [GZ]               VARCHAR (20)  NULL,
    [JJLX]             VARCHAR (10)  NULL,
    [GZJSFS]           VARCHAR (10)  NULL,
    [YSCSJYLCS]        VARCHAR (10)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_SCX_BC_GZ_GZ] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '生产线子表-班次-工种-工资设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_SCX_BC.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_SCX.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ', @level2type = N'COLUMN', @level2name = N'SCX_GUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应生产线', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ', @level2type = N'COLUMN', @level2name = N'SCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应班次', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ', @level2type = N'COLUMN', @level2name = N'BCM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应工种', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ', @level2type = N'COLUMN', @level2name = N'GZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应计件类型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ', @level2type = N'COLUMN', @level2name = N'JJLX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '同工种工资等额计算/平均计算', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ', @level2type = N'COLUMN', @level2name = N'GZJSFS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '依生产数据用量参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ', @level2type = N'COLUMN', @level2name = N'YSCSJYLCS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC_GZ_GZ', @level2type = N'COLUMN', @level2name = N'REMARK';

