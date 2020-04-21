CREATE TABLE [dbo].[MES_BD_GDZC_ZJFFT] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [FGUID]            VARCHAR (36)  NULL,
    [BH]               VARCHAR (10)  NULL,
    [QSRQ]             DATETIME      NULL,
    [ZZRQ]             DATETIME      NULL,
    [ZJTS]             VARCHAR (10)  NULL,
    [SKSYSM]           VARCHAR (10)  NULL,
    [ZH_NZJL]          VARCHAR (10)  NULL,
    [ZH_NCZMJZ]        VARCHAR (20)  NULL,
    [ZH_LLSYZJL]       VARCHAR (10)  NULL,
    [ZH_NZJLQZ]        VARCHAR (10)  NULL,
    [ZH_NCSYZJL]       VARCHAR (10)  NULL,
    [ZH_NZJE]          VARCHAR (20)  NULL,
    [PJ_NZJL]          VARCHAR (10)  NULL,
    [PJ_NCZMJZ]        VARCHAR (20)  NULL,
    [PJ_LLSYZJL]       VARCHAR (10)  NULL,
    [PJ_NZJLQZ]        VARCHAR (10)  NULL,
    [PJ_NCSYZJL]       VARCHAR (10)  NULL,
    [PJ_NZJE]          VARCHAR (20)  NULL,
    [SB_NZJL]          VARCHAR (10)  NULL,
    [SB_NCZMJZ]        VARCHAR (20)  NULL,
    [SB_LLSYZJL]       VARCHAR (10)  NULL,
    [SB_NZJLQZ]        VARCHAR (10)  NULL,
    [SB_NCSYZJL]       VARCHAR (10)  NULL,
    [SB_NZJE]          VARCHAR (20)  NULL,
    [NCZMJZ]           VARCHAR (20)  NULL,
    [NCZJL]            VARCHAR (10)  NULL,
    [NZJE]             VARCHAR (20)  NULL,
    [NZJL]             VARCHAR (10)  NULL,
    [YJZJE]            VARCHAR (20)  NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_GDZC_ZJFFT] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '固定资产/设备子表-折旧费分摊详录', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_GDZC', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编码(折旧年号)', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '起始日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'QSRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '终止日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'ZZRQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '折旧天数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'ZJTS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '尚可使用寿命/年', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'SKSYSM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年数总和法-年折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'ZH_NZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年数总和法-年初固定资产账面价值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'ZH_NCZMJZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年数总和法-年初理论剩余折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'ZH_LLSYZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年数总和法-年折旧率取值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'ZH_NZJLQZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年数总和法-年初剩余折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'ZH_NCSYZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年数总额合法-年折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'ZH_NZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年限平均法-年折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'PJ_NZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年限平均法-年初固定资产账面价值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'PJ_NCZMJZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年限平均法-年初理论剩余折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'PJ_LLSYZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年限平均法-年折旧率取值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'PJ_NZJLQZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年限平均法-年初剩余折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'PJ_NCSYZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年限平均法-年折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'PJ_NZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '双倍余额递减法-年折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'SB_NZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '双倍余额递减法-年初固定资产账面价值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'SB_NCZMJZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '双倍余额递减法-年初理论剩余折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'SB_LLSYZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '双倍余额递减法-年折旧率取值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'SB_NZJLQZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '双倍余额递减法-年初剩余折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'SB_NCSYZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年数总额法-年折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'SB_NZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年初账面价值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'NCZMJZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年初折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'NCZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'NZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '年折旧率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'NZJL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '月均折旧额', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'YJZJE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_GDZC_ZJFFT', @level2type = N'COLUMN', @level2name = N'REMARK';

