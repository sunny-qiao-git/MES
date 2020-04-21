CREATE TABLE [dbo].[MES_BD_SCX_BC] (
    [GUID]             VARCHAR (36)  NOT NULL,
    [FGUID]            VARCHAR (20)  NULL,
    [SCX]              VARCHAR (20)  NULL,
    [DEPT]             VARCHAR (20)  NULL,
    [IS_TY]            CHAR (1)      NULL,
    [BH]               VARCHAR (10)  NULL,
    [BCBH]             VARCHAR (10)  NULL,
    [BCM]              VARCHAR (10)  NULL,
    [BCM_SHORT]        VARCHAR (4)   NULL,
    [SBKQJBH]          VARCHAR (10)  NULL,
    [BSBYKQJBH]        VARCHAR (10)  NULL,
    [XBKQJBH]          VARCHAR (10)  NULL,
    [XBBYKQJBH]        VARCHAR (10)  NULL,
    [CLKH_QS_RQCZ]     VARCHAR (10)  NULL,
    [CLKH_QS_TIME]     DATETIME      NULL,
    [CLKH_JS_RQCZ]     VARCHAR (10)  NULL,
    [CLKH_JS_TIME]     DATETIME      NULL,
    [SBRQCZ1]          VARCHAR (10)  NULL,
    [SB_TIME1]         DATETIME      NULL,
    [XBRQCZ1]          VARCHAR (10)  NULL,
    [XB_TIME1]         DATETIME      NULL,
    [SBKQKS_TIME1]     DATETIME      NULL,
    [CDKS_TIME1]       DATETIME      NULL,
    [YZCD_TIME1]       DATETIME      NULL,
    [SBKG_TIME1]       DATETIME      NULL,
    [XBKG_TIME1]       DATETIME      NULL,
    [XBYZZTKS_TIME1]   DATETIME      NULL,
    [XBZTKS_TIME1]     DATETIME      NULL,
    [JBKS__TIME1]      DATETIME      NULL,
    [XBZZKQ_TIME1]     DATETIME      NULL,
    [SBRQCZ2]          VARCHAR (10)  NULL,
    [SB_TIME2]         DATETIME      NULL,
    [XBRQCZ2]          VARCHAR (10)  NULL,
    [XB_TIME2]         DATETIME      NULL,
    [SBKQKS_TIME2]     DATETIME      NULL,
    [CDKS_TIME2]       DATETIME      NULL,
    [YZCD_TIME2]       DATETIME      NULL,
    [SBKG_TIME2]       DATETIME      NULL,
    [XBKG_TIME2]       DATETIME      NULL,
    [XBYZZTKS_TIME2]   DATETIME      NULL,
    [XBZTKS_TIME2]     DATETIME      NULL,
    [JBKS__TIME2]      DATETIME      NULL,
    [XBZZKQ_TIME2]     DATETIME      NULL,
    [REMARK]           VARCHAR (300) NULL,
    [CREATE_USER]      VARCHAR (20)  NULL,
    [CREATE_USER_NAME] VARCHAR (50)  NULL,
    [CREATE_DATE]      DATETIME      NULL,
    [UPDATE_USER]      VARCHAR (20)  NULL,
    [UPDATE_USER_NAME] VARCHAR (50)  NULL,
    [UPDATE_DATE]      DATETIME      NULL,
    [COMPANY_CODE]     VARCHAR (50)  NULL,
    [COMPANY_NAME]     VARCHAR (200) NULL,
    CONSTRAINT [PK_MES_BD_SCX_BC] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '生产线子表-班次设置', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_SCX.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应生产线', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'SCX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '对应部门', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'DEPT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '是否停用', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'IS_TY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '班次编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'BCBH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '班次名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'BCM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '班次名简写', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'BCM_SHORT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '上班考勤机编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'SBKQJBH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '上班备用考勤机编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'BSBYKQJBH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '下班考勤机编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBKQJBH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '下班备用考勤机编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBBYKQJBH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产量考核起始日期差值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'CLKH_QS_RQCZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产量考核起始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'CLKH_QS_TIME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产量考核结束日期差值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'CLKH_JS_RQCZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产量考核结束时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'CLKH_JS_TIME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1上班日期差值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'SBRQCZ1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1上班时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'SB_TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1下班日期差值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBRQCZ1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1下班时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XB_TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1上班考勤开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'SBKQKS_TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1迟到开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'CDKS_TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1严重迟到开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'YZCD_TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1上班旷工开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'SBKG_TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1下班旷工开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBKG_TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1下班严重早退开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBYZZTKS_TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1下班早退开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBZTKS_TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1加班开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'JBKS__TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#1下班终止考勤时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBZZKQ_TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2上班日期差值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'SBRQCZ2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2上班时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'SB_TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2下班日期差值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBRQCZ2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2下班时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XB_TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2上班考勤开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'SBKQKS_TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2迟到开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'CDKS_TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2严重迟到开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'YZCD_TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2上班旷工开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'SBKG_TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2下班旷工开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBKG_TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2下班严重早退开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBYZZTKS_TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2下班早退开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBZTKS_TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2加班开始时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'JBKS__TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '#2下班终止考勤时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'XBZZKQ_TIME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_SCX_BC', @level2type = N'COLUMN', @level2name = N'REMARK';

