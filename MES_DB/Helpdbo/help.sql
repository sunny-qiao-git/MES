/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.100.106-SQL2012
 Source Server Type    : SQL Server
 Source Server Version : 11005058
 Source Host           : 192.168.100.106\SQL2012:1433
 Source Catalog        : PT5_ECI_HELP
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11005058
 File Encoding         : 65001

 Date: 02/05/2020 20:44:25
*/


-- ----------------------------
-- Table structure for ECI_BASE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_BASE]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_BASE]
GO

CREATE TABLE [dbo].[ECI_BASE] (
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [SEQ] int  NULL,
  [MEMO] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_DATE] datetime  NULL,
  [CREATE_USER] nvarchar(72) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_DATE] datetime  NULL,
  [UPDATE_USER] nvarchar(72) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_BASE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_DATA_CODE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_DATA_CODE]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_DATA_CODE]
GO

CREATE TABLE [dbo].[ECI_DATA_CODE] (
  [GROUP_CODE] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [KEY_NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [KEY_VALUE] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ID] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [STATUS] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [MEMO] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [UDF1] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [UDF2] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [UDF3] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [UDF4] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_DATE] datetime  NULL,
  [SEQ] int  NULL,
  [CREATE_USER] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_DATE] datetime  NULL,
  [UPDATE_USER] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [ADMIN_LOCK] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_DATA_CODE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_DATA_GROUP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_DATA_GROUP]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_DATA_GROUP]
GO

CREATE TABLE [dbo].[ECI_DATA_GROUP] (
  [GROUP_NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ID] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [STATUS] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [MEMO] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [GROUP_CODE] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_USER] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_DATE] datetime  NULL,
  [UPDATE_USER] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_DATE] datetime  NULL,
  [ADMIN_LOCK] char(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_DATA_GROUP] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_DATA_HELP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_DATA_HELP]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_DATA_HELP]
GO

CREATE TABLE [dbo].[ECI_DATA_HELP] (
  [GUID] nvarchar(72) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [QUERY_TYPE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [STATUS] nvarchar(2) COLLATE Chinese_PRC_CI_AS  NULL,
  [SQL] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [MEMO] nvarchar(800) COLLATE Chinese_PRC_CI_AS  NULL,
  [DATA_CHANGE_CODE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [DATA_CHANGE_NAME] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_DATE] datetime  NULL,
  [ECI_LOCK] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONVERT_SQL] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [PL_VERSION] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_DATE] datetime  NULL,
  [NEED_DOWNLOAD] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [SORT_FIELD] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [MEMO_DETAIL] nvarchar(800) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_USER] nvarchar(72) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_USER] nvarchar(72) COLLATE Chinese_PRC_CI_AS  NULL,
  [ADMIN_LOCK] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [CODE_MEMO] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [NAME_MEMO] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [CHOOSE_SHOW] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [ASSEMBLY_NAME] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [FILTER] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [COMPARE_TYPE] nvarchar(72) COLLATE Chinese_PRC_CI_AS  NULL,
  [QUERY_FIELD] nvarchar(72) COLLATE Chinese_PRC_CI_AS  NULL,
  [LAYOUT] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [USE_CACHE] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_DATA_HELP] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_DEV_TABLE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_DEV_TABLE]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_DEV_TABLE]
GO

CREATE TABLE [dbo].[ECI_DEV_TABLE] (
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TABLE_NAME] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_DEV_TABLE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_DEV_TABLE_ELEMENT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_DEV_TABLE_ELEMENT]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_DEV_TABLE_ELEMENT]
GO

CREATE TABLE [dbo].[ECI_DEV_TABLE_ELEMENT] (
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [TABLE_GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [MAIN_ALIAS] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [PHYSICAL_TYPE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [SQL_ATTRIBUTE] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DICTIONARY_TYPE] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [QUERY_SHOW] int  NULL,
  [GRID_SHOW] int  NULL,
  [EDIT_SHOW] int  NULL,
  [QUERY_SEQ] int  NULL,
  [GRID_SEQ] int  NULL,
  [EDIT_SEQ] int  NULL,
  [NULLABLE_KEY] int  NULL,
  [DICTIONARY_TYPE_CONFIG] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [DB_FIELD] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_DEV_TABLE_ELEMENT] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_DOWNLOAD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_DOWNLOAD]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_DOWNLOAD]
GO

CREATE TABLE [dbo].[ECI_DOWNLOAD] (
  [CODE] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [VERSION] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_DOWNLOAD] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_NO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_NO]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_NO]
GO

CREATE TABLE [dbo].[ECI_NO] (
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TYPE_NAME] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [START_NO] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CURRENT_NO] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TYPE_DESC] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_DATE] datetime  NULL,
  [UPDATE_DATE] datetime  NULL
)
GO

ALTER TABLE [dbo].[ECI_NO] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_NO_HELP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_NO_HELP]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_NO_HELP]
GO

CREATE TABLE [dbo].[ECI_NO_HELP] (
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CURRENT_NO] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_NO_HELP] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_SYS_LOG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_SYS_LOG]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_SYS_LOG]
GO

CREATE TABLE [dbo].[ECI_SYS_LOG] (
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [USER_NAME] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [LOG_DATE] datetime  NULL,
  [TYPE] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [URL] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [EVENT_TARGET] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [EVENT_ARGUMENT] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [KEY_NO] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [PARAM] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [SUCCESS] float(53)  NULL,
  [MESSAGE] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [IP] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [BROWSER] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [OS] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [PAGE_TITLE] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [FUNCTION_NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [SERVICE_ID] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXECUTE_BEGIN] float(53)  NULL,
  [EXECUTE_END] float(53)  NULL,
  [COST] float(53)  NULL,
  [SESSION_ID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [AJAX_ACTION] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [ERROR_TYPE] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [LOGIN_NO] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [USER_COMPANY] nvarchar(150) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_SYS_LOG] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_TABLE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_TABLE]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_TABLE]
GO

CREATE TABLE [dbo].[ECI_TABLE] (
  [TABLE_NAME] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [MAIN_ALIAS] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [GUID] nvarchar(72) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_DATE] datetime  NULL,
  [TABLE_WIDTH] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONDITION] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [COLUMN_COUNT] int  NULL,
  [ADVANCE_CONFIG] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [CODE] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [DEFAULT_CONDITION] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [LOAD_DATA] int  NULL,
  [FUNCTION_ADD] int  NULL,
  [FUNCTION_DELETE] int  NULL,
  [FUNCTION_EXCEL] int  NULL,
  [FUNCTION_EDIT] int  NULL,
  [DEFAULT_SORT] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [JS_FILE] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [GRID_SQL] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [TYPE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEFAULT_PAGE_SIZE] int  NULL,
  [STYLE_FILE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [FUNCTION_BACK] int  NULL,
  [REMARKS] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [QUERY_COLUMN_COUNT] int  NULL,
  [PARAM] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [JS_SCRIPT] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEFAULT_SELECT] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [GRID_LAYOUT] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [KEEP_ADD_STATUS] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [ADD_SEQ] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [FILE_UPLOAD] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_DATE] datetime  NULL,
  [PL_VERSION] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [PL_SAVE_FIXED] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [EDIT_FUNCTION_SAVE] int  NULL,
  [EDIT_FUNCTION_COPY] int  NULL,
  [EDIT_FUNCTION_CLOSE] int  NULL,
  [HAS_DATA_SOURCE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [PRIMARY_KEY_INPUT] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_USER] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_USER] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [DATA_SOURCE] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [SHARE_CONFIG] nvarchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [EDIT_FUNCTION_ADD] int  NULL,
  [FUNCTION_SAVE_BACK] int  NULL,
  [ADVANCE_CONFIG_SERVER] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_TABLE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_TABLE_ELEMENT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_TABLE_ELEMENT]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_TABLE_ELEMENT]
GO

CREATE TABLE [dbo].[ECI_TABLE_ELEMENT] (
  [CODE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [MAIN_ALIAS] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [PHYSICAL_TYPE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [FIELD_LENGTH] int  NULL,
  [WIDTH] int  NULL,
  [LINK_URL] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [SQL_ATTRIBUTE] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [TABLE_GUID] nvarchar(72) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEFAULT_VALUE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [DICTIONARY_TYPE] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [GRID_SHOW] int  NULL,
  [EDIT_SHOW] int  NULL,
  [QUERY_SHOW] int  NULL,
  [GUID] nvarchar(72) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PRIMARY_KEY] int  NULL,
  [NULLABLE_KEY] int  NULL,
  [UNIQUE_KEY] int  NULL,
  [DICTIONARY_TYPE_CONFIG] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [QUERY_SEQ] int  NULL,
  [EDIT_SEQ] int  NULL,
  [EDIT_LOCK_MODE] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYSTEM_DATA] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYSTEM_DATA_TRIGGER] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_DATE] datetime  NULL,
  [COLSPAN] int  NULL,
  [SHOW_CONVERT] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [PRIMARY_CREATOR] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [COPY_REMOVE_DATA] int  NULL,
  [QUERY_ADD_EMPTY] int  NULL,
  [GROUP_CODE] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [EDIT_HIDE_LABEL] int  NULL,
  [GRID_SEQ] int  NULL,
  [CSS] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [WRAP] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTROL_WIDTH] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [NOT_SAVE] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEFAULT_VALUE_QUERY] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [HIDDEN] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [DB_FIELD] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [DATA_FORMAT_GRID] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [DATA_SOURCE] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [GRID_HEAD_ALIGN] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [GRID_ITEM_ALIGN] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [SHOW_TIP] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [SQL_ATTRIBUTE_EX] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTRACT_TEXT] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [TO_DBC] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [EDIT_TIP] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DATA_FORMAT_EDIT] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [EXPORT_TYPE] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [AFTER_ELEMENT] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [EDIT_LABEL_TIP] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [EDIT_NOT_SAVE] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [MEMO] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [AUTO_UPPER] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [BATCH_EDIT] int  NULL
)
GO

ALTER TABLE [dbo].[ECI_TABLE_ELEMENT] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_TABLE_FUNCTION
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_TABLE_FUNCTION]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_TABLE_FUNCTION]
GO

CREATE TABLE [dbo].[ECI_TABLE_FUNCTION] (
  [GUID] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_DATE] datetime  NULL,
  [FUNCTION_NAME] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [SEQ] int  NULL,
  [EXTEND_TYPE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [GRID_LINK_URL] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [JS_SCRIPT] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [SHOW_MODE] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTROL_ID] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [HOT_KEY] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [WIDTH] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [CSS] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [AUTHORITY_ID] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [SHOW_POSITION] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [TABLE_GUID] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [MEMO] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [ICON] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [FUNCTION_DATA] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [WCF_SERVICE_DATA] nvarchar(40) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTROLLER_ACTION] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [PROC_NAME] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_TABLE_FUNCTION] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_TABLE_GROUP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_TABLE_GROUP]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_TABLE_GROUP]
GO

CREATE TABLE [dbo].[ECI_TABLE_GROUP] (
  [GUID] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [DISPLAY_TYPE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [COLUMN_COUNT] int  NULL,
  [SEQ] int  NULL,
  [MEMO] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [GROUP_CODE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [GROUP_NAME] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [TABLE_GUID] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[ECI_TABLE_GROUP] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for ECI_TABLE_TABITEM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ECI_TABLE_TABITEM]') AND type IN ('U'))
	DROP TABLE [dbo].[ECI_TABLE_TABITEM]
GO

CREATE TABLE [dbo].[ECI_TABLE_TABITEM] (
  [GUID] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TABLE_GUID] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [TAB_NAME] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [SEQ] int  NULL,
  [STATUS] nvarchar(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [MEMO] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTROL_ID] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [CONTROL_PATH] nvarchar(400) COLLATE Chinese_PRC_CI_AS  NULL,
  [SHOW_MODE] nvarchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ECI_TABLE_TABITEM] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HELP_CATALOG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HELP_CATALOG]') AND type IN ('U'))
	DROP TABLE [dbo].[HELP_CATALOG]
GO

CREATE TABLE [dbo].[HELP_CATALOG] (
  [ID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [PARENTID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SEQUENCE] float(53)  NULL,
  [STATUS] char(1) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_USER] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_DATE] datetime  NULL,
  [UPDATE_USER] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_DATE] datetime  NULL,
  [FCODE] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [FNAME] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [IS_HELP] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ('Y') NULL,
  [IS_ETIP] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ('Y') NULL
)
GO

ALTER TABLE [dbo].[HELP_CATALOG] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HELP_FEEDBACK
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HELP_FEEDBACK]') AND type IN ('U'))
	DROP TABLE [dbo].[HELP_FEEDBACK]
GO

CREATE TABLE [dbo].[HELP_FEEDBACK] (
  [FB_NO] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [BODY] text COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [STATUS] nvarchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_DATE] datetime  NOT NULL,
  [CREATE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [PAGE_URL] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [PAGE_TITLE] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [IP] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [BROWSER] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [OS] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_CODE] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_INSTANCE] nvarchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEAL_DATE] datetime  NULL,
  [DEAL_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [DEAL_USER_ID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [IS_DELETE] char(1) COLLATE Chinese_PRC_CI_AS DEFAULT ('N') NULL,
  [DELETE_DATE] datetime  NULL,
  [DELETE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [OPER_ID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TEL] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_USER_ID] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[HELP_FEEDBACK] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'GUID',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'FB_NO'
GO

EXEC sp_addextendedproperty
'MS_Description', N'反馈内容',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'BODY'
GO

EXEC sp_addextendedproperty
'MS_Description', N'状态',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'STATUS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'反馈日期',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'CREATE_DATE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'反馈人',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'页面地址',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'PAGE_URL'
GO

EXEC sp_addextendedproperty
'MS_Description', N'页面标题',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'PAGE_TITLE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户IP地址',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'IP'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户浏览器',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'BROWSER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户操作系统',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'OS'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统编码',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'SYS_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实例编码',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'SYS_INSTANCE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'处理日期',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'DEAL_DATE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'处理人',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'DEAL_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'处理人ＩＤ',
'SCHEMA', N'dbo',
'TABLE', N'HELP_FEEDBACK',
'COLUMN', N'DEAL_USER_ID'
GO


-- ----------------------------
-- Table structure for HELP_INFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HELP_INFO]') AND type IN ('U'))
	DROP TABLE [dbo].[HELP_INFO]
GO

CREATE TABLE [dbo].[HELP_INFO] (
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TITLE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [BODY] text COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_DATE] datetime  NULL,
  [CREATE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_DATE] datetime  NULL,
  [UPDATE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CATALOG_ID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [READ_COUNT] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[HELP_INFO] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HELP_INFO_HISTORY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HELP_INFO_HISTORY]') AND type IN ('U'))
	DROP TABLE [dbo].[HELP_INFO_HISTORY]
GO

CREATE TABLE [dbo].[HELP_INFO_HISTORY] (
  [OPER_TYPE] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [OPER_DATE] datetime  NULL,
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL,
  [CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [TITLE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [BODY] text COLLATE Chinese_PRC_CI_AS  NULL,
  [CREATE_DATE] datetime  NULL,
  [CREATE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [UPDATE_DATE] datetime  NULL,
  [UPDATE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CATALOG_ID] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [READ_COUNT] int  NULL,
  [OPER_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [AUTO_ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[HELP_INFO_HISTORY] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for HELP_MAPPING
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HELP_MAPPING]') AND type IN ('U'))
	DROP TABLE [dbo].[HELP_MAPPING]
GO

CREATE TABLE [dbo].[HELP_MAPPING] (
  [ID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [PAGE_TITLE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [PAGE_TYPE_NAME] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [HELP_CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_DATE] datetime  NULL,
  [CREATE_USER] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_CODE] nvarchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[HELP_MAPPING] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ID',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'ID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'页面标题',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'PAGE_TITLE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'页面地址',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'PAGE_TYPE_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'帮助代码',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'HELP_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建日期',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'CREATE_DATE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建人',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'CREATE_USER'
GO

EXEC sp_addextendedproperty
'MS_Description', N'系统代码',
'SCHEMA', N'dbo',
'TABLE', N'HELP_MAPPING',
'COLUMN', N'SYS_CODE'
GO


-- ----------------------------
-- Table structure for HELP_READ
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HELP_READ]') AND type IN ('U'))
	DROP TABLE [dbo].[HELP_READ]
GO

CREATE TABLE [dbo].[HELP_READ] (
  [GUID] nvarchar(36) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [HELP_CODE] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [USER_NAME] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_DATE] datetime  NOT NULL,
  [LOGIN_NO] nvarchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [TITLE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_CODE] nvarchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [SYS_INSTANCE] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [URL_REFERRER] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [USER_IP] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[HELP_READ] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'GUID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'帮助编码',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'HELP_CODE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'USER_NAME'
GO

EXEC sp_addextendedproperty
'MS_Description', N'阅读时间',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'CREATE_DATE'
GO

EXEC sp_addextendedproperty
'MS_Description', N'登录账户',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'LOGIN_NO'
GO

EXEC sp_addextendedproperty
'MS_Description', N'标题',
'SCHEMA', N'dbo',
'TABLE', N'HELP_READ',
'COLUMN', N'TITLE'
GO


-- ----------------------------
-- Table structure for HELP_TIP_INFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HELP_TIP_INFO]') AND type IN ('U'))
	DROP TABLE [dbo].[HELP_TIP_INFO]
GO

CREATE TABLE [dbo].[HELP_TIP_INFO] (
  [GUID] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CATALOG_ID] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [SYS_CODE] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CODE] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NAME] varchar(200) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [NOTE] text COLLATE Chinese_PRC_CI_AS  NULL,
  [STATUS] char(1) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [CREATE_DATE] datetime  NOT NULL,
  [CREATE_USER] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [UPDATE_DATE] datetime  NOT NULL,
  [UPDATE_USER] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[HELP_TIP_INFO] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- function structure for F_CODE_NAME
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[F_CODE_NAME]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[F_CODE_NAME]
GO

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
GO


-- ----------------------------
-- function structure for F_NAME
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[F_NAME]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[F_NAME]
GO

CREATE FUNCTION [dbo].[F_NAME]
(
	@P_CODE NVARCHAR(100)
,   @P_TYPE NVARCHAR(100)
)
RETURNS NVARCHAR(1000)
AS
BEGIN
	DECLARE @V_NAME NVARCHAR(1000);
    SET @V_NAME=''; 
      
 IF @P_TYPE='XXX1'
    --XXX1 
        SELECT @V_NAME =MAX(TYPE_DESC) FROM ECI_NO WHERE TYPE_NAME =@P_CODE;
     
 ELSE  IF  @P_TYPE='XXX2'
    --XXX2
         SELECT @V_NAME =MAX(TYPE_DESC) FROM ECI_NO WHERE TYPE_NAME =@P_CODE;
 RETURN @V_NAME;
END;
GO


-- ----------------------------
-- procedure structure for F_ECI_GET_NO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[F_ECI_GET_NO]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[F_ECI_GET_NO]
GO

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
GO


-- ----------------------------
-- Primary Key structure for table ECI_BASE
-- ----------------------------
ALTER TABLE [dbo].[ECI_BASE] ADD CONSTRAINT [PK_ECI_BASE] PRIMARY KEY CLUSTERED ([GUID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_DATA_CODE
-- ----------------------------
ALTER TABLE [dbo].[ECI_DATA_CODE] ADD CONSTRAINT [PK_ECI_DATA_CODE] PRIMARY KEY CLUSTERED ([GROUP_CODE], [KEY_VALUE])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_DATA_GROUP
-- ----------------------------
ALTER TABLE [dbo].[ECI_DATA_GROUP] ADD CONSTRAINT [PK_ECI_DATA_GROUP] PRIMARY KEY CLUSTERED ([GROUP_CODE])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_DATA_HELP
-- ----------------------------
ALTER TABLE [dbo].[ECI_DATA_HELP] ADD CONSTRAINT [PK_ECI_DATA_HELP] PRIMARY KEY CLUSTERED ([QUERY_TYPE])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_DOWNLOAD
-- ----------------------------
ALTER TABLE [dbo].[ECI_DOWNLOAD] ADD CONSTRAINT [PK_ECI_DOWNLOAD] PRIMARY KEY CLUSTERED ([CODE])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table ECI_NO
-- ----------------------------
ALTER TABLE [dbo].[ECI_NO] ADD CONSTRAINT [UK_ECI_NO] UNIQUE NONCLUSTERED ([GUID] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_NO
-- ----------------------------
ALTER TABLE [dbo].[ECI_NO] ADD CONSTRAINT [PK_ECI_NO] PRIMARY KEY CLUSTERED ([TYPE_NAME], [START_NO])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_NO_HELP
-- ----------------------------
ALTER TABLE [dbo].[ECI_NO_HELP] ADD CONSTRAINT [PK_ECI_NO_HELP] PRIMARY KEY CLUSTERED ([GUID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_SYS_LOG
-- ----------------------------
ALTER TABLE [dbo].[ECI_SYS_LOG] ADD CONSTRAINT [PK_ECI_SYS_LOG] PRIMARY KEY CLUSTERED ([GUID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table ECI_TABLE
-- ----------------------------
ALTER TABLE [dbo].[ECI_TABLE] ADD CONSTRAINT [UK_ECI_TABLE] UNIQUE NONCLUSTERED ([GUID] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_TABLE
-- ----------------------------
ALTER TABLE [dbo].[ECI_TABLE] ADD CONSTRAINT [PK_ECI_TABLE] PRIMARY KEY CLUSTERED ([CODE])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_TABLE_ELEMENT
-- ----------------------------
ALTER TABLE [dbo].[ECI_TABLE_ELEMENT] ADD CONSTRAINT [PK_ECI_TABLE_ELEMENT] PRIMARY KEY CLUSTERED ([GUID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_TABLE_FUNCTION
-- ----------------------------
ALTER TABLE [dbo].[ECI_TABLE_FUNCTION] ADD CONSTRAINT [PK_ECI_TABLE_FUNCTION] PRIMARY KEY CLUSTERED ([GUID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_TABLE_GROUP
-- ----------------------------
ALTER TABLE [dbo].[ECI_TABLE_GROUP] ADD CONSTRAINT [PK_ECI_TABLE_GROUP] PRIMARY KEY CLUSTERED ([GUID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ECI_TABLE_TABITEM
-- ----------------------------
ALTER TABLE [dbo].[ECI_TABLE_TABITEM] ADD CONSTRAINT [PK_ECI_TABLE_TABITEM] PRIMARY KEY CLUSTERED ([GUID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table HELP_CATALOG
-- ----------------------------
ALTER TABLE [dbo].[HELP_CATALOG] ADD CONSTRAINT [PK_ECI_HELP_CATALOG] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table HELP_READ
-- ----------------------------
ALTER TABLE [dbo].[HELP_READ] ADD CONSTRAINT [PK_ECI_HELP_READ] PRIMARY KEY CLUSTERED ([GUID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table HELP_INFO
-- ----------------------------
ALTER TABLE [dbo].[HELP_INFO] ADD CONSTRAINT [FK_ECI_HELP] FOREIGN KEY ([CATALOG_ID]) REFERENCES [dbo].[HELP_CATALOG] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

