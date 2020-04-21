
CREATE FUNCTION [dbo].[GETCOLNAME3]
(
	--字符型必须定义长度
    @TABNAME VARCHAR(100)
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT  CASE WHEN COL.COLORDER = 1 THEN OBJ.NAME  
                  ELSE ''  
             END AS 表名,  
        COL.COLORDER AS 序号 ,  
        COL.NAME AS 列名 ,  
        ISNULL(EP.[VALUE], '') AS 列说明 ,  
        T.NAME AS 数据类型 ,  
        COL.LENGTH AS 长度 ,  
        ISNULL(COLUMNPROPERTY(COL.ID, COL.NAME, 'SCALE'), 0) AS 小数位数 ,  
        CASE WHEN COLUMNPROPERTY(COL.ID, COL.NAME, 'ISIDENTITY') = 1 THEN '√'  
             ELSE ''  
        END AS 标识 ,  
        CASE WHEN EXISTS ( SELECT   1  
                           FROM     DBO.SYSINDEXES SI  
                                    INNER JOIN DBO.SYSINDEXKEYS SIK ON SI.ID = SIK.ID  
                                                              AND SI.INDID = SIK.INDID  
                                    INNER JOIN DBO.SYSCOLUMNS SC ON SC.ID = SIK.ID  
                                                              AND SC.COLID = SIK.COLID  
                                    INNER JOIN DBO.SYSOBJECTS SO ON SO.NAME = SI.NAME  
                                                              AND SO.XTYPE = 'PK'  
                           WHERE    SC.ID = COL.ID  
                                    AND SC.COLID = COL.COLID ) THEN '√'  
             ELSE ''  
       END AS 主键 ,  
        CASE WHEN COL.ISNULLABLE = 1 THEN '√'  
             ELSE ''  
        END AS 允许空 ,  
        ISNULL(COMM.TEXT, '') AS 默认值  
FROM    DBO.SYSCOLUMNS COL  
        LEFT  JOIN DBO.SYSTYPES T ON COL.XTYPE = T.XUSERTYPE  
        INNER JOIN DBO.SYSOBJECTS OBJ ON COL.ID = OBJ.ID  
                                         AND OBJ.XTYPE = 'U'  
                                         AND OBJ.STATUS >= 0  
        LEFT  JOIN DBO.SYSCOMMENTS COMM ON COL.CDEFAULT = COMM.ID  
        LEFT  JOIN SYS.EXTENDED_PROPERTIES EP ON COL.ID = EP.MAJOR_ID  
                                                      AND COL.COLID = EP.MINOR_ID  
                                                      AND EP.NAME = 'MS_DESCRIPTION'  
        LEFT  JOIN SYS.EXTENDED_PROPERTIES EPTWO ON OBJ.ID = EPTWO.MAJOR_ID  
                                                         AND EPTWO.MINOR_ID = 0  
                                                         AND EPTWO.NAME = 'MS_DESCRIPTION'  
WHERE   OBJ.NAME = @TABNAME--表名  
--ORDER BY COL.COLORDER 
)
