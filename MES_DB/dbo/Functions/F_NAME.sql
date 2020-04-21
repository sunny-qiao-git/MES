
CREATE FUNCTION [dbo].[F_NAME]
    (
      @P_CODE VARCHAR(100) ,
      @P_TYPE VARCHAR(100)
    )
RETURNS VARCHAR(200)
AS
    BEGIN
        DECLARE @V_NAME VARCHAR(200) ,
            @V_SQL VARCHAR(200);
        SET @V_NAME = '';
            
        DECLARE @HAS_COUNT INT;
        SELECT  @HAS_COUNT = COUNT(1)
        FROM    BASE_SYS_PARAM
        WHERE   TYPE = @P_TYPE;
        IF @HAS_COUNT > 0
            BEGIN
                SELECT  @V_NAME = MAX(REMARK)
                FROM    BASE_SYS_PARAM
                WHERE   [TYPE] = @P_TYPE
                        AND [CODE] = @P_CODE
                        AND IS_USED = '1';
            END;
        --IF @P_TYPE = 'RECEIVE_TYPE'
            BEGIN
                SELECT  @V_NAME = MAX(REMARK)
                FROM    BASE_SYS_PARAM
                WHERE   TYPE = @P_TYPE
                        AND IS_USED = '1'
                        AND CODE = @P_CODE;
            END;
        
        RETURN @V_NAME;
    END;
