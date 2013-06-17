drop table if exists Agents;

drop table if exists Agents_Account;

drop table if exists Agents_Account_Admin;

drop table if exists Agents_Favorites;

drop table if exists Agents_Menu;

drop table if exists Agents_Privilege;

drop table if exists Agents_Role;

drop table if exists Agents_Statistics;

drop table if exists Ass_Agents_Account_Privilege;

drop table if exists Ass_Agents_Account_Role;

drop table if exists Ass_Role_Privilege;

drop table if exists Order_Tour_Product;

drop table if exists Product_Type;

drop table if exists Report_Achievements;

drop table if exists Reprot_Store_Sale;

drop table if exists Shortcut_Menu;

drop table if exists Smsc_Config;

drop table if exists Tour_Line;

/*==============================================================*/
/* Table: Agents                                                */
/*==============================================================*/
create table Agents
(
   agents_Id            bigint not null,
   smsc_Config_Id       bigint,
   agents_Account_Id    bigint,
   agents_Name          varchar(64),
   agents_Type          varchar(32),
   agents_Code          varchar(32),
   agents_Tel           varchar(16),
   agents_Fax           varchar(16),
   agents_Mail          varchar(64),
   agents_Site          varchar(2000),
   agents_Addr          varchar(256),
   agents_Level         varchar(32),
   operating_Range      varchar(64),
   application_Code     varchar(32),
   license_No           varchar(32),
   type_Of_Contract     varchar(32),
   is_Show_Prices       numeric(1,0),
   agents_Status        varchar(32),
   account_Executive    varchar(64),
   agents_Contact       varchar(64),
   contact_Phone        varchar(16),
   agents_Introduction  varchar(4000),
   financail_Info_Audit_Status varchar(32),
   financail_Info_Auditor varchar(64),
   gmt_Financail_Info_Audit date,
   financail_Info_Audit_Opinion varchar(512),
   creator              varchar(64),
   gmt_Create           datetime,
   modifier             varchar(64),
   gmt_Modify           datetime,
   is_Edit              numeric(1,0),
   is_Limit_Booking     numeric(1,0),
   legal_Representative varchar(64),
   primary key (agents_Id)
);

/*==============================================================*/
/* Table: Agents_Account                                        */
/*==============================================================*/
create table Agents_Account
(
   agents_Account_Id    bigint not null,
   agents_Id            bigint,
   account_Status       varchar(32),
   memo                 varchar(512),
   creator              varchar(64),
   gmt_Create           datetime,
   modifier             varchar(64),
   gmt_Modify           datetime,
   account_Login_Name   varchar(64),
   account_Password     varchar(64),
   email                varchar(64),
   nick_Name            varchar(64),
   last_Login_Time      datetime,
   name                 char(1),
   sex                  numeric(1,0),
   depart               varchar(32),
   duty                 varchar(32),
   employee_Code        varchar(32),
   telphone             varchar(16),
   mobile               varchar(16),
   QQ                   varchar(32),
   user_Addr            varchar(64),
   primary key (agents_Account_Id)
);

/*==============================================================*/
/* Table: Agents_Account_Admin                                  */
/*==============================================================*/
create table Agents_Account_Admin
(
   agents_Account_Id    bigint not null,
   agents_Id            bigint,
   Age_agents_Id        bigint,
   account_Status       varchar(32),
   memo                 varchar(512),
   creator              varchar(64),
   gmt_Create           datetime,
   modifier             varchar(64),
   gmt_Modify           datetime,
   account_Login_Name   varchar(64),
   account_Password     varchar(64),
   email                varchar(64),
   nick_Name            varchar(64),
   last_Login_Time      datetime,
   name                 char(1),
   sex                  numeric(1,0),
   depart               varchar(32),
   duty                 varchar(32),
   employee_Code        varchar(32),
   telphone             varchar(16),
   mobile               varchar(16),
   QQ                   varchar(32),
   user_Addr            varchar(64),
   primary key (agents_Account_Id)
);

/*==============================================================*/
/* Table: Agents_Favorites                                      */
/*==============================================================*/
create table Agents_Favorites
(
   agents_Favorites_Id  bigint not null,
   agents_Account_Id    bigint,
   gmt_Of_Favorites     datetime,
   memo                 varchar(1024),
   business_Id          bigint,
   business_Type        varchar(32),
   primary key (agents_Favorites_Id)
);

/*==============================================================*/
/* Table: Agents_Menu                                           */
/*==============================================================*/
create table Agents_Menu
(
   agents_Menu_Id       bigint not null,
   Age_agents_Menu_Id   bigint,
   agents_Menu_Name     varchar(64),
   agents_Menu_Code     varchar(32) not null,
   memo                 varchar(512),
   agents_Menu_Ord      int not null,
   agents_Menu_Level    int not null,
   agents_Menu_Act      varchar(256),
   agents_Menu_Target   varchar(32),
   agents_Menu_Icon     varchar(64),
   creator              varchar(64),
   gmt_Create           datetime,
   modifier             varchar(64),
   gmt_Modify           datetime,
   bind_Privilege       varchar(512),
   primary key (agents_Menu_Id)
);

/*==============================================================*/
/* Table: Agents_Privilege                                      */
/*==============================================================*/
create table Agents_Privilege
(
   agents_Privilege_Id  bigint not null,
   Age_agents_Privilege_Id bigint,
   agents_Privilege_Name varchar(64),
   agents_Privilege_Code varchar(32),
   agents_Privilege_Type varchar(32),
   agents_Privilege_Memo varchar(1024),
   creator              varchar(64),
   gmt_Create           datetime,
   modifier             varchar(64),
   gmt_Modify           datetime,
   primary key (agents_Privilege_Id)
);

/*==============================================================*/
/* Table: Agents_Role                                           */
/*==============================================================*/
create table Agents_Role
(
   agents_Role_Id       bigint not null,
   agents_Role_Name     varchar(64),
   agents_Role_Code     varchar(32),
   agents_Role_Type     varchar(32),
   memo                 varchar(512),
   creator              varchar(64),
   gmt_Create           datetime,
   modifier             varchar(64),
   gmt_Modify           datetime,
   primary key (agents_Role_Id)
);

/*==============================================================*/
/* Table: Agents_Statistics                                     */
/*==============================================================*/
create table Agents_Statistics
(
   agents_Id            bigint,
   total_Of_orders      int,
   total_Transactions   decimal(10,2),
   number_Of_Adults     int,
   number_Of_Children   int
);

/*==============================================================*/
/* Table: Ass_Agents_Account_Privilege                          */
/*==============================================================*/
create table Ass_Agents_Account_Privilege
(
   agents_Account_Id    bigint not null,
   agents_Privilege_Id  bigint not null,
   primary key (agents_Account_Id, agents_Privilege_Id)
);

/*==============================================================*/
/* Table: Ass_Agents_Account_Role                               */
/*==============================================================*/
create table Ass_Agents_Account_Role
(
   agents_Role_Id       bigint not null,
   agents_Account_Id    bigint not null,
   primary key (agents_Role_Id, agents_Account_Id)
);

/*==============================================================*/
/* Table: Ass_Role_Privilege                                    */
/*==============================================================*/
create table Ass_Role_Privilege
(
   agents_Privilege_Id  bigint not null,
   agents_Role_Id       bigint not null,
   primary key (agents_Privilege_Id, agents_Role_Id)
);

/*==============================================================*/
/* Table: Order_Tour_Product                                    */
/*==============================================================*/
create table Order_Tour_Product
(
   Column_1             char(10)
);

/*==============================================================*/
/* Table: Product_Type                                          */
/*==============================================================*/
create table Product_Type
(
   product_Type_Id      bigint not null,
   Pro_product_Type_Id  bigint,
   product_Type_Name    varchar(64),
   product_Type_Ord     int,
   creator              varchar(64),
   gmt_Create           datetime,
   modifier             varchar(64),
   gmt_Modify           datetime,
   product_Type_City    varchar(256),
   product_Code         varchar(32),
   primary key (product_Type_Id)
);

/*==============================================================*/
/* Table: Report_Achievements                                   */
/*==============================================================*/
create table Report_Achievements
(
   achievements_Report_Id bigint not null,
   product_Id           bigint,
   product_Type         varchar(32),
   main_Type_Code       varchar(32),
   minor_Type_Code      varchar(32),
   total_Adult          int,
   total_Child          int,
   total_Order          int,
   total_Expense        decimal(10,2),
   total_Cost           decimal(10,2),
   dept_Product         varchar(32),
   op                   varchar(32),
   dept_Op              varchar(32),
   store_Salesman       varchar(32),
   dept_Store           varchar(32),
   gmt_Last_product_Modify date,
   primary key (achievements_Report_Id)
);

/*==============================================================*/
/* Table: Reprot_Store_Sale                                     */
/*==============================================================*/
create table Reprot_Store_Sale
(
   sale_Report_Id       bigint not null,
   gmt_Order            date,
   product_Id           bigint,
   product_Type         varchar(32),
   main_Type_Code       varchar(32),
   minor_Type_Code      varchar(32),
   total_Adult          int,
   total_Child          int,
   total_Order          int,
   total_Expense        decimal(10,2),
   total_Cost           decimal(10,2),
   dept_Product         varchar(32),
   op                   varchar(32),
   dept_Op              varchar(32),
   store_Salesman       varchar(32),
   dept_Store           varchar(32),
   gmt_Last_product_Modify date,
   primary key (sale_Report_Id)
);

/*==============================================================*/
/* Table: Shortcut_Menu                                         */
/*==============================================================*/
create table Shortcut_Menu
(
   shortcut_Menu_Id     bigint not null,
   agents_Account_Id    bigint,
   agents_Menu_Id       bigint,
   is_Enable            numeric(1,0),
   primary key (shortcut_Menu_Id)
);

/*==============================================================*/
/* Table: Smsc_Config                                           */
/*==============================================================*/
create table Smsc_Config
(
   smsc_Config_Id       bigint not null,
   agents_Id            bigint,
   短信帐号                 varchar(64),
   短信帐号密码               varchar(64),
   短信签名                 varchar(256),
   primary key (smsc_Config_Id)
);

/*==============================================================*/
/* Table: Tour_Line                                             */
/*==============================================================*/
create table Tour_Line
(
   product_Type_Id      bigint,
   Pro_product_Type_Id  bigint,
   tour_Line_Id         bigint,
   line_Code            varchar(64) comment '线路编号',
   line_Name            varchar(256) comment '线路名称',
   line_Topic           varchar(256) comment '线路主题',
   line_Type            varchar(32) comment '线路类型',
   line_Brand           varchar(32) comment '线路品牌',
   tour_Cards           varchar(256) comment '旅行证件',
   before_Days_Grant_Vista int,
   days_Night           int comment '旅游天数夜晚数',
   days_During          int comment '旅游天数白天数',
   leave_City           varchar(32) comment '出发城市',
   leave_City_Traffic   varchar(32) comment '出发城市交通',
   return_City          varchar(32) comment '返回城市',
   return_City_Traffic  varchar(32) comment '返回城市交通',
   through_Citys        varchar(256),
   tour_Attractions     varchar(256) comment '游览景点',
   key_Words            varchar(256) comment '关键字',
   tour_Highlights      text,
   design_Status        char(1) comment '设计状态',
   gmt_Desing_Complete  datetime comment '设计完成时间',
   is_Enable            numeric(1,0),
   gmt_Create           datetime,
   creator              varchar(64),
   gmt_Modify           datetime,
   modifier             varchar(64),
   memo                 varchar(512),
   audit_Opinion        varchar(512),
   audit_Status         varchar(32),
   target_Customers     varchar(256) comment '目标客户，多个逗号分隔',
   tour_Purpose         varchar(256) comment '出行目的，多个逗号分隔',
   is_Deleted           numeric(1,0),
   PV                   numeric(11,0),
   applicable_Type      varchar(64) comment '适用产品类型，多个逗号分隔'
);
