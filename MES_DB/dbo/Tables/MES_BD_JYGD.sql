CREATE TABLE [dbo].[MES_BD_JYGD] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [BH]               VARCHAR (30)  NULL,
    [NAME]             VARCHAR (30)  NULL,
    [SJCJ]             VARCHAR (30)  NULL,
    [CKCK]             VARCHAR (30)  NULL,
    [RKCK]             VARCHAR (30)  NULL,
    [FP1]              VARCHAR (30)  NULL,
    [FP1_RKCK]         VARCHAR (30)  NULL,
    [FP1_CLJG]         VARCHAR (30)  NULL,
    [FP1_CLJG_RKCK]    VARCHAR (30)  NULL,
    [FP2]              VARCHAR (30)  NULL,
    [FP2_RKCK]         VARCHAR (30)  NULL,
    [FP2_CLJG]         VARCHAR (30)  NULL,
    [FP2_CLJG_RKCK]    VARCHAR (30)  NULL,
    [FP3]              VARCHAR (30)  NULL,
    [FP3_RKCK]         VARCHAR (30)  NULL,
    [FP3_CLJG]         VARCHAR (30)  NULL,
    [FP3_CLJG_RKCK]    VARCHAR (30)  NULL,
    [FP4]              VARCHAR (30)  NULL,
    [FP4_RKCK]         VARCHAR (30)  NULL,
    [FP4_CLJG]         VARCHAR (30)  NULL,
    [FP4_CLJG_RKCK]    VARCHAR (30)  NULL,
    [FP5]              VARCHAR (30)  NULL,
    [FP5_RKCK]         VARCHAR (30)  NULL,
    [FP5_CLJG]         VARCHAR (30)  NULL,
    [FP5_CLJG_RKCK]    VARCHAR (30)  NULL,
    [FP6]              VARCHAR (30)  NULL,
    [FP6_RKCK]         VARCHAR (30)  NULL,
    [FP6_CLJG]         VARCHAR (30)  NULL,
    [FP6_CLJG_RKCK]    VARCHAR (30)  NULL,
    [FP7]              VARCHAR (30)  NULL,
    [FP7_RKCK]         VARCHAR (30)  NULL,
    [FP7_CLJG]         VARCHAR (30)  NULL,
    [FP7_CLJG_RKCK]    VARCHAR (30)  NULL,
    [FP8]              VARCHAR (30)  NULL,
    [FP8_RKCK]         VARCHAR (30)  NULL,
    [FP8_CLJG]         VARCHAR (30)  NULL,
    [FP8_CLJG_RKCK]    VARCHAR (30)  NULL,
    [FP9]              VARCHAR (30)  NULL,
    [FP9_RKCK]         VARCHAR (30)  NULL,
    [FP9_CLJG]         VARCHAR (30)  NULL,
    [FP9_CLJG_RKCK]    VARCHAR (30)  NULL,
    [FP10]             VARCHAR (30)  NULL,
    [FP10_RKCK]        VARCHAR (30)  NULL,
    [FP10_CLJG]        VARCHAR (30)  NULL,
    [FP10_CLJG_RKCK]   VARCHAR (30)  NULL,
    [FP11]             VARCHAR (30)  NULL,
    [FP11_RKCK]        VARCHAR (30)  NULL,
    [FP11_CLJG]        VARCHAR (30)  NULL,
    [FP11_CLJG_RKCK]   VARCHAR (30)  NULL,
    [FP12]             VARCHAR (30)  NULL,
    [FP12_RKCK]        VARCHAR (30)  NULL,
    [FP12_CLJG]        VARCHAR (30)  NULL,
    [FP12_CLJG_RKCK]   VARCHAR (30)  NULL,
    [FP13]             VARCHAR (30)  NULL,
    [FP13_RKCK]        VARCHAR (30)  NULL,
    [FP13_CLJG]        VARCHAR (30)  NULL,
    [FP13_CLJG_RKCK]   VARCHAR (30)  NULL,
    [FP14]             VARCHAR (30)  NULL,
    [FP14_RKCK]        VARCHAR (30)  NULL,
    [FP14_CLJG]        VARCHAR (30)  NULL,
    [FP14_CLJG_RKCK]   VARCHAR (30)  NULL,
    [FP15]             VARCHAR (30)  NULL,
    [FP15_RKCK]        VARCHAR (30)  NULL,
    [FP15_CLJG]        VARCHAR (30)  NULL,
    [FP15_CLJG_RKCK]   VARCHAR (30)  NULL,
    [FP16]             VARCHAR (30)  NULL,
    [FP16_RKCK]        VARCHAR (30)  NULL,
    [FP16_CLJG]        VARCHAR (30)  NULL,
    [FP16_CLJG_RKCK]   VARCHAR (30)  NULL,
    [FP17]             VARCHAR (30)  NULL,
    [FP17_RKCK]        VARCHAR (30)  NULL,
    [FP17_CLJG]        VARCHAR (30)  NULL,
    [FP17_CLJG_RKCK]   VARCHAR (30)  NULL,
    [FP18]             VARCHAR (30)  NULL,
    [FP18_RKCK]        VARCHAR (30)  NULL,
    [FP18_CLJG]        VARCHAR (30)  NULL,
    [FP18_CLJG_RKCK]   VARCHAR (30)  NULL,
    [FP19]             VARCHAR (30)  NULL,
    [FP19_RKCK]        VARCHAR (30)  NULL,
    [FP19_CLJG]        VARCHAR (30)  NULL,
    [FP19_CLJG_RKCK]   VARCHAR (30)  NULL,
    [FP20]             VARCHAR (30)  NULL,
    [FP20_RKCK]        VARCHAR (30)  NULL,
    [FP20_CLJG]        VARCHAR (30)  NULL,
    [FP20_CLJG_RKCK]   VARCHAR (30)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_JYGD] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '检验工段', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '检验工段编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '检验工段名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认上级车间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'SJCJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认出库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'CKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认成品入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品1入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP1_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品1处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP1_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品1处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP1_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品2入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP2_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品2处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP2_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品2处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP2_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品3入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP3_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品3处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP3_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品3处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP3_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品4入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP4_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品4处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP4_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品4处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP4_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品5入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP5_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品5处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP5_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品5处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP5_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品6入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP6_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品6处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP6_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品6处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP6_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP7';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品7入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP7_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品7处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP7_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品7处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP7_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP8';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品8入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP8_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品8处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP8_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品8处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP8_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP9';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品9入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP9_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品9处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP9_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品9处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP9_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP10';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品10入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP10_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品10处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP10_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品10处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP10_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品11', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP11';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品11入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP11_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品11处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP11_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品11处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP11_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品12', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP12';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品12入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP12_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品12处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP12_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品12处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP12_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品13', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP13';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品13入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP13_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品13处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP13_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品13处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP13_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品14', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP14';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品14入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP14_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品14处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP14_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品14处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP14_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品15', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP15';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品15入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP15_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品15处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP15_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品15处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP15_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品16', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP16';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品16入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP16_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品16处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP16_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品16处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP16_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品17', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP17';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品17入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP17_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品17处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP17_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品17处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP17_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品18', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP18';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品18入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP18_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品18处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP18_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品18处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP18_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品19', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP19';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品19入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP19_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品19处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP19_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品19处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP19_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认废品20', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP20';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品20入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP20_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品20处理结果', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP20_CLJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '废品20处理结果入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'FP20_CLJG_RKCK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_JYGD', @level2type = N'COLUMN', @level2name = N'REMARK';

