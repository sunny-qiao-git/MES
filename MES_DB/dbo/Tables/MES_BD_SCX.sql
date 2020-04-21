CREATE TABLE [dbo].[MES_BD_SCX] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [BH]               VARCHAR (30)    NULL,
    [NAME]             VARCHAR (30)    NULL,
    [CODE]             VARCHAR (30)    NULL,
    [SSCJ]             VARCHAR (30)    NULL,
    [CJNSCX_CODE]      VARCHAR (36)    NULL,
    [GX]               VARCHAR (30)    NULL,
    [SCX_NAME1]        VARCHAR (20)    NULL,
    [JYSCX]            VARCHAR (30)    NULL,
    [SCX_NAME2]        VARCHAR (20)    NULL,
    [BC_NAME3]         VARCHAR (30)    NULL,
    [SCX_NAME3]        VARCHAR (20)    NULL,
    [GZ1_CODE]         VARCHAR (20)    NULL,
    [GZ2_CODE]         VARCHAR (20)    NULL,
    [GZ3_CODE]         VARCHAR (20)    NULL,
    [GZ4_CODE]         VARCHAR (20)    NULL,
    [GZ5_CODE]         VARCHAR (20)    NULL,
    [SXHD]             NUMERIC (19, 1) NULL,
    [SXGD]             NUMERIC (19, 1) NULL,
    [SXKD]             NUMERIC (19, 1) NULL,
    [SXMD]             NUMERIC (19, 3) NULL,
    [LLSSH]            NUMERIC (19, 3) NULL,
    [LLTSSH]           NUMERIC (19, 3) NULL,
    [KYMJLX]           VARCHAR (20)    NULL,
    [KYMJLX1]          VARCHAR (20)    NULL,
    [KYMJLX2]          VARCHAR (20)    NULL,
    [KYMJLX3]          VARCHAR (20)    NULL,
    [PL1]              VARCHAR (20)    NULL,
    [PL2]              VARCHAR (20)    NULL,
    [PL3]              VARCHAR (20)    NULL,
    [PL4]              VARCHAR (20)    NULL,
    [PL5]              VARCHAR (20)    NULL,
    [PL6]              VARCHAR (20)    NULL,
    [PL7]              VARCHAR (20)    NULL,
    [PL8]              VARCHAR (20)    NULL,
    [PL1_PARAM]        VARCHAR (30)    NULL,
    [PL2_PARAM]        VARCHAR (30)    NULL,
    [PL3_PARAM]        VARCHAR (30)    NULL,
    [PL4_PARAM]        VARCHAR (30)    NULL,
    [PL5_PARAM]        VARCHAR (30)    NULL,
    [PL6_PARAM]        VARCHAR (30)    NULL,
    [PL7_PARAM]        VARCHAR (30)    NULL,
    [PL8_PARAM]        VARCHAR (30)    NULL,
    [PL1_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_PL1_DYCSBZ] DEFAULT ((1)) NULL,
    [PL2_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_PL2_DYCSBZ] DEFAULT ((1)) NULL,
    [PL3_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_PL3_DYCSBZ] DEFAULT ((1)) NULL,
    [PL4_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_PL4_DYCSBZ] DEFAULT ((1)) NULL,
    [PL5_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_PL5_DYCSBZ] DEFAULT ((1)) NULL,
    [PL6_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_PL6_DYCSBZ] DEFAULT ((1)) NULL,
    [PL7_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_PL7_DYCSBZ] DEFAULT ((1)) NULL,
    [PL8_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_PL8_DYCSBZ] DEFAULT ((1)) NULL,
    [PL1_CKCK]         VARCHAR (20)    NULL,
    [PL2_CKCK]         VARCHAR (20)    NULL,
    [PL3_CKCK]         VARCHAR (20)    NULL,
    [PL4_CKCK]         VARCHAR (20)    NULL,
    [PL5_CKCK]         VARCHAR (20)    NULL,
    [PL6_CKCK]         VARCHAR (20)    NULL,
    [PL7_CKCK]         VARCHAR (20)    NULL,
    [PL8_CKCK]         VARCHAR (20)    NULL,
    [CP1]              VARCHAR (20)    NULL,
    [CP2]              VARCHAR (20)    NULL,
    [CP3]              VARCHAR (20)    NULL,
    [CP4]              VARCHAR (20)    NULL,
    [CP5]              VARCHAR (20)    NULL,
    [CP6]              VARCHAR (20)    NULL,
    [CP7]              VARCHAR (20)    NULL,
    [CP8]              VARCHAR (20)    NULL,
    [CP1_PARAM]        VARCHAR (30)    NULL,
    [CP2_PARAM]        VARCHAR (30)    NULL,
    [CP3_PARAM]        VARCHAR (30)    NULL,
    [CP4_PARAM]        VARCHAR (30)    NULL,
    [CP5_PARAM]        VARCHAR (30)    NULL,
    [CP6_PARAM]        VARCHAR (30)    NULL,
    [CP7_PARAM]        VARCHAR (30)    NULL,
    [CP8_PARAM]        VARCHAR (30)    NULL,
    [CP1_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_CP1_DYCSBZ] DEFAULT ((1)) NULL,
    [CP2_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_CP2_DYCSBZ] DEFAULT ((1)) NULL,
    [CP3_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_CP3_DYCSBZ] DEFAULT ((1)) NULL,
    [CP4_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_CP4_DYCSBZ] DEFAULT ((1)) NULL,
    [CP5_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_CP5_DYCSBZ] DEFAULT ((1)) NULL,
    [CP6_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_CP6_DYCSBZ] DEFAULT ((1)) NULL,
    [CP7_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_CP7_DYCSBZ] DEFAULT ((1)) NULL,
    [CP8_DYCSBZ]       NUMERIC (19, 3) CONSTRAINT [DF_MES_BD_SCX_CP8_DYCSBZ] DEFAULT ((1)) NULL,
    [CP1_JSGS]         VARCHAR (200)   NULL,
    [CP2_JSGS]         VARCHAR (200)   NULL,
    [CP3_JSGS]         VARCHAR (200)   NULL,
    [CP4_JSGS]         VARCHAR (200)   NULL,
    [CP5_JSGS]         VARCHAR (200)   NULL,
    [CP6_JSGS]         VARCHAR (200)   NULL,
    [CP7_JSGS]         VARCHAR (200)   NULL,
    [CP8_JSGS]         VARCHAR (200)   NULL,
    [CP1_RKCK]         VARCHAR (30)    NULL,
    [CP2_RKCK]         VARCHAR (30)    NULL,
    [CP3_RKCK]         VARCHAR (30)    NULL,
    [CP4_RKCK]         VARCHAR (30)    NULL,
    [CP5_RKCK]         VARCHAR (30)    NULL,
    [CP6_RKCK]         VARCHAR (30)    NULL,
    [CP7_RKCK]         VARCHAR (30)    NULL,
    [CP8_RKCK]         VARCHAR (30)    NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_SCX] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '生产线', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '生产线编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '生产线名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '生产线代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '所属车间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'SSCJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '车间内生产线代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CJNSCX_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'对应工序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'GX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该生产线班次1对应计件生产线名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'SCX_NAME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'对应检验生产线', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'JYSCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该生产线班次2对应计件生产线名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'SCX_NAME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '班次3名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'BC_NAME3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该生产线班次3对应计件生产线名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'SCX_NAME3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该生产线工种1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'GZ1_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该生产线工种2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'GZ2_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该生产线工种3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'GZ3_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该生产线工种4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'GZ4_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该生产线工种5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'GZ5_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认砂箱厚度/cm(可变)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'SXHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '砂箱高度/cm(固定)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'SXGD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '砂箱宽度/cm(固定)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'SXKD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '砂箱密度kg/cm^3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'SXMD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '理论砂损耗百分比', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'LLSSH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '理论铁水损耗百分比', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'LLTSSH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '可用模具类型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'KYMJLX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '优先使用模具类型1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'KYMJLX1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '优先使用模具类型2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'KYMJLX2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '优先使用模具类型3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'KYMJLX3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料1名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料2名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料3名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料4名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料5名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料6名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料7名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL7';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料8名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL8';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计算配料1用量使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL1_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计算配料2用量使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL2_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计算配料3用量使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL3_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计算配料4用量使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL4_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计算配料5用量使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL5_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计算配料6用量使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL6_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计算配料7用量使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL7_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计算配料8用量使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL8_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料1对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL1_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料2对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL2_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料3对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL3_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料4对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL4_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料5对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL5_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料6对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL6_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料7对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL7_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料8对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL8_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料1默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL1_CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料2默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL2_CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料3默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL3_CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料4默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL4_CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料5默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL5_CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料6默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL6_CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料7默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL7_CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '配料8默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'PL8_CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品1名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品2名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品3名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品4名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品5名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品6名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品7名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP7';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品8名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP8';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品1使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP1_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品2使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP2_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品3使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP3_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品4使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP4_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品5使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP5_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品6使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP6_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品7使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP7_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品8使用参数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP8_PARAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品1对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP1_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品2对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP2_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品3对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP3_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品4对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP4_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品5对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP5_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品6对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP6_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品7对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP7_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品8对应参数比值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP8_DYCSBZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品1依配料计算公式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP1_JSGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品2依配料计算公式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP2_JSGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品3依配料计算公式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP3_JSGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品4依配料计算公式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP4_JSGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品5依配料计算公式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP5_JSGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品6依配料计算公式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP6_JSGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品7依配料计算公式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP7_JSGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品8依配料计算公式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP8_JSGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品1默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP1_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品2默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP2_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品3默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP3_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品4默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP4_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品5默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP5_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品6默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP6_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品7默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP7_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品8默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'CP8_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX', @level2type = N'COLUMN', @level2name = N'REMARK';

