CREATE TABLE [dbo].[MES_BD_MJ] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [BH]               VARCHAR (10)    NULL,
    [NAME]             VARCHAR (20)    NULL,
    [SSMJLX]           VARCHAR (10)    NULL,
    [GYS]              VARCHAR (30)    NULL,
    [SCRQ]             DATETIME        NULL,
    [DQDM]             VARCHAR (10)    NULL,
    [SLT]              VARCHAR (10)    NULL,
    [TXM]              VARCHAR (10)    NULL,
    [EWM]              VARCHAR (10)    NULL,
    [SLT_PATH]         VARCHAR (MAX)   NULL,
    [TXM_PATH]         VARCHAR (MAX)   NULL,
    [EWM_PATH]         VARCHAR (MAX)   NULL,
    [DYMJLX]           VARCHAR (10)    NULL,
    [GX]               VARCHAR (10)    NULL,
    [CGJG]             NUMERIC (19, 2) NULL,
    [CBTXSCXS]         NUMERIC (19)    NULL,
    [CJTCB]            NUMERIC (19, 4) NULL,
    [JMXTZ]            NUMERIC (19, 4) NULL,
    [SYCPZZ]           NUMERIC (19, 4) NULL,
    [ZTSYL]            NUMERIC (19, 4) NULL,
    [CPL]              NUMERIC (19, 2) NULL,
    [BZDCSCGS]         NUMERIC (19, 2) NULL,
    [DGL]              NUMERIC (19)    NULL,
    [BZGSSCCS]         NUMERIC (19, 1) NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_MJ] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '所属模具类型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'SSMJLX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具供应商', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'GYS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具生产日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'SCRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具设备读取代码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'DQDM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具缩略图', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'SLT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具条形码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'TXM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具二维码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'EWM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具缩略图', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'SLT_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具条形码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'TXM_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具二维码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'EWM_PATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应模具类型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'DYMJLX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具默认工序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'GX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具采购价格', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'CGJG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '成本摊销生产箱数/次数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'CBTXSCXS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '次均摊成本', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'CJTCB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具浇冒系统重/kg', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'JMXTZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '所有产品总重/kg', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'SYCPZZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '总铁水用量/kg', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'ZTSYL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '出品率/%', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'CPL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '标准单次生产工时/s', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'BZDCSCGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具电功率/w', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'DGL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '标准工时生产次数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'BZGSSCCS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ', @level2type = N'COLUMN', @level2name = N'REMARK';

