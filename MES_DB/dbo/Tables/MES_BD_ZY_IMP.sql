CREATE TABLE [dbo].[MES_BD_ZY_IMP] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [GH]               VARCHAR (50)    NULL,
    [CODE]             VARCHAR (30)    NULL,
    [NAME]             VARCHAR (20)    NULL,
    [STATUS]           VARCHAR (30)    NULL,
    [RZ_DATE]          DATETIME        NULL,
    [LZ_DATE]          DATETIME        NULL,
    [SSCJ]             VARCHAR (20)    NULL,
    [SSCSCX]           VARCHAR (30)    NULL,
    [ZW]               VARCHAR (20)    NULL,
    [GZ]               VARCHAR (30)    NULL,
    [SSBZ]             VARCHAR (30)    NULL,
    [TEL]              VARCHAR (20)    NULL,
    [ID_CARD]          VARCHAR (20)    NULL,
    [KHYH]             VARCHAR (20)    NULL,
    [KHM]              VARCHAR (20)    NULL,
    [BANK]             VARCHAR (20)    NULL,
    [WHCD]             VARCHAR (30)    NULL,
    [BYXX]             VARCHAR (20)    NULL,
    [BYZY]             VARCHAR (20)    NULL,
    [BYNF]             VARCHAR (30)    NULL,
    [PROVINCE]         VARCHAR (30)    NULL,
    [CITY]             VARCHAR (30)    NULL,
    [ADDRESS]          VARCHAR (20)    NULL,
    [MAIL]             VARCHAR (20)    NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [JS1]              VARCHAR (30)    NULL,
    [JS1_RELATION]     VARCHAR (30)    NULL,
    [JS1_TEL]          VARCHAR (20)    NULL,
    [JS1_ADDRESS]      VARCHAR (20)    NULL,
    [JS2]              VARCHAR (30)    NULL,
    [JS2_RELATION]     VARCHAR (30)    NULL,
    [JS2_TEL]          VARCHAR (20)    NULL,
    [JS2_ADDRESS]      VARCHAR (20)    NULL,
    [JS3]              VARCHAR (30)    NULL,
    [JS3_RELATION]     VARCHAR (30)    NULL,
    [JS3_TEL]          VARCHAR (20)    NULL,
    [JS3_ADDRESS]      VARCHAR (20)    NULL,
    [JS4]              VARCHAR (30)    NULL,
    [JS4_RELATION]     VARCHAR (30)    NULL,
    [JS4_TEL]          VARCHAR (20)    NULL,
    [JS4_ADDRESS]      VARCHAR (20)    NULL,
    [CAR_NO]           VARCHAR (30)    NULL,
    [CAR_TYPE]         VARCHAR (20)    NULL,
    [PIC1]             VARCHAR (200)   NULL,
    [PIC1_PATH]        VARCHAR (MAX)   NULL,
    [PIC2]             VARCHAR (200)   NULL,
    [PIC2_PATH]        VARCHAR (MAX)   NULL,
    [CREATE_USER]      VARCHAR (50)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME SPARSE NULL,
    [UPDATE_USER]      VARCHAR (50)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    [PARENTID]         VARCHAR (36)    NULL,
    [IMP_ID]           VARCHAR (50)    NULL,
    CONSTRAINT [PK_MES_BD_ZY_copy1] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职员', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'工号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'GH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职员代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职员名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职员状态', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'入职日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'RZ_DATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'离职日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'LZ_DATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'所属车间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'SSCJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'所属生产线*', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'SSCSCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职务', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'ZW';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'工种', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'GZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'所属班组', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'SSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'移动电话', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'TEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'身份证号码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'ID_CARD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'开户银行', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'KHYH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'开户名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'KHM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'银行账号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'BANK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'文化程度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'WHCD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'毕业学校', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'BYXX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'毕业专业', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'BYZY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'毕业年份', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'BYNF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'省份', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'PROVINCE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'城市', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'CITY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'住址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'ADDRESS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'电子邮件', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'MAIL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'REMARK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属1关系', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS1_RELATION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属1电话', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS1_TEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属1住址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS1_ADDRESS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属2关系', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS2_RELATION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属2电话', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS2_TEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属2住址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS2_ADDRESS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属3关系', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS3_RELATION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属3电话', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS3_TEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属3住址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS3_ADDRESS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属4关系', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS4_RELATION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属4电话', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS4_TEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'家属4住址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'JS4_ADDRESS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'车牌号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'CAR_NO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'车辆类型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'CAR_TYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职员缩略图', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'PIC1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职员缩略图路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'PIC1_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'照片2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'PIC2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'照片2路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'PIC2_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'导入批次号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_ZY_IMP', @level2type = N'COLUMN', @level2name = N'IMP_ID';

