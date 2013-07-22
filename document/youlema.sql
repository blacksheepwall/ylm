DROP TABLE IF EXISTS AGENTS;

DROP TABLE IF EXISTS AGENTS_ACCOUNT;

DROP TABLE IF EXISTS AGENTS_FAVORITES;

DROP TABLE IF EXISTS AGENTS_MENU;

DROP TABLE IF EXISTS AGENTS_PRIVILEGE;

DROP TABLE IF EXISTS AGENTS_ROLE;

DROP TABLE IF EXISTS AGENTS_SHORTCUT_MENU;

DROP TABLE IF EXISTS AGENTS_SMSC_CONFIG;

DROP TABLE IF EXISTS AGENTS_STATISTICS;

DROP TABLE IF EXISTS ASS_AGENTS_ACCOUNT_PRIVILEGE;

DROP TABLE IF EXISTS ASS_AGENTS_ACCOUNT_ROLE;

DROP TABLE IF EXISTS ASS_ROLE_PRIVILEGE;

DROP TABLE IF EXISTS ORDER_TOUR_PRODUCT;

DROP TABLE IF EXISTS PRODUCT_TYPE;

DROP TABLE IF EXISTS REPORT_ACHIEVEMENTS;

DROP TABLE IF EXISTS REPROT_STORE_SALE;

DROP TABLE IF EXISTS TOUR_LINE;

/*==============================================================*/
/* Table: AGENTS                                                */
/*==============================================================*/
CREATE TABLE AGENTS
(
   AGENTS_ID            BIGINT NOT NULL AUTO_INCREMENT,
   AGENTS_NAME          VARCHAR(64),
   AGENTS_TYPE          VARCHAR(32),
   AGENTS_CODE          VARCHAR(32),
   AGENTS_TEL           VARCHAR(16),
   AGENTS_FAX           VARCHAR(16),
   AGENTS_MAIL          VARCHAR(64),
   AGENTS_SITE          VARCHAR(2000),
   AGENTS_ADDR          VARCHAR(256),
   AGENTS_LEVEL         VARCHAR(32),
   OPERATING_RANGE      VARCHAR(64),
   APPLICATION_CODE     VARCHAR(32),
   LICENSE_NO           VARCHAR(32),
   TYPE_OF_CONTRACT     VARCHAR(32),
   IS_SHOW_PRICES       TINYINT(1),
   AGENTS_STATUS        VARCHAR(32),
   ACCOUNT_EXECUTIVE    VARCHAR(64),
   AGENTS_CONTACT       VARCHAR(64),
   CONTACT_PHONE        VARCHAR(16),
   AGENTS_INTRODUCTION  VARCHAR(4000),
   FINANCAIL_INFO_AUDIT_STATUS VARCHAR(32),
   FINANCAIL_INFO_AUDITOR VARCHAR(64),
   GMT_FINANCAIL_INFO_AUDIT DATE,
   FINANCAIL_INFO_AUDIT_OPINION VARCHAR(512),
   CREATOR              VARCHAR(64),
   GMT_CREATE           DATETIME,
   MODIFIER             VARCHAR(64),
   GMT_MODIFY           DATETIME,
   IS_EDIT              TINYINT(1),
   IS_LIMIT_BOOKING     TINYINT(1),
   LEGAL_REPRESENTATIVE VARCHAR(64),
   PRIMARY KEY (AGENTS_ID)
);

ALTER TABLE AGENTS COMMENT '代理商信息';

/*==============================================================*/
/* Table: AGENTS_ACCOUNT                                        */
/*==============================================================*/
CREATE TABLE AGENTS_ACCOUNT
(
   AGENTS_ACCOUNT_ID    BIGINT NOT NULL AUTO_INCREMENT,
   AGENTS_ID            BIGINT,
   AGENTS_PARENT_ID     BIGINT,
   ACCOUNT_STATUS       VARCHAR(32),
   MEMO                 VARCHAR(512),
   CREATOR              VARCHAR(64),
   GMT_CREATE           DATETIME,
   MODIFIER             VARCHAR(64),
   GMT_MODIFY           DATETIME,
   ACCOUNT_LOGIN_NAME   VARCHAR(64),
   ACCOUNT_PASSWORD     VARCHAR(64),
   EMAIL                VARCHAR(64),
   NICK_NAME            VARCHAR(64),
   LAST_LOGIN_TIME      DATETIME,
   NAME                 VARCHAR(64),
   SEX                  TINYINT(1),
   DEPART               VARCHAR(32),
   DUTY                 VARCHAR(32),
   EMPLOYEE_CODE        VARCHAR(32),
   TELPHONE             VARCHAR(16),
   MOBILE               VARCHAR(16),
   QQ                   VARCHAR(32),
   USER_ADDR            VARCHAR(64),
   PRIMARY KEY (AGENTS_ACCOUNT_ID)
);

ALTER TABLE AGENTS_ACCOUNT COMMENT '代理商帐号';

/*==============================================================*/
/* Table: AGENTS_FAVORITES                                      */
/*==============================================================*/
CREATE TABLE AGENTS_FAVORITES
(
   AGENTS_FAVORITES_ID  BIGINT NOT NULL AUTO_INCREMENT,
   AGENTS_ACCOUNT_ID    BIGINT,
   GMT_OF_FAVORITES     DATETIME,
   MEMO                 VARCHAR(1024),
   BUSINESS_ID          BIGINT,
   BUSINESS_TYPE        VARCHAR(32),
   PRIMARY KEY (AGENTS_FAVORITES_ID)
);

ALTER TABLE AGENTS_FAVORITES COMMENT '代理商收藏';

/*==============================================================*/
/* Table: AGENTS_MENU                                           */
/*==============================================================*/
CREATE TABLE AGENTS_MENU
(
   AGENTS_MENU_ID       BIGINT NOT NULL AUTO_INCREMENT,
   PARENT_ID            BIGINT,
   AGENTS_MENU_NAME     VARCHAR(64),
   AGENTS_MENU_CODE     VARCHAR(32) NOT NULL,
   MEMO                 VARCHAR(512),
   AGENTS_MENU_ORD      INT NOT NULL,
   AGENTS_MENU_LEVEL    INT NOT NULL,
   AGENTS_MENU_ACT      VARCHAR(256),
   AGENTS_MENU_TARGET   VARCHAR(32),
   AGENTS_MENU_ICON     VARCHAR(64),
   CREATOR              VARCHAR(64),
   GMT_CREATE           DATETIME,
   MODIFIER             VARCHAR(64),
   GMT_MODIFY           DATETIME,
   BIND_PRIVILEGE       VARCHAR(512),
   PRIMARY KEY (AGENTS_MENU_ID)
);

ALTER TABLE AGENTS_MENU COMMENT '代理商菜单';

/*==============================================================*/
/* Table: AGENTS_PRIVILEGE                                      */
/*==============================================================*/
CREATE TABLE AGENTS_PRIVILEGE
(
   AGENTS_PRIVILEGE_ID  BIGINT NOT NULL AUTO_INCREMENT,
   PARENT_ID            BIGINT,
   AGENTS_PRIVILEGE_NAME VARCHAR(64),
   AGENTS_PRIVILEGE_CODE VARCHAR(32),
   AGENTS_PRIVILEGE_TYPE VARCHAR(32),
   AGENTS_PRIVILEGE_MEMO VARCHAR(1024),
   CREATOR              VARCHAR(64),
   GMT_CREATE           DATETIME,
   MODIFIER             VARCHAR(64),
   GMT_MODIFY           DATETIME,
   PRIMARY KEY (AGENTS_PRIVILEGE_ID)
);

ALTER TABLE AGENTS_PRIVILEGE COMMENT '代理商权限';

/*==============================================================*/
/* Table: AGENTS_ROLE                                           */
/*==============================================================*/
CREATE TABLE AGENTS_ROLE
(
   AGENTS_ROLE_ID       BIGINT NOT NULL AUTO_INCREMENT,
   AGENTS_ROLE_NAME     VARCHAR(64),
   AGENTS_ROLE_CODE     VARCHAR(32),
   AGENTS_ROLE_TYPE     VARCHAR(32),
   MEMO                 VARCHAR(512),
   CREATOR              VARCHAR(64),
   GMT_CREATE           DATETIME,
   MODIFIER             VARCHAR(64),
   GMT_MODIFY           DATETIME,
   PRIMARY KEY (AGENTS_ROLE_ID)
);

ALTER TABLE AGENTS_ROLE COMMENT '代理商角色';

/*==============================================================*/
/* Table: AGENTS_SHORTCUT_MENU                                  */
/*==============================================================*/
CREATE TABLE AGENTS_SHORTCUT_MENU
(
   AGENTS_SHORTCUT_MENU_ID BIGINT NOT NULL AUTO_INCREMENT,
   AGENTS_ACCOUNT_ID    BIGINT,
   AGENTS_MENU_ID       BIGINT,
   IS_ENABLE            TINYINT(1),
   PRIMARY KEY (AGENTS_SHORTCUT_MENU_ID)
);

ALTER TABLE AGENTS_SHORTCUT_MENU COMMENT '快捷菜单';

/*==============================================================*/
/* Table: AGENTS_SMSC_CONFIG                                    */
/*==============================================================*/
CREATE TABLE AGENTS_SMSC_CONFIG
(
   SMSC_CONFIG_ID       BIGINT NOT NULL AUTO_INCREMENT,
   AGENTS_ID            BIGINT,
   短信帐号                 VARCHAR(64),
   短信帐号密码               VARCHAR(64),
   短信签名                 VARCHAR(256),
   PRIMARY KEY (SMSC_CONFIG_ID)
);

ALTER TABLE AGENTS_SMSC_CONFIG COMMENT '短信配置';

/*==============================================================*/
/* Table: AGENTS_STATISTICS                                     */
/*==============================================================*/
CREATE TABLE AGENTS_STATISTICS
(
   AGENTS_ID            BIGINT,
   TOTAL_OF_ORDERS      INT,
   TOTAL_TRANSACTIONS   DECIMAL(10,2),
   NUMBER_OF_ADULTS     INT,
   NUMBER_OF_CHILDREN   INT
);

ALTER TABLE AGENTS_STATISTICS COMMENT '代理商统计';

/*==============================================================*/
/* Table: ASS_AGENTS_ACCOUNT_PRIVILEGE                          */
/*==============================================================*/
CREATE TABLE ASS_AGENTS_ACCOUNT_PRIVILEGE
(
   ASS_AGENTS_ACCOUNT_PRIVILEGE_ID BIGINT NOT NULL AUTO_INCREMENT,
   AGENTS_ACCOUNT_ID    BIGINT NOT NULL,
   AGENTS_PRIVILEGE_ID  BIGINT NOT NULL,
   PRIMARY KEY (ASS_AGENTS_ACCOUNT_PRIVILEGE_ID, AGENTS_ACCOUNT_ID, AGENTS_PRIVILEGE_ID)
);

ALTER TABLE ASS_AGENTS_ACCOUNT_PRIVILEGE COMMENT 'Ass_Agents_Account_Privilege';

/*==============================================================*/
/* Table: ASS_AGENTS_ACCOUNT_ROLE                               */
/*==============================================================*/
CREATE TABLE ASS_AGENTS_ACCOUNT_ROLE
(
   ASS_AGENTS_ACCOUNT_ROLE_ID BIGINT NOT NULL AUTO_INCREMENT,
   AGENTS_ROLE_ID       BIGINT NOT NULL,
   AGENTS_ACCOUNT_ID    BIGINT NOT NULL,
   PRIMARY KEY (ASS_AGENTS_ACCOUNT_ROLE_ID, AGENTS_ROLE_ID, AGENTS_ACCOUNT_ID)
);

ALTER TABLE ASS_AGENTS_ACCOUNT_ROLE COMMENT 'Ass_Agents_Account_Role';

/*==============================================================*/
/* Table: ASS_ROLE_PRIVILEGE                                    */
/*==============================================================*/
CREATE TABLE ASS_ROLE_PRIVILEGE
(
   ASS_ROLE_PRIVILEGE_ID BIGINT NOT NULL AUTO_INCREMENT,
   AGENTS_PRIVILEGE_ID  BIGINT NOT NULL,
   AGENTS_ROLE_ID       BIGINT NOT NULL,
   PRIMARY KEY (ASS_ROLE_PRIVILEGE_ID , AGENTS_PRIVILEGE_ID, AGENTS_ROLE_ID )
);

ALTER TABLE ASS_ROLE_PRIVILEGE COMMENT 'Ass_Role_Privilege';

/*==============================================================*/
/* Table: ORDER_TOUR_PRODUCT                                    */
/*==============================================================*/
CREATE TABLE ORDER_TOUR_PRODUCT
(
   COLUMN_1             CHAR(10)
);

ALTER TABLE ORDER_TOUR_PRODUCT COMMENT '订单旅游产品';

/*==============================================================*/
/* Table: PRODUCT_TYPE                                          */
/*==============================================================*/
CREATE TABLE PRODUCT_TYPE
(
   PRODUCT_TYPE_ID      BIGINT NOT NULL AUTO_INCREMENT,
   PARENT_ID            BIGINT,
   PRODUCT_TYPE_NAME    VARCHAR(64),
   PRODUCT_TYPE_ORD     INT,
   CREATOR              VARCHAR(64),
   GMT_CREATE           DATETIME,
   MODIFIER             VARCHAR(64),
   GMT_MODIFY           DATETIME,
   PRODUCT_TYPE_CITY    VARCHAR(256),
   PRODUCT_CODE         VARCHAR(32),
   PRIMARY KEY (PRODUCT_TYPE_ID)
);

ALTER TABLE PRODUCT_TYPE COMMENT '产品分类';

/*==============================================================*/
/* Table: REPORT_ACHIEVEMENTS                                   */
/*==============================================================*/
CREATE TABLE REPORT_ACHIEVEMENTS
(
   ACHIEVEMENTS_REPORT_ID BIGINT NOT NULL AUTO_INCREMENT,
   PRODUCT_ID           BIGINT,
   PRODUCT_TYPE         VARCHAR(32),
   MAIN_TYPE_CODE       VARCHAR(32),
   MINOR_TYPE_CODE      VARCHAR(32),
   TOTAL_ADULT          INT,
   TOTAL_CHILD          INT,
   TOTAL_ORDER          INT,
   TOTAL_EXPENSE        DECIMAL(10,2),
   TOTAL_COST           DECIMAL(10,2),
   DEPT_PRODUCT         VARCHAR(32),
   OP                   VARCHAR(32),
   DEPT_OP              VARCHAR(32),
   STORE_SALESMAN       VARCHAR(32),
   DEPT_STORE           VARCHAR(32),
   GMT_LAST_PRODUCT_MODIFY DATE,
   PRIMARY KEY (ACHIEVEMENTS_REPORT_ID)
);

ALTER TABLE REPORT_ACHIEVEMENTS COMMENT '业绩报表';

/*==============================================================*/
/* Table: REPROT_STORE_SALE                                     */
/*==============================================================*/
CREATE TABLE REPROT_STORE_SALE
(
   SALE_REPORT_ID       BIGINT NOT NULL AUTO_INCREMENT,
   GMT_ORDER            DATE,
   PRODUCT_ID           BIGINT,
   PRODUCT_TYPE         VARCHAR(32),
   MAIN_TYPE_CODE       VARCHAR(32),
   MINOR_TYPE_CODE      VARCHAR(32),
   TOTAL_ADULT          INT,
   TOTAL_CHILD          INT,
   TOTAL_ORDER          INT,
   TOTAL_EXPENSE        DECIMAL(10,2),
   TOTAL_COST           DECIMAL(10,2),
   DEPT_PRODUCT         VARCHAR(32),
   OP                   VARCHAR(32),
   DEPT_OP              VARCHAR(32),
   STORE_SALESMAN       VARCHAR(32),
   DEPT_STORE           VARCHAR(32),
   GMT_LAST_PRODUCT_MODIFY DATE,
   PRIMARY KEY (SALE_REPORT_ID)
);

ALTER TABLE REPROT_STORE_SALE COMMENT '门店销售报表';

/*==============================================================*/
/* Table: TOUR_LINE                                             */
/*==============================================================*/
CREATE TABLE TOUR_LINE
(
   TOUR_LINE_ID         BIGINT NOT NULL AUTO_INCREMENT,
   PRODUCT_MAIN_TYPE_ID BIGINT,
   PRODUCT_MINOR_TYPE_ID BIGINT,
   LINE_CODE            VARCHAR(64) COMMENT '线路编号',
   LINE_NAME            VARCHAR(256) COMMENT '线路名称',
   LINE_TOPIC           VARCHAR(256) COMMENT '线路主题',
   LINE_TYPE            VARCHAR(32) COMMENT '线路类型',
   LINE_BRAND           VARCHAR(32) COMMENT '线路品牌',
   TOUR_CARDS           VARCHAR(256) COMMENT '旅行证件',
   BEFORE_DAYS_GRANT_VISTA INT,
   DAYS_NIGHT           INT COMMENT '旅游天数夜晚数',
   DAYS_DURING          INT COMMENT '旅游天数白天数',
   LEAVE_CITY           VARCHAR(32) COMMENT '出发城市',
   LEAVE_CITY_TRAFFIC   VARCHAR(32) COMMENT '出发城市交通',
   RETURN_CITY          VARCHAR(32) COMMENT '返回城市',
   RETURN_CITY_TRAFFIC  VARCHAR(32) COMMENT '返回城市交通',
   THROUGH_CITYS        VARCHAR(256),
   TOUR_ATTRACTIONS     VARCHAR(256) COMMENT '游览景点',
   KEY_WORDS            VARCHAR(256) COMMENT '关键字',
   TOUR_HIGHLIGHTS      TEXT,
   DESIGN_STATUS        CHAR(1) COMMENT '设计状态',
   GMT_DESING_COMPLETE  DATETIME COMMENT '设计完成时间',
   IS_ENABLE            NUMERIC(1,0),
   GMT_CREATE           DATETIME,
   CREATOR              VARCHAR(64),
   GMT_MODIFY           DATETIME,
   MODIFIER             VARCHAR(64),
   MEMO                 VARCHAR(512),
   AUDIT_OPINION        VARCHAR(512),
   AUDIT_STATUS         VARCHAR(32),
   TARGET_CUSTOMERS     VARCHAR(256) COMMENT '目标客户，多个逗号分隔',
   TOUR_PURPOSE         VARCHAR(256) COMMENT '出行目的，多个逗号分隔',
   IS_DELETED           NUMERIC(1,0),
   PV                   NUMERIC(11,0),
   APPLICABLE_TYPE      VARCHAR(64) COMMENT '适用产品类型，多个逗号分隔',
   PRIMARY KEY (TOUR_LINE_ID)
);

ALTER TABLE TOUR_LINE COMMENT '旅游线路';
