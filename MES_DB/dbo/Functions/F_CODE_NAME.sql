﻿
CREATE FUNCTION [dbo].[F_CODE_NAME](@CODE VARCHAR(40),@TYPE VARCHAR(30))
RETURNS VARCHAR(500)
AS
BEGIN
  DECLARE @RESULT VARCHAR(1000)
  IF @CODE='' OR @CODE IS NULL 
     RETURN ''
     
     SET @RESULT=@CODE+ISNULL('|'+ dbo.F_NAME(@CODE,@TYPE),'')
 
RETURN @RESULT
END
