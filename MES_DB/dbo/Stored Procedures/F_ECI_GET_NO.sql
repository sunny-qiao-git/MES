﻿
CREATE PROCEDURE [dbo].[F_ECI_GET_NO] (
   @P_TYPE_NAME      VARCHAR(100),
   @P_START_NO       VARCHAR(100),
   @P_LENGTH         INT,
   @P_DESC           VARCHAR(100),
   @P_REAL_START_NO  VARCHAR(100),
   @P_GUID  VARCHAR(100)
)
 --  RETURNS VARCHAR(100)
AS
BEGIN
	DECLARE
   @V_RESULT       VARCHAR(100),
   @V_CURRENT_NO   VARCHAR(100) ,
   @V_NUM          INT ,
   @V_ROWID        VARCHAR(100) ,
   @V_REAL_START_NO VARCHAR(100);
	
   SET @V_REAL_START_NO =@P_REAL_START_NO;

   IF @V_REAL_START_NO IS  NULL OR @V_REAL_START_NO ='' 
      SET @V_REAL_START_NO=@P_START_NO;
--根据类型和前缀查询 锁定数据
 
   UPDATE ECI_NO
      SET TYPE_NAME = TYPE_NAME
    WHERE TYPE_NAME = @P_TYPE_NAME AND START_NO = @P_START_NO;

   SELECT @V_NUM =COUNT (*)
     FROM ECI_NO
    WHERE TYPE_NAME = @P_TYPE_NAME AND START_NO = @P_START_NO;

--判断是否有资料 没有则产生初始值插入库中
   IF @V_NUM = 0
   BEGIN
--启用公共锁
      UPDATE ECI_NO
         SET TYPE_NAME = TYPE_NAME, UPDATE_DATE =GETDATE()
       WHERE TYPE_NAME = 'LOCK';
       
       -- WAITFOR DELAY '00:00:10';
   END 

   SELECT  @V_NUM =COUNT (*)
     FROM ECI_NO
    WHERE TYPE_NAME = @P_TYPE_NAME AND START_NO = @P_START_NO;

   IF @V_NUM = 0
   BEGIN
      SET @V_CURRENT_NO = REPLICATE ('0',@P_LENGTH-1)+'1';
      SET @V_RESULT = @V_REAL_START_NO + @V_CURRENT_NO;

      INSERT INTO ECI_NO
                  (GUID,TYPE_NAME, START_NO, CURRENT_NO,TYPE_DESC
                  )
           VALUES (NEWID(),@P_TYPE_NAME, @P_START_NO, @V_CURRENT_NO,@P_DESC
                  );
   END
   ELSE
   	BEGIN
      SELECT @V_ROWID = [GUID], @V_CURRENT_NO = CURRENT_NO + 1
        FROM ECI_NO
       WHERE TYPE_NAME = @P_TYPE_NAME AND START_NO = @P_START_NO;

        PRINT  @V_CURRENT_NO;
     
      SET @V_CURRENT_NO = REPLICATE ( '0',(@P_LENGTH-1) )+@V_CURRENT_NO;
      SET @V_CURRENT_NO = RIGHT(@V_CURRENT_NO,@P_LENGTH);
      SET  @V_RESULT = @V_REAL_START_NO + @V_CURRENT_NO;

      UPDATE ECI_NO
         SET CURRENT_NO = @V_CURRENT_NO, UPDATE_DATE =GETDATE()
       WHERE [GUID] = @V_ROWID;
   	END
   	
   	
   	INSERT INTO ECI_NO_HELP
   	(
   		GUID,
   		CURRENT_NO
   	)
   	VALUES
   	(
   		@P_GUID,
   	 	@V_RESULT
   	)
   	
END;