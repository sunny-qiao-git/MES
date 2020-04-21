﻿
CREATE VIEW [dbo].[V_SSO_USER_ROLE] AS SELECT DISTINCT U.USERID,U.USERNAME,U.TRUENAME,R.ROLEID,R.NAME AS ROLENAME 
FROM SSO_ENTITY2ROLE A,SSO_USER U,SSO_ROLE  R
WHERE A.ENTITYID=U.USERID 
AND A.ROLEID = R.ROLEID
AND A.ENTITYTYPE='U'
