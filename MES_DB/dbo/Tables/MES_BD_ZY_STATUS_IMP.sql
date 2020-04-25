CREATE TABLE [dbo].[MES_BD_ZY_STATUS_IMP] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [FGUID]            VARCHAR (36)    NULL,
    [NAME]             VARCHAR (20)    NULL,
    [RZ_DATE]          DATETIME        NULL,
    [LZ_DATE]          DATETIME        NULL,
    [SSCJ]             VARCHAR (20)    NULL,
    [SSCSCX]           VARCHAR (30)    NULL,
    [ZW]               VARCHAR (20)    NULL,
    [GZ]               VARCHAR (30)    NULL,
    [SSBZ]             VARCHAR (30)    NULL,
    [GZJJGZBL]         NUMERIC (19, 2) DEFAULT ((1)) NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (50)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (50)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    [IMP_ID]           VARCHAR (50)    NULL,
    [GH] VARCHAR(50) NULL, 
    CONSTRAINT [PK_MES_BD_ZY_STATUS_copy1] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职员子表-职员工种及状态', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'MES_BD_ZY.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职员', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'入职日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'RZ_DATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'离职/转岗日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'LZ_DATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'所属车间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'SSCJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'所属生产线', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'SSCSCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职务', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'ZW';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'工种', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'GZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'所属班组', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'SSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'工种计件工资比例', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'GZJJGZBL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'REMARK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'导入批次号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_STATUS_IMP', @level2type = N'COLUMN', @level2name = N'IMP_ID';

GO

EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'工号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'GH';


GO