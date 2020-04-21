CREATE TABLE [dbo].[MES_BD_GDZC] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [BH]               VARCHAR (20)    NULL,
    [NAME]             VARCHAR (20)    NULL,
    [WL]               VARCHAR (20)    NULL,
    [ZJFS]             VARCHAR (10)    NULL,
    [GHR]              VARCHAR (10)    NULL,
    [GGXH]             VARCHAR (20)    NULL,
    [ZZCS]             VARCHAR (20)    NULL,
    [ZZCS_TEL]         VARCHAR (30)    NULL,
    [ZZHM]             VARCHAR (20)    NULL,
    [ZZRQ]             DATETIME        NULL,
    [GZRQ]             DATETIME        NULL,
    [LRRQ]             DATETIME        NULL,
    [LRR]              VARCHAR (10)    NULL,
    [TYRQ]             DATETIME        NULL,
    [ZXRQ]             DATETIME        NULL,
    [ZXYY]             VARCHAR (100)   NULL,
    [KSSYRQ]           DATETIME        NULL,
    [UNIT]             VARCHAR (10)    NULL,
    [QTY]              NUMERIC (19)    NULL,
    [DGL]              NUMERIC (19, 2) NULL,
    [SBLB]             VARCHAR (10)    NULL,
    [PRICE]            NUMERIC (19, 2) NULL,
    [YZ]               NUMERIC (19, 2) NULL,
    [YJJCZ]            NUMERIC (19, 2) NULL,
    [JCZL]             NUMERIC (19, 4) NULL,
    [YJZZJE]           NUMERIC (19, 2) NULL,
    [YJZZJL]           NUMERIC (19, 4) NULL,
    [YJSYSM]           NUMERIC (19, 1) NULL,
    [YJNSZH]           NUMERIC (19)    NULL,
    [ZJFF]             VARCHAR (10)    NULL,
    [YJSCX]            VARCHAR (20)    NULL,
    [YJGZL]            VARCHAR (10)    NULL,
    [YJGZL_UNIT]       VARCHAR (10)    NULL,
    [DWGZLZJE]         VARCHAR (20)    NULL,
    [DYYSCZGL]         VARCHAR (10)    NULL,
    [GZLJSZZJE]        VARCHAR (20)    NULL,
    [SCJZRQ]           DATETIME        NULL,
    [DQQSRQ]           VARCHAR (10)    NULL,
    [QSRQDY]           VARCHAR (20)    NULL,
    [DQZZRQDY]         VARCHAR (10)    NULL,
    [ZZRQDY]           VARCHAR (20)    NULL,
    [BZQZJE]           VARCHAR (20)    NULL,
    [DYZJL]            VARCHAR (10)    NULL,
    [YZJE]             VARCHAR (20)    NULL,
    [YJTNF]            VARCHAR (10)    NULL,
    [YJTYF]            VARCHAR (10)    NULL,
    [YJZNFZJE]         VARCHAR (20)    NULL,
    [LJZJ]             VARCHAR (10)    NULL,
    [JZ]               VARCHAR (10)    NULL,
    [DYZJKM]           VARCHAR (20)    NULL,
    [CFDD]             VARCHAR (20)    NULL,
    [JZMJ]             NUMERIC (19, 1) NULL,
    [CSJG]             VARCHAR (10)    NULL,
    [PYKE]             VARCHAR (20)    NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_GDZC] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '固定资产/设备', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '固定资产/设备编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '固定资产/设备名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应物料名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'WL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '增加方式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'ZJFS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '供货人', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'GHR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '规格型号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'GGXH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '制造厂商', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'ZZCS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '制造厂商联系方式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'ZZCS_TEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '制造号码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'ZZHM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '制造日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'ZZRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '购置日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'GZRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '录入日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'LRRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '录入人', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'LRR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '停用日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'TYRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '注销日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'ZXRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '注销原因', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'ZXYY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '开始使用日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'KSSYRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '计量单位', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'UNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '个数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'QTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '电功率/W', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'DGL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '固定资产/设备类别', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'SBLB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '单价', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'PRICE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '原值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '预计净残值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJJCZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '净残值率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'JCZL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '预计总折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJZZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '预计总折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJZZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '预计使用寿命', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJSYSM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '预计使用寿命的年数总和', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJNSZH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '折旧方法', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'ZJFF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '预计工作量对应生产线', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJSCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '预计工作量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJGZL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '预计工作量对应单位', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJGZL_UNIT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '单位工作量折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'DWGZLZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应已生产工作量', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'DYYSCZGL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '工作量计算总折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'GZLJSZZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '上次结账日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'SCJZRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '当期起始日期对应折旧年份值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'DQQSRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '起始日期对应折旧年份年折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'QSRQDY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '当期终止日期对应折旧年份值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'DQZZRQDY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '终止日期对应折旧年份年折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'ZZRQDY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '本账期折旧额/当月折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'BZQZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '当月折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'DYZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '日折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '已计提年份', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJTNF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '已计提月份', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJTYF';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '该固定资产/设备已结账年份折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'YJZNFZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '累计折旧', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'LJZJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '净值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'JZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应折旧科目', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'DYZJKM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '存放地点', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'CFDD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '建筑面积/m^2', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'JZMJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '出售价格', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'CSJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '盘盈/亏额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'PYKE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC', @level2type = N'COLUMN', @level2name = N'REMARK';

