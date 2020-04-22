ALTER PROCEDURE [dbo].[SP_MES_BD_ZY_IMP]
    (
        @P_IMP_ID VARCHAR(50) --导入批次号
    )
AS
    BEGIN
        DECLARE @V_BATCH_ID VARCHAR(100);

        SET @V_BATCH_ID = @P_IMP_ID;

        --根据工号将已有删除
        DELETE dbo.MES_BD_ZY_STATUS
        WHERE  FGUID IN (   SELECT GUID
                            FROM   dbo.MES_BD_ZY
                            WHERE  BH IN (   SELECT BH
                                             FROM   MES_BD_ZY_IMP
                                             WHERE  IMP_ID = @V_BATCH_ID ));
        DELETE MES_BD_ZY
        WHERE  BH IN (   SELECT BH
                         FROM   MES_BD_ZY_IMP
                         WHERE  IMP_ID = @V_BATCH_ID );


        --写入人员表头
        INSERT INTO dbo.MES_BD_ZY ( GUID ,
                                    BH ,
                                    CODE ,
                                    NAME ,
                                    STATUS ,
                                    RZ_DATE ,
                                    LZ_DATE ,
                                    SSCJ ,
                                    SSCSCX ,
                                    ZW ,
                                    GZ ,
                                    SSBZ ,
                                    TEL ,
                                    ID_CARD ,
                                    KHYH ,
                                    KHM ,
                                    BANK ,
                                    WHCD ,
                                    BYXX ,
                                    BYZY ,
                                    BYNF ,
                                    PROVINCE ,
                                    CITY ,
                                    ADDRESS ,
                                    MAIL ,
                                    REMARK ,
                                    JS1 ,
                                    JS1_RELATION ,
                                    JS1_TEL ,
                                    JS1_ADDRESS ,
                                    JS2 ,
                                    JS2_RELATION ,
                                    JS2_TEL ,
                                    JS2_ADDRESS ,
                                    JS3 ,
                                    JS3_RELATION ,
                                    JS3_TEL ,
                                    JS3_ADDRESS ,
                                    JS4 ,
                                    JS4_RELATION ,
                                    JS4_TEL ,
                                    JS4_ADDRESS ,
                                    CAR_NO ,
                                    CAR_TYPE ,
                                    PIC1 ,
                                    PIC1_PATH ,
                                    PIC2 ,
                                    PIC2_PATH ,
                                    CREATE_USER ,
                                    CREATE_USER_NAME ,
                                    CREATE_DATE ,
                                    UPDATE_USER ,
                                    UPDATE_USER_NAME ,
                                    UPDATE_DATE ,
                                    COMPANY_CODE ,
                                    COMPANY_NAME ,
                                    PARENTID )
                    SELECT GUID ,             --主键
                           BH ,               --工号
                           CODE ,             --职员代码
                           NAME ,             --职员名
                           STATUS ,           --职员状态
                           RZ_DATE ,          --入职日期
                           LZ_DATE ,          --离职日期
                           SSCJ ,             --所属车间
                           SSCSCX ,           --所属生产线
                           ZW ,               --职务
                           GZ ,               --工种
                           SSBZ ,             --所属班组
                           TEL ,              --移动电话
                           ID_CARD ,          --身份证号码
                           KHYH ,             --开户银行
                           KHM ,              --开户名
                           BANK ,             --银行账号
                           WHCD ,             --文化程度
                           BYXX ,             --毕业学校
                           BYZY ,             --毕业专业
                           BYNF ,             --毕业年份
                           PROVINCE ,         --省份
                           CITY ,             --城市
                           ADDRESS ,          --住址
                           MAIL ,             --电子邮件
                           REMARK ,           --备注
                           JS1 ,              --家属1
                           JS1_RELATION ,     --家属1关系
                           JS1_TEL ,          --家属1电话
                           JS1_ADDRESS ,      --家属1住址
                           JS2 ,              --家属2
                           JS2_RELATION ,     --家属2关系
                           JS2_TEL ,          --家属2电话
                           JS2_ADDRESS ,      --家属2住址
                           JS3 ,              --家属3
                           JS3_RELATION ,     --家属3关系
                           JS3_TEL ,          --家属3电话
                           JS3_ADDRESS ,      --家属3住址
                           JS4 ,              --家属4
                           JS4_RELATION ,     --家属4关系
                           JS4_TEL ,          --家属4电话
                           JS4_ADDRESS ,      --家属4住址
                           CAR_NO ,           --车牌号
                           CAR_TYPE ,         --车辆类型
                           PIC1 ,             --职员缩略图
                           PIC1_PATH ,        --职员缩略图路径
                           PIC2 ,             --照片2
                           PIC2_PATH ,        --照片2路径
                           CREATE_USER ,      --创建人
                           CREATE_USER_NAME , --创建人姓名
                           CREATE_DATE ,      --创建日期
                           UPDATE_USER ,      --
                           UPDATE_USER_NAME , --
                           UPDATE_DATE ,      --
                           COMPANY_CODE ,     --
                           COMPANY_NAME ,     --
                           PARENTID
                    FROM   dbo.MES_BD_ZY_IMP
                    WHERE  IMP_ID = @V_BATCH_ID;

        --写入职员表体
        INSERT INTO dbo.MES_BD_ZY_STATUS ( GUID ,
                                           FGUID ,
                                           NAME ,
                                           RZ_DATE ,
                                           LZ_DATE ,
                                           SSCJ ,
                                           SSCSCX ,
                                           ZW ,
                                           GZ ,
                                           SSBZ ,
                                           GZJJGZBL ,
                                           REMARK ,
                                           CREATE_USER ,
                                           CREATE_USER_NAME ,
                                           CREATE_DATE ,
                                           UPDATE_USER ,
                                           UPDATE_USER_NAME ,
                                           UPDATE_DATE ,
                                           COMPANY_CODE ,
                                           COMPANY_NAME )
                    SELECT GUID ,             --主键
                           FGUID ,            --关键职员表头主键
                           NAME ,             --职员
                           RZ_DATE ,          --入职日期
                           LZ_DATE ,          --离职/转岗日期
                           SSCJ ,             --所属车间
                           SSCSCX ,           --所属生产线
                           ZW ,               --职务
                           GZ ,               --工种
                           SSBZ ,             --所属班组
                           GZJJGZBL ,         --工种计件工资比例
                           REMARK ,           --备注
                           CREATE_USER ,      --创建人
                           CREATE_USER_NAME , --创建人姓名
                           CREATE_DATE ,      --创建日期
                           UPDATE_USER ,      --
                           UPDATE_USER_NAME , --
                           UPDATE_DATE ,      --
                           COMPANY_CODE ,     --
                           COMPANY_NAME
                    FROM   dbo.MES_BD_ZY_STATUS_IMP
                    WHERE  IMP_ID = @V_BATCH_ID;
    END;
