CREATE TABLE [dbo].[MES_BD_WL] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [BH]               VARCHAR (20)    NULL,
    [WLSX_CODE]        VARCHAR (30)    NULL,
    [WLQZPL_CODE]      VARCHAR (30)    NULL,
    [WLPL_CODE]        VARCHAR (20)    NULL,
    [WG_NAME]          VARCHAR (30)    NULL,
    [NAME]             VARCHAR (30)    NULL,
    [CODE]             VARCHAR (30)    NULL,
    [EN_NAME]          VARCHAR (30)    NULL,
    [TJLB1]            VARCHAR (20)    NULL,
    [TJLB2]            VARCHAR (20)    NULL,
    [TJLB3]            VARCHAR (20)    NULL,
    [TJLB4]            VARCHAR (20)    NULL,
    [DZ]               NUMERIC (19, 5) NULL,
    [DZJD]             INT             NULL,
    [CD]               NUMERIC (19, 5) NULL,
    [CDJD]             INT             NULL,
    [MJ]               NUMERIC (19, 5) NULL,
    [MJJD]             INT             NULL,
    [TJ]               NUMERIC (19, 5) NULL,
    [TJJD]             INT             NULL,
    [UNIT]             VARCHAR (30)    NULL,
    [UNIT_JD]          INT             NULL,
    [FZ_UNIT1]         VARCHAR (30)    NULL,
    [FZ_UNIT1_RATE]    NUMERIC (19, 5) NULL,
    [FZ_UNIT1_JD]      INT             NULL,
    [FZ_UNIT2]         VARCHAR (30)    NULL,
    [FZ_UNIT2_RATE]    NUMERIC (19, 5) NULL,
    [FZ_UNIT2_JD]      INT             NULL,
    [FZ_UNIT3]         VARCHAR (30)    NULL,
    [FZ_UNIT3_RATE]    NUMERIC (19, 5) NULL,
    [FZ_UNIT3_JD]      INT             NULL,
    [FZ_UNIT4]         VARCHAR (30)    NULL,
    [FZ_UNIT4_RATE]    NUMERIC (19, 5) NULL,
    [FZ_UNIT4_JD]      INT             NULL,
    [RK_WAREHOUSE]     VARCHAR (30)    NULL,
    [SCBM]             VARCHAR (30)    NULL,
    [ZDKC]             NUMERIC (19, 5) NULL,
    [DKC]              NUMERIC (19, 5) NULL,
    [ZCKC]             NUMERIC (19, 5) NULL,
    [ZGKC]             NUMERIC (19, 5) NULL,
    [STATUS]           VARCHAR (30)    NULL,
    [IS_SB]            CHAR (1)        NULL,
    [PRICE]            NUMERIC (19, 5) NULL,
    [PRICE_JD]         INT             NULL,
    [PRICE_CG]         NUMERIC (19, 5) NULL,
    [CH_CODE]          VARCHAR (30)    NULL,
    [XSSR_CODE]        VARCHAR (30)    NULL,
    [SXCB_CODE]        VARCHAR (30)    NULL,
    [CBCY_CODE]        VARCHAR (30)    NULL,
    [DGWZKM]           VARCHAR (20)    NULL,
    [RATE]             INT             CONSTRAINT [DF_MES_BD_WL_RATE] DEFAULT ((0)) NULL,
    [PIC1]             VARCHAR (200)   NULL,
    [PIC2]             VARCHAR (200)   NULL,
    [PIC3]             VARCHAR (200)   NULL,
    [PIC4]             VARCHAR (200)   NULL,
    [PIC5]             VARCHAR (200)   NULL,
    [PIC6]             VARCHAR (200)   NULL,
    [PIC7]             VARCHAR (200)   NULL,
    [PIC8]             VARCHAR (200)   NULL,
    [PIC9]             VARCHAR (200)   NULL,
    [PIC10]            VARCHAR (200)   NULL,
    [PIC1_PATH]        VARCHAR (MAX)   NULL,
    [PIC2_PATH]        VARCHAR (MAX)   NULL,
    [PIC3_PATH]        VARCHAR (MAX)   NULL,
    [PIC4_PATH]        VARCHAR (MAX)   NULL,
    [PIC5_PATH]        VARCHAR (MAX)   NULL,
    [PIC6_PATH]        VARCHAR (MAX)   NULL,
    [PIC7_PATH]        VARCHAR (MAX)   NULL,
    [PIC8_PATH]        VARCHAR (MAX)   NULL,
    [PIC9_PATH]        VARCHAR (MAX)   NULL,
    [PIC10_PATH]       VARCHAR (MAX)   NULL,
    [TXM]              VARCHAR (200)   NULL,
    [FILE1]            VARCHAR (200)   NULL,
    [FILE1_PATH]       VARCHAR (200)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    [REMARK]           VARCHAR (300)   NULL,
    CONSTRAINT [PK_MES_BD_WL] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料属性/自制/外购', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'WLSX_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料前置品类', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'WLQZPL_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料品类', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'WLPL_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '外购物料名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'WG_NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料全名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '物料英文名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'EN_NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '统计类别1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'TJLB1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '统计类别2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'TJLB2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '统计类别3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'TJLB3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '统计类别4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'TJLB4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '单重/kg', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'DZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '单重精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'DZJD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '长度/m', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'CD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '长度精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'CDJD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '面积/m^2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'MJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '面积精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'MJJD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '体积/m^3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'TJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '体积精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'TJJD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '基本计量单位', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'UNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '基本计量单位输入精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'UNIT_JD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位1对基本计量单位换算率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT1_RATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位1输入精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT1_JD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位2对基本计量单位换算率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT2_RATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位2输入精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT2_JD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位3对基本计量单位换算率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT3_RATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位3输入精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT3_JD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位4对基本计量单位换算率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT4_RATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '辅助计量单位4输入精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FZ_UNIT4_JD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认入库仓库', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'RK_WAREHOUSE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认生成部门/来源', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'SCBM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '最低库存量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'ZDKC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '低库存量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'DKC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '正常库存量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'ZCKC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '最高库存量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'ZGKC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '使用状态', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'STATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '是否为设备', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'IS_SB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '采购单价', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PRICE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '单价精度', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PRICE_JD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '平均采购单价', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PRICE_CG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '存货科目代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'CH_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '销售收入科目代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'XSSR_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '销售成本科目代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'SXCB_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '成本差异科目代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'CBCY_CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '代管物质科目', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'DGWZKM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '税率(%)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'RATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片3', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片4', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片5', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片6', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片7', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC7';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片8', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC8';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片9', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC9';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片10', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC10';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片1路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC1_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片2路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC2_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片3路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC3_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片4路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC4_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片5路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC5_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片6路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC6_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片7路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC7_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片8路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC8_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片9路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC9_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品照片10路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'PIC10_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品条形码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'TXM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '附件1', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FILE1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '附件1路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'FILE1_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_WL', @level2type = N'COLUMN', @level2name = N'REMARK';

