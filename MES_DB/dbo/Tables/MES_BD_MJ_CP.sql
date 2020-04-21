CREATE TABLE [dbo].[MES_BD_MJ_CP] (
    [GUID]             VARCHAR (36)    NOT NULL,
    [FGUID]            VARCHAR (36)    NULL,
    [BH]               VARCHAR (20)    NULL,
    [MJM]              VARCHAR (20)    NULL,
    [CPXS]             VARCHAR (20)    NULL,
    [SB]               VARCHAR (20)    NULL,
    [CPDZ]             NUMERIC (19, 4) NULL,
    [CPGS]             NUMERIC (19)    NULL,
    [CPZS]             NUMERIC (19, 4) NULL,
    [IS_SCCPL]         CHAR (1)        NULL,
    [IS_GZHSCPL]       CHAR (1)        NULL,
    [REMARK]           VARCHAR (300)   NULL,
    [CREATE_USER]      VARCHAR (20)    NULL,
    [CREATE_USER_NAME] VARCHAR (50)    NULL,
    [CREATE_DATE]      DATETIME        NULL,
    [UPDATE_USER]      VARCHAR (20)    NULL,
    [UPDATE_USER_NAME] VARCHAR (50)    NULL,
    [UPDATE_DATE]      DATETIME        NULL,
    [COMPANY_CODE]     VARCHAR (50)    NULL,
    [COMPANY_NAME]     VARCHAR (200)   NULL,
    CONSTRAINT [PK_MES_BD_MJ_CP] PRIMARY KEY CLUSTERED ([GUID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具子表-产品信息', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'MES_BD_MJ.GUID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'FGUID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'BH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '模具名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'MJM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品型式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'CPXS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '默认商标', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'SB';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品单重/kg', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'CPDZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品个数', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'CPGS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '产品总重/kg', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'CPZS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '是否计入模具生产成品率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'IS_SCCPL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '是否计入工资核算成品率', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'IS_GZHSCPL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = '备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'MES_BD_MJ_CP', @level2type = N'COLUMN', @level2name = N'REMARK';

