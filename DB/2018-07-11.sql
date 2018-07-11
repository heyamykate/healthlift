/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 90305
 Source Host           : localhost
 Source Database       : healthlift
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90305
 File Encoding         : utf-8

 Date: 07/11/2018 14:33:14 PM
*/

-- ----------------------------
--  Sequence structure for "auth_group_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_group_id_seq";
CREATE SEQUENCE "auth_group_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_group_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "auth_group_permissions_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_group_permissions_id_seq";
CREATE SEQUENCE "auth_group_permissions_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_group_permissions_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "auth_permission_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_permission_id_seq";
CREATE SEQUENCE "auth_permission_id_seq" INCREMENT 1 START 33 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_permission_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "auth_user_groups_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_user_groups_id_seq";
CREATE SEQUENCE "auth_user_groups_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_user_groups_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "auth_user_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_user_id_seq";
CREATE SEQUENCE "auth_user_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_user_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "auth_user_user_permissions_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_user_user_permissions_id_seq";
CREATE SEQUENCE "auth_user_user_permissions_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "auth_user_user_permissions_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "django_admin_log_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_admin_log_id_seq";
CREATE SEQUENCE "django_admin_log_id_seq" INCREMENT 1 START 100 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "django_admin_log_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "django_content_type_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_content_type_id_seq";
CREATE SEQUENCE "django_content_type_id_seq" INCREMENT 1 START 11 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "django_content_type_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "django_migrations_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_migrations_id_seq";
CREATE SEQUENCE "django_migrations_id_seq" INCREMENT 1 START 34 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "django_migrations_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "main_company_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "main_company_id_seq";
CREATE SEQUENCE "main_company_id_seq" INCREMENT 1 START 6 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "main_company_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "main_companypage_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "main_companypage_id_seq";
CREATE SEQUENCE "main_companypage_id_seq" INCREMENT 1 START 4 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "main_companypage_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "main_contact_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "main_contact_id_seq";
CREATE SEQUENCE "main_contact_id_seq" INCREMENT 1 START 18 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "main_contact_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "main_employee_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "main_employee_id_seq";
CREATE SEQUENCE "main_employee_id_seq" INCREMENT 1 START 7 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "main_employee_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "main_homepage_companies_selector_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "main_homepage_companies_selector_id_seq";
CREATE SEQUENCE "main_homepage_companies_selector_id_seq" INCREMENT 1 START 2 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "main_homepage_companies_selector_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "main_homepage_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "main_homepage_id_seq";
CREATE SEQUENCE "main_homepage_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "main_homepage_id_seq" OWNER TO "admin";

-- ----------------------------
--  Table structure for "main_homepage"
-- ----------------------------
DROP TABLE IF EXISTS "main_homepage";
CREATE TABLE "main_homepage" (
	"id" int4 NOT NULL DEFAULT nextval('main_homepage_id_seq'::regclass),
	"hero_bg" varchar(100) NOT NULL,
	"about_title" varchar(200) NOT NULL,
	"about_copy" text,
	"about_image" varchar(100),
	"mission_copy" text,
	"mission_title" varchar(180),
	"spacer_image_1" varchar(100),
	"spacer_image_2" varchar(100),
	"spacer_image_3" varchar(100),
	"pullquote" text,
	"quote_source" varchar(150),
	"spacer_image_4" varchar(100),
	"companies_title" varchar(150),
	"team_title" varchar(150)
)
WITH (OIDS=FALSE);
ALTER TABLE "main_homepage" OWNER TO "admin";

-- ----------------------------
--  Records of "main_homepage"
-- ----------------------------
BEGIN;
INSERT INTO "main_homepage" VALUES ('1', 'homepage/Fall-color-with-morning-light-in-the-Wasatch-Mountains.jpg', 'Who We Are', '<p>HealthLift is a privately owned health care services company that provides tailored solutions for niche industries.</p>

<p>&nbsp;</p>

<p>With an appetite for innovation and 30+ years of experience in delivering innovative solutions to the health care space, we see opportunies that are often times overlooked by the general market. For those opportunities, we combine our&nbsp;industry knowledge with&nbsp;state of the art technologies to deliver successful solutions. These solutions simplify the entire process of care delivery and challenge the status quo.</p>

<p>&nbsp;</p>

<p>The result: Patients receive the care they deserve and expect, medical providers are able to focus on treating, and insurance carriers are provided with the transparency they need to better their services.</p>', 'homepage/vector-nurse-van_IVEVJMa.png', '<p>HealthLift seeks to empower the user by tailoring global technological solutions to their individual needs, allowing for better business while keeping it business as usual.</p>', 'Our Mission', 'homepage/Manhattan-Skyline-after-dark.jpg', 'homepage/sandstone-formations-in-famous-Antelope-Canyon.jpg', 'homepage/636012645799075880-890638743_slc_Vg1geTO.jpg', '', null, 'homepage/mountains_NSFi645.jpg', 'Our Companies', 'Our Team');
COMMIT;

-- ----------------------------
--  Table structure for "django_migrations"
-- ----------------------------
DROP TABLE IF EXISTS "django_migrations";
CREATE TABLE "django_migrations" (
	"id" int4 NOT NULL DEFAULT nextval('django_migrations_id_seq'::regclass),
	"app" varchar(255) NOT NULL,
	"name" varchar(255) NOT NULL,
	"applied" timestamp(6) WITH TIME ZONE NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "django_migrations" OWNER TO "admin";

-- ----------------------------
--  Records of "django_migrations"
-- ----------------------------
BEGIN;
INSERT INTO "django_migrations" VALUES ('1', 'contenttypes', '0001_initial', '2017-08-24 13:08:24.810921-06');
INSERT INTO "django_migrations" VALUES ('2', 'auth', '0001_initial', '2017-08-24 13:08:25.097689-06');
INSERT INTO "django_migrations" VALUES ('3', 'admin', '0001_initial', '2017-08-24 13:08:25.19832-06');
INSERT INTO "django_migrations" VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-08-24 13:08:25.227152-06');
INSERT INTO "django_migrations" VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-08-24 13:08:25.283914-06');
INSERT INTO "django_migrations" VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-08-24 13:08:25.307014-06');
INSERT INTO "django_migrations" VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-08-24 13:08:25.362416-06');
INSERT INTO "django_migrations" VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-08-24 13:08:25.386469-06');
INSERT INTO "django_migrations" VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-08-24 13:08:25.418409-06');
INSERT INTO "django_migrations" VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-08-24 13:08:25.423943-06');
INSERT INTO "django_migrations" VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-08-24 13:08:25.451781-06');
INSERT INTO "django_migrations" VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2017-08-24 13:08:25.485987-06');
INSERT INTO "django_migrations" VALUES ('13', 'main', '0001_initial', '2017-08-24 13:08:25.500644-06');
INSERT INTO "django_migrations" VALUES ('14', 'main', '0002_employee', '2017-08-24 13:08:25.520218-06');
INSERT INTO "django_migrations" VALUES ('15', 'main', '0003_company', '2017-08-24 13:08:25.535754-06');
INSERT INTO "django_migrations" VALUES ('16', 'main', '0004_contact', '2017-08-24 13:08:25.550955-06');
INSERT INTO "django_migrations" VALUES ('17', 'main', '0005_auto_20170801_1345', '2017-08-24 13:08:25.570344-06');
INSERT INTO "django_migrations" VALUES ('18', 'main', '0006_auto_20170801_1352', '2017-08-24 13:08:25.602368-06');
INSERT INTO "django_migrations" VALUES ('19', 'main', '0007_auto_20170801_1614', '2017-08-24 13:08:25.638259-06');
INSERT INTO "django_migrations" VALUES ('20', 'main', '0008_homepage_spacer_image_4', '2017-08-24 13:08:25.662244-06');
INSERT INTO "django_migrations" VALUES ('21', 'main', '0009_auto_20170801_1628', '2017-08-24 13:08:25.685556-06');
INSERT INTO "django_migrations" VALUES ('22', 'main', '0010_auto_20170807_1854', '2017-08-24 13:08:25.708258-06');
INSERT INTO "django_migrations" VALUES ('23', 'main', '0011_auto_20170822_1017', '2017-08-24 13:08:25.721601-06');
INSERT INTO "django_migrations" VALUES ('24', 'main', '0012_auto_20170822_1022', '2017-08-24 13:08:25.733181-06');
INSERT INTO "django_migrations" VALUES ('25', 'sessions', '0001_initial', '2017-08-24 13:08:25.759999-06');
INSERT INTO "django_migrations" VALUES ('26', 'main', '0013_companypage', '2018-07-02 20:06:07.3982-06');
INSERT INTO "django_migrations" VALUES ('27', 'main', '0014_auto_20180702_2016', '2018-07-02 20:16:40.120532-06');
INSERT INTO "django_migrations" VALUES ('28', 'main', '0015_auto_20180702_2027', '2018-07-02 20:27:16.457655-06');
INSERT INTO "django_migrations" VALUES ('29', 'main', '0016_auto_20180703_1557', '2018-07-03 15:58:02.803365-06');
INSERT INTO "django_migrations" VALUES ('30', 'main', '0017_companypage_show_company_name', '2018-07-03 16:16:29.864639-06');
INSERT INTO "django_migrations" VALUES ('31', 'main', '0018_auto_20180703_1737', '2018-07-03 17:37:48.694108-06');
INSERT INTO "django_migrations" VALUES ('32', 'main', '0019_auto_20180705_1436', '2018-07-05 14:36:57.756814-06');
INSERT INTO "django_migrations" VALUES ('33', 'main', '0020_companypage_external_site', '2018-07-05 16:58:14.729062-06');
INSERT INTO "django_migrations" VALUES ('34', 'main', '0021_auto_20180707_2139', '2018-07-07 21:39:50.895714-06');
COMMIT;

-- ----------------------------
--  Table structure for "django_content_type"
-- ----------------------------
DROP TABLE IF EXISTS "django_content_type";
CREATE TABLE "django_content_type" (
	"id" int4 NOT NULL DEFAULT nextval('django_content_type_id_seq'::regclass),
	"app_label" varchar(100) NOT NULL,
	"model" varchar(100) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "django_content_type" OWNER TO "admin";

-- ----------------------------
--  Records of "django_content_type"
-- ----------------------------
BEGIN;
INSERT INTO "django_content_type" VALUES ('1', 'admin', 'logentry');
INSERT INTO "django_content_type" VALUES ('2', 'auth', 'permission');
INSERT INTO "django_content_type" VALUES ('3', 'auth', 'group');
INSERT INTO "django_content_type" VALUES ('4', 'auth', 'user');
INSERT INTO "django_content_type" VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO "django_content_type" VALUES ('6', 'sessions', 'session');
INSERT INTO "django_content_type" VALUES ('7', 'main', 'contact');
INSERT INTO "django_content_type" VALUES ('8', 'main', 'company');
INSERT INTO "django_content_type" VALUES ('9', 'main', 'homepage');
INSERT INTO "django_content_type" VALUES ('10', 'main', 'employee');
INSERT INTO "django_content_type" VALUES ('11', 'main', 'companypage');
COMMIT;

-- ----------------------------
--  Table structure for "auth_group_permissions"
-- ----------------------------
DROP TABLE IF EXISTS "auth_group_permissions";
CREATE TABLE "auth_group_permissions" (
	"id" int4 NOT NULL DEFAULT nextval('auth_group_permissions_id_seq'::regclass),
	"group_id" int4 NOT NULL,
	"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_group_permissions" OWNER TO "admin";

-- ----------------------------
--  Table structure for "auth_group"
-- ----------------------------
DROP TABLE IF EXISTS "auth_group";
CREATE TABLE "auth_group" (
	"id" int4 NOT NULL DEFAULT nextval('auth_group_id_seq'::regclass),
	"name" varchar(80) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_group" OWNER TO "admin";

-- ----------------------------
--  Table structure for "auth_user_groups"
-- ----------------------------
DROP TABLE IF EXISTS "auth_user_groups";
CREATE TABLE "auth_user_groups" (
	"id" int4 NOT NULL DEFAULT nextval('auth_user_groups_id_seq'::regclass),
	"user_id" int4 NOT NULL,
	"group_id" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_user_groups" OWNER TO "admin";

-- ----------------------------
--  Table structure for "auth_permission"
-- ----------------------------
DROP TABLE IF EXISTS "auth_permission";
CREATE TABLE "auth_permission" (
	"id" int4 NOT NULL DEFAULT nextval('auth_permission_id_seq'::regclass),
	"name" varchar(255) NOT NULL,
	"content_type_id" int4 NOT NULL,
	"codename" varchar(100) NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_permission" OWNER TO "admin";

-- ----------------------------
--  Records of "auth_permission"
-- ----------------------------
BEGIN;
INSERT INTO "auth_permission" VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO "auth_permission" VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO "auth_permission" VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO "auth_permission" VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO "auth_permission" VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO "auth_permission" VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO "auth_permission" VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO "auth_permission" VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO "auth_permission" VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO "auth_permission" VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO "auth_permission" VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO "auth_permission" VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO "auth_permission" VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO "auth_permission" VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO "auth_permission" VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO "auth_permission" VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO "auth_permission" VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO "auth_permission" VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO "auth_permission" VALUES ('19', 'Can add Contact Request', '7', 'add_contact');
INSERT INTO "auth_permission" VALUES ('20', 'Can change Contact Request', '7', 'change_contact');
INSERT INTO "auth_permission" VALUES ('21', 'Can delete Contact Request', '7', 'delete_contact');
INSERT INTO "auth_permission" VALUES ('22', 'Can add Company', '8', 'add_company');
INSERT INTO "auth_permission" VALUES ('23', 'Can change Company', '8', 'change_company');
INSERT INTO "auth_permission" VALUES ('24', 'Can delete Company', '8', 'delete_company');
INSERT INTO "auth_permission" VALUES ('25', 'Can add Home Page', '9', 'add_homepage');
INSERT INTO "auth_permission" VALUES ('26', 'Can change Home Page', '9', 'change_homepage');
INSERT INTO "auth_permission" VALUES ('27', 'Can delete Home Page', '9', 'delete_homepage');
INSERT INTO "auth_permission" VALUES ('28', 'Can add Employee', '10', 'add_employee');
INSERT INTO "auth_permission" VALUES ('29', 'Can change Employee', '10', 'change_employee');
INSERT INTO "auth_permission" VALUES ('30', 'Can delete Employee', '10', 'delete_employee');
INSERT INTO "auth_permission" VALUES ('31', 'Can add Company Page', '11', 'add_companypage');
INSERT INTO "auth_permission" VALUES ('32', 'Can change Company Page', '11', 'change_companypage');
INSERT INTO "auth_permission" VALUES ('33', 'Can delete Company Page', '11', 'delete_companypage');
COMMIT;

-- ----------------------------
--  Table structure for "auth_user_user_permissions"
-- ----------------------------
DROP TABLE IF EXISTS "auth_user_user_permissions";
CREATE TABLE "auth_user_user_permissions" (
	"id" int4 NOT NULL DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass),
	"user_id" int4 NOT NULL,
	"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_user_user_permissions" OWNER TO "admin";

-- ----------------------------
--  Table structure for "main_employee"
-- ----------------------------
DROP TABLE IF EXISTS "main_employee";
CREATE TABLE "main_employee" (
	"id" int4 NOT NULL DEFAULT nextval('main_employee_id_seq'::regclass),
	"name" varchar(150) NOT NULL,
	"title" varchar(150) NOT NULL,
	"bio" text NOT NULL,
	"headshot" varchar(100) NOT NULL,
	"my_order" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "main_employee" OWNER TO "admin";

-- ----------------------------
--  Records of "main_employee"
-- ----------------------------
BEGIN;
INSERT INTO "main_employee" VALUES ('2', 'Brian Anderson', 'President and CEO', '<p>Brian brings leadership experience and a track record of small business growth to HealthLift. With over 30 years in the health care industry, he has seen the transformation as well as what works and does not work in terms of successful solutions. He is passionate about his employees and simply making things work. Outside of the office he enjoys gardening his prized heirloom tomatoes and traveling with his wife.</p>', 'employees/IMG_1061_z8HoOQg.JPG', '1');
INSERT INTO "main_employee" VALUES ('7', 'Gianni Baldassari', 'Vice President of Business Development', '<p>With a JD from DePaul University, Gianni has worked for the past few years as a corporate attorney. Having his fill with corporate attorneying, Gianni has joined the HealthLift team and brings experience in medical service software as well as industry knowledge. He enjoys making fresh pasta with family while watching their favorite sports teams.&nbsp;</p>', 'employees/IMG_0574_Lwor8vb.JPG', '5');
INSERT INTO "main_employee" VALUES ('5', 'Joe Colangelo', 'Vice President of Product and Business Development', '<p>Joe joined HealthLift and has led various&nbsp;product development initiatives. With 20+ years in P&amp;C experience, Joe has ample leadership experience and a wide range of product knowledge, including&nbsp;network and&nbsp;payer-centric solutions. When not product developing, he finds Zen in the good ol&#39; outdoors. Most recently his family rafted the Green and Colorado rivers. He resides&nbsp;in Philadelphia with his family.&nbsp;</p>', 'employees/8E0DB0BB-37FC-4BA4-8AA7-C14592E841E4.jpg', '3');
INSERT INTO "main_employee" VALUES ('1', 'Cameron Anderson', 'Vice President of Operations', '<p>Cameron is an acting Vice President over the different verticals at HealthLift. Prior to HealthLift, Cameron obtained his MBA from Georgetown and worked in biotechnology as a manager of analytics and financial forrecasting.</p>

<p>Despite being colorblind, he enjoys being in the mountains during autumn with his dog, Rupert and his favorite book of 2017 is <em>The Golden Spruce</em>.</p>', 'employees/LinkedIn_Profile_Picture.jpg', '4');
INSERT INTO "main_employee" VALUES ('6', 'Rupert', 'Office Canine', '<p>Prior to joining HealthLift, Rupert was an outside dog responsible for staring out of the crack in the gate at passerbys. He has taken those same skills and applied them to HealthLift&#39;s security team. He was trained at Frida&#39;s Boarding School and enjoys chasing ducks and playing fetch with rocks. His favorite food is Swedish Fish.&nbsp;</p>', 'employees/BBF77B7F-66A7-467F-AA6B-83215BA50624.jpg', '7');
COMMIT;

-- ----------------------------
--  Table structure for "django_admin_log"
-- ----------------------------
DROP TABLE IF EXISTS "django_admin_log";
CREATE TABLE "django_admin_log" (
	"id" int4 NOT NULL DEFAULT nextval('django_admin_log_id_seq'::regclass),
	"action_time" timestamp(6) WITH TIME ZONE NOT NULL,
	"object_id" text,
	"object_repr" varchar(200) NOT NULL,
	"action_flag" int2 NOT NULL,
	"change_message" text NOT NULL,
	"content_type_id" int4,
	"user_id" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "django_admin_log" OWNER TO "admin";

-- ----------------------------
--  Records of "django_admin_log"
-- ----------------------------
BEGIN;
INSERT INTO "django_admin_log" VALUES ('1', '2017-08-24 13:11:40.48953-06', '1', 'admin', '2', '[{"changed": {"fields": ["first_name", "last_name"]}}]', '4', '1');
INSERT INTO "django_admin_log" VALUES ('2', '2017-08-24 13:40:42.148296-06', '1', 'Image Ally', '1', '[{"added": {}}]', '8', '1');
INSERT INTO "django_admin_log" VALUES ('3', '2017-08-24 13:41:13.932496-06', '2', 'Good Friends Care', '1', '[{"added": {}}]', '8', '1');
INSERT INTO "django_admin_log" VALUES ('4', '2017-08-24 13:41:42.587209-06', '3', 'HealthLift Telehealth', '1', '[{"added": {}}]', '8', '1');
INSERT INTO "django_admin_log" VALUES ('5', '2017-08-24 13:42:25.86751-06', '1', 'Employee - Cameron Anderson', '1', '[{"added": {}}]', '10', '1');
INSERT INTO "django_admin_log" VALUES ('6', '2017-08-24 13:43:00.690179-06', '2', 'Employee - Brian Anderson', '1', '[{"added": {}}]', '10', '1');
INSERT INTO "django_admin_log" VALUES ('7', '2017-08-24 13:43:32.391948-06', '3', 'Employee - Austin Montgomery', '1', '[{"added": {}}]', '10', '1');
INSERT INTO "django_admin_log" VALUES ('8', '2017-08-24 13:43:55.182258-06', '4', 'Employee - Scot Mason', '1', '[{"added": {}}]', '10', '1');
INSERT INTO "django_admin_log" VALUES ('9', '2017-08-24 13:44:14.935281-06', '5', 'Employee - Joe Colangelo', '1', '[{"added": {}}]', '10', '1');
INSERT INTO "django_admin_log" VALUES ('10', '2017-08-24 13:51:57.613221-06', '6', 'Employee - Rupert', '1', '[{"added": {}}]', '10', '1');
INSERT INTO "django_admin_log" VALUES ('11', '2017-08-24 13:53:53.133384-06', '1', 'HomePage', '1', '[{"added": {}}]', '9', '1');
INSERT INTO "django_admin_log" VALUES ('12', '2017-08-24 13:55:40.659862-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["mission_title"]}}]', '9', '1');
INSERT INTO "django_admin_log" VALUES ('13', '2017-08-24 14:37:44.520721-06', '6', 'Employee - Rupert', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '1');
INSERT INTO "django_admin_log" VALUES ('14', '2017-08-24 14:38:31.425705-06', '2', 'cameron', '1', '[{"added": {}}]', '4', '1');
INSERT INTO "django_admin_log" VALUES ('15', '2017-08-24 14:38:48.959601-06', '2', 'cameron', '2', '[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff", "is_superuser"]}}]', '4', '1');
INSERT INTO "django_admin_log" VALUES ('16', '2017-08-25 10:22:52.263205-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["hero_bg"]}}]', '9', '1');
INSERT INTO "django_admin_log" VALUES ('17', '2017-08-25 10:23:46.091112-06', '2', 'Employee - Brian Anderson', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '1');
INSERT INTO "django_admin_log" VALUES ('18', '2017-08-25 10:23:55.903572-06', '4', 'Employee - Scot Mason', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '1');
INSERT INTO "django_admin_log" VALUES ('19', '2017-08-25 10:24:06.088367-06', '5', 'Employee - Joe Colangelo', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '1');
INSERT INTO "django_admin_log" VALUES ('20', '2017-08-28 13:50:34.256035-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["about_copy", "spacer_image_2", "spacer_image_3"]}}]', '9', '2');
INSERT INTO "django_admin_log" VALUES ('21', '2017-08-28 13:51:47.614987-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["spacer_image_1", "spacer_image_2", "spacer_image_3"]}}]', '9', '2');
INSERT INTO "django_admin_log" VALUES ('22', '2017-08-28 13:52:30.726475-06', '2', 'Employee - Brian Anderson', '2', '[{"changed": {"fields": ["bio"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('23', '2017-08-28 13:52:47.791222-06', '3', 'Employee - Austin Montgomery', '2', '[]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('24', '2017-08-28 13:54:29.861215-06', '5', 'Employee - Joe Colangelo', '2', '[]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('25', '2017-08-28 14:00:31.993208-06', '4', 'Employee - Scot Mason', '2', '[{"changed": {"fields": ["title", "bio", "headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('26', '2017-08-28 14:00:44.063176-06', '5', 'Employee - Joe Colangelo', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('27', '2017-08-28 14:00:53.82923-06', '6', 'Employee - Rupert', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('28', '2017-08-28 14:04:26.865992-06', '1', 'Employee - Cameron Anderson', '2', '[{"changed": {"fields": ["title", "bio"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('29', '2017-08-28 14:29:18.395402-06', '2', 'Good Friends Care', '2', '[{"changed": {"fields": ["info"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('30', '2017-08-28 14:29:41.253818-06', '1', 'Image Ally', '2', '[{"changed": {"fields": ["info"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('31', '2017-08-28 15:16:59.534337-06', '6', 'Employee - Rupert', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('32', '2017-08-29 10:58:34.158857-06', '3', 'HealthLift Telehealth', '2', '[{"changed": {"fields": ["info"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('33', '2017-08-30 21:16:35.382525-06', '2', 'Employee - Brian Anderson', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('34', '2017-08-30 21:18:03.814613-06', '2', 'Employee - Brian Anderson', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('35', '2017-08-30 21:18:57.133167-06', '2', 'Employee - Brian Anderson', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('36', '2017-08-30 21:20:47.825919-06', '2', 'Employee - Brian Anderson', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('37', '2017-08-30 21:21:46.182379-06', '2', 'Employee - Brian Anderson', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('38', '2017-11-07 10:15:29.327956-07', '3', 'HealthLift Telehealth', '2', '[{"changed": {"fields": ["logo", "info"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('39', '2017-11-07 10:19:46.1974-07', '2', 'Momentum Care', '2', '[{"changed": {"fields": ["name", "logo", "info"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('40', '2017-11-07 11:48:46.315865-07', '2', 'Momentum Care', '2', '[{"changed": {"fields": ["logo"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('41', '2018-01-05 12:20:51.771027-07', '3', 'Employee - Austin Montgomery', '3', '', '10', '2');
INSERT INTO "django_admin_log" VALUES ('42', '2018-01-05 12:20:51.774271-07', '4', 'Employee - Scot Mason', '3', '', '10', '2');
INSERT INTO "django_admin_log" VALUES ('43', '2018-01-05 12:21:51.571697-07', '1', 'Employee - Cameron Anderson', '2', '[{"changed": {"fields": ["title"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('44', '2018-01-08 13:34:36.140328-07', '7', 'Employee - Gianni Badlassari', '1', '[{"added": {}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('45', '2018-01-08 13:35:17.960353-07', '7', 'Employee - Gianni Badlassari', '2', '[]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('46', '2018-01-08 13:36:26.196726-07', '7', 'Employee - Gianni Badlassari', '2', '[]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('47', '2018-01-08 13:39:11.125012-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('48', '2018-01-08 13:42:29.669865-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('49', '2018-01-08 13:42:42.918493-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('50', '2018-01-08 13:43:23.305088-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('51', '2018-01-08 13:44:34.338083-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('52', '2018-01-09 11:25:12.859053-07', '7', 'Employee - Gianni Badlassari', '2', '[]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('53', '2018-01-09 16:24:47.784362-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('54', '2018-01-09 16:26:03.693468-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('55', '2018-01-09 16:26:13.518329-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('56', '2018-01-09 16:34:05.186617-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('57', '2018-01-09 16:59:47.480503-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('58', '2018-01-09 17:02:56.737799-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["headshot"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('59', '2018-01-09 17:32:37.744563-07', '7', 'Employee - Gianni Badlassari', '2', '[{"changed": {"fields": ["bio"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('60', '2018-01-25 16:07:54.030439-07', '7', 'Employee - Gianni Baldassari', '2', '[{"changed": {"fields": ["name"]}}]', '10', '2');
INSERT INTO "django_admin_log" VALUES ('61', '2018-04-18 10:33:15.520683-06', '4', 'Ride Recon', '1', '[{"added": {}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('62', '2018-04-18 10:36:26.279877-06', '4', 'Ride Recon', '3', '', '8', '2');
INSERT INTO "django_admin_log" VALUES ('63', '2018-04-18 10:36:42.624075-06', '5', 'Ride Recon', '1', '[{"added": {}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('64', '2018-04-18 10:40:01.952511-06', '6', 'A-Script', '1', '[{"added": {}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('65', '2018-04-18 11:09:11.141506-06', '5', 'Ride Recon', '2', '[{"changed": {"fields": ["info", "link"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('66', '2018-04-18 11:10:49.536503-06', '1', 'Image Ally', '2', '[{"changed": {"fields": ["link"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('67', '2018-04-18 11:25:36.136232-06', '6', 'A-Script', '2', '[{"changed": {"fields": ["info", "link"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('68', '2018-04-18 11:30:03.791936-06', '6', 'A-Script', '2', '[{"changed": {"fields": ["link"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('69', '2018-04-18 11:30:26.692642-06', '5', 'Ride Recon', '2', '[{"changed": {"fields": ["link"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('70', '2018-04-18 11:30:33.161811-06', '6', 'A-Script', '2', '[{"changed": {"fields": ["link"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('71', '2018-04-18 11:30:45.084842-06', '1', 'Image Ally', '2', '[{"changed": {"fields": ["link"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('72', '2018-04-18 14:07:35.552261-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["hero_bg"]}}]', '9', '2');
INSERT INTO "django_admin_log" VALUES ('73', '2018-04-18 14:09:06.811798-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["spacer_image_1"]}}]', '9', '2');
INSERT INTO "django_admin_log" VALUES ('74', '2018-04-18 14:17:08.439527-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["hero_bg"]}}]', '9', '2');
INSERT INTO "django_admin_log" VALUES ('75', '2018-04-18 14:18:19.993528-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["hero_bg"]}}]', '9', '2');
INSERT INTO "django_admin_log" VALUES ('76', '2018-04-18 16:00:48.516439-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["hero_bg"]}}]', '9', '2');
INSERT INTO "django_admin_log" VALUES ('77', '2018-04-18 16:01:20.905607-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["spacer_image_1"]}}]', '9', '2');
INSERT INTO "django_admin_log" VALUES ('78', '2018-04-18 16:02:35.141176-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["spacer_image_2"]}}]', '9', '2');
INSERT INTO "django_admin_log" VALUES ('79', '2018-05-07 14:49:30.583271-06', '6', 'A-Script', '2', '[{"changed": {"fields": ["logo"]}}]', '8', '2');
INSERT INTO "django_admin_log" VALUES ('80', '2018-07-02 20:15:27.066804-06', '2', 'Company Page - Test Company', '1', '[{"added": {}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('81', '2018-07-02 20:30:54.223756-06', '3', 'Company Page - Test Company', '1', '[{"added": {}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('82', '2018-07-03 15:59:56.63043-06', '3', 'Company Page - Test Company', '2', '[{"changed": {"fields": ["text_block_1", "pullquote_1", "pullquote_1_source", "text_block_2"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('83', '2018-07-03 16:11:10.297886-06', '3', 'Test Company', '2', '[{"changed": {"fields": ["logo"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('84', '2018-07-03 16:11:18.355918-06', '3', 'HealthLift Connect', '2', '[{"changed": {"fields": ["name"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('85', '2018-07-03 16:56:30.761357-06', '3', 'HealthLift Connect', '2', '[{"changed": {"fields": ["text_block_1", "image_1", "text_block_2"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('86', '2018-07-03 17:31:29.854302-06', '3', 'HealthLift Connect', '2', '[{"changed": {"fields": ["pullquote_2", "pullquote_2_source"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('87', '2018-07-03 17:47:31.685679-06', '3', 'HealthLift Connect', '2', '[{"changed": {"fields": ["pullquote_3", "pullquote_3_source", "image_3"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('88', '2018-07-05 14:36:11.56724-06', '1', 'HomePage', '2', '[]', '9', '3');
INSERT INTO "django_admin_log" VALUES ('89', '2018-07-05 16:55:31.851324-06', '4', 'Image Ally', '1', '[{"added": {}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('90', '2018-07-05 16:55:47.727727-06', '1', 'HomePage', '2', '[]', '9', '3');
INSERT INTO "django_admin_log" VALUES ('91', '2018-07-05 17:01:23.212553-06', '3', 'HealthLift Connect', '2', '[{"changed": {"fields": ["external_site"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('92', '2018-07-05 17:06:44.239991-06', '4', 'Image Ally', '2', '[{"changed": {"fields": ["show_block_2", "show_block_3"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('93', '2018-07-05 17:56:27.611715-06', '3', 'HealthLift Telehealth', '2', '[{"changed": {"fields": ["name"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('94', '2018-07-05 17:56:49.64915-06', '3', 'HealthLift Telehealth', '2', '[{"changed": {"fields": ["short_description"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('95', '2018-07-05 17:56:57.761482-06', '4', 'Image Ally', '2', '[{"changed": {"fields": ["short_description"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('96', '2018-07-05 18:25:14.30941-06', '1', 'HomePage', '2', '[]', '9', '3');
INSERT INTO "django_admin_log" VALUES ('97', '2018-07-05 18:29:24.581277-06', '3', 'HealthLift Telehealth', '2', '[{"changed": {"fields": ["show_block_3"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('98', '2018-07-05 18:30:45.334397-06', '1', 'HomePage', '2', '[]', '9', '3');
INSERT INTO "django_admin_log" VALUES ('99', '2018-07-07 21:40:40.970946-06', '3', 'HealthLift Telehealth', '2', '[{"changed": {"fields": ["hero_bg"]}}]', '11', '3');
INSERT INTO "django_admin_log" VALUES ('100', '2018-07-07 21:48:07.327643-06', '3', 'HealthLift Telehealth', '2', '[{"changed": {"fields": ["show_block_3"]}}]', '11', '3');
COMMIT;

-- ----------------------------
--  Table structure for "auth_user"
-- ----------------------------
DROP TABLE IF EXISTS "auth_user";
CREATE TABLE "auth_user" (
	"id" int4 NOT NULL DEFAULT nextval('auth_user_id_seq'::regclass),
	"password" varchar(128) NOT NULL,
	"last_login" timestamp(6) WITH TIME ZONE,
	"is_superuser" bool NOT NULL,
	"username" varchar(150) NOT NULL,
	"first_name" varchar(30) NOT NULL,
	"last_name" varchar(30) NOT NULL,
	"email" varchar(254) NOT NULL,
	"is_staff" bool NOT NULL,
	"is_active" bool NOT NULL,
	"date_joined" timestamp(6) WITH TIME ZONE NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "auth_user" OWNER TO "admin";

-- ----------------------------
--  Records of "auth_user"
-- ----------------------------
BEGIN;
INSERT INTO "auth_user" VALUES ('2', 'pbkdf2_sha256$36000$cSYPRsxPbc3n$dBGhQdHgPkgTt9V9VzZa2uY04pvHIW7sTpkDBdqyhCo=', '2018-05-07 14:49:12.927139-06', 't', 'cameron', 'Cameron', 'Anderson', 'canderson@health-lift.com', 't', 't', '2017-08-24 14:38:31-06');
INSERT INTO "auth_user" VALUES ('1', 'pbkdf2_sha256$36000$Mz2oRxWI1VHZ$hdmkq5bAbR6kOyZR4YwlFhqeVxrbtESTTu7jKIvRgA8=', '2018-06-27 15:21:55.298388-06', 't', 'admin', 'Amy-Kate', 'Andrews', 'amy.kate.andrews@gmail.com', 't', 't', '2017-08-24 13:09:11-06');
INSERT INTO "auth_user" VALUES ('3', 'pbkdf2_sha256$36000$8UISjhg0eJT6$i3B5V6B1FAPUmRDbgfH0SXOvfa/2JMc/5qSi32xC6J4=', '2018-07-02 20:10:06.893046-06', 't', 'amykate', '', '', 'amykate.andrews@gmail.com', 't', 't', '2018-07-02 20:09:59.090189-06');
COMMIT;

-- ----------------------------
--  Table structure for "main_company"
-- ----------------------------
DROP TABLE IF EXISTS "main_company";
CREATE TABLE "main_company" (
	"id" int4 NOT NULL DEFAULT nextval('main_company_id_seq'::regclass),
	"name" varchar(150) NOT NULL,
	"logo" varchar(100) NOT NULL,
	"info" text NOT NULL,
	"link" varchar(150) NOT NULL,
	"my_order" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "main_company" OWNER TO "admin";

-- ----------------------------
--  Records of "main_company"
-- ----------------------------
BEGIN;
INSERT INTO "main_company" VALUES ('3', 'HealthLift Telehealth', 'companies/HealthLift_Connect.png', 'HealthLift Connect platform links provider and patients to enhance access, availability, and effectiveness of care administration. Its solution offers a white-labeled app that provides real time 24/7 access to high quality care, patient monitoring, and improved outcomes.', '', '3');
INSERT INTO "main_company" VALUES ('2', 'Momentum Care', 'companies/Momentum_Care_V3_Large.png', 'Momentum Care partners with innovative transportation companies that offer an on-demand solution to the inefficiencies and financially straining obstacles currently experienced in accessing non-emergency medical transport. Our experience with Medicaid NEMT space challenges the status quo that provides your patients with the care they deserve.', '', '2');
INSERT INTO "main_company" VALUES ('5', 'Ride Recon', 'companies/Logo_-_Ride_Recon_2_A1xHYSB.png', 'Transportation providers are often at the mercy of brokers and payers to manage their cash flow. Cash inflow is unpredictable, yet cash outflow is certain. Ride Recon provides transportation providers with quick and guaranteed payment. As a result, providers are able to operate their companies more efficiently and focus on their core business.', 'http://www.riderecon.nyc', '4');
INSERT INTO "main_company" VALUES ('1', 'Image Ally', 'companies/Logo---Image-Ally-Century-w-Bar.png', 'Image Ally helps radiology providers enhance their billing operations and payment turnaround. By adding efficiency, employing best practice & evidence based medicine, and eliminating disputes which are prevalent in P&C claims, Image Ally improves care and economics for all parties involved.', 'http://www.imageally.com', '1');
INSERT INTO "main_company" VALUES ('6', 'A-Script', 'companies/AScript_Logo_3.png', 'A-Script works with nursing homes and other care facilities to aggregate and collect pharmacy rebates. These additional revenues allow facilities to invest in their core business and provide quality care to their residents.', 'http://www.a-script.com', '5');
COMMIT;

-- ----------------------------
--  Table structure for "main_contact"
-- ----------------------------
DROP TABLE IF EXISTS "main_contact";
CREATE TABLE "main_contact" (
	"id" int4 NOT NULL DEFAULT nextval('main_contact_id_seq'::regclass),
	"name" varchar(200) NOT NULL,
	"email" varchar(200) NOT NULL,
	"message" text NOT NULL,
	"date_of_contact" timestamp(6) WITH TIME ZONE NOT NULL,
	"contacted" bool NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "main_contact" OWNER TO "admin";

-- ----------------------------
--  Records of "main_contact"
-- ----------------------------
BEGIN;
INSERT INTO "main_contact" VALUES ('1', 'Amy Andrews', 'amy.kate.andrews@gmail.com', 'testing 123', '2017-08-24 14:39:41.224091-06', 'f');
INSERT INTO "main_contact" VALUES ('2', 'Lauren Bierce', 'lauren.bierce@hospicewestaz.com', 'Hello, 

I have transportation set up for a pt between 3p-4p today.  Confirmation number, 11943834.  I was wondering if it would be possible to get a courtesy call from the driver when he arrives at facility to pick up pt so that I can coordinate visiting pt at home upon arrival.  Please call my cell to confirm receipt of request.  480-417-8300. 

Thank you so much!

Lauren Bierce, RNCM 
Hospice of the West', '2017-09-03 14:01:06.703369-06', 'f');
INSERT INTO "main_contact" VALUES ('3', 'Tammy ANTUNEZ ', 'tammy_antunez@yahoo.com', 'Hello my name is Tammy  I am interested to work for your company  I have over 14 years working with people with disabilities  I would really appreciate it. If to contact me and let me know if you need driver''s  
Thank you so very much for your time ', '2017-10-25 15:04:31.258395-06', 'f');
INSERT INTO "main_contact" VALUES ('4', 'Sharon Owens', 'sstilwell49@gmail.com', 'Why did you call me
', '2017-10-28 12:36:44.071865-06', 'f');
INSERT INTO "main_contact" VALUES ('5', 'Sharon Owens', 'sstilwell49@gmail.com', 'Why did you call me', '2017-10-28 12:43:42.76657-06', 'f');
INSERT INTO "main_contact" VALUES ('6', 'Nakirah Garland', 'ngarland@cisive.com', 'Hello,
My name is Nakirah with CARCO Group. We are a professional fact finding organization, which represents a number of major corporations. One of our clients has requested to verify employment with your company for the below named individual. Your cooperation in furnishing a prompt reply will be greatly appreciated. Thank you for your assistance in this matter.
Request Number 11471890-17
Subject: Daniel Kelly
Period of Employment: 10/2015-09/2016
Position Held: Driver
Kind Regards,
Nakirah Garland
Research Associate
T. 631 862 9300 ext 222', '2017-11-01 13:53:12.600718-06', 'f');
INSERT INTO "main_contact" VALUES ('7', 'ROHANDA Victorsen', 'jrvrsn@gmail.com', 'I am a landlord trying to verify that Zemzem Dinato is employed by your company.  Questions:  hours per week guaranteed, length of employment, and attendance.  My husband did see check stubs, but there was quite a variance in the wages received.', '2017-11-07 08:11:29.245065-07', 'f');
INSERT INTO "main_contact" VALUES ('8', 'Christle Hammer ', 'christle.hammer@whgextstay.com', 'I seen you guys at a hotel and I am willing to give you a better rate in order to have Health Lift stay at my hotels.  I work for Westmont and we have over 60 locations. Your website is very unique and the descriptions for Rupert the dog are excellent. I am an Area Sales Manager with Westmont and would love to assist you your next trip.  480-667-9804', '2017-12-13 15:15:39.080716-07', 'f');
INSERT INTO "main_contact" VALUES ('9', 'Patrice Herb', 'patriceherb4444@gmail.com', 'I live in Litchfield park Arizona
I drive for Veyo  a company that arranges transportation for patients
To and from Doctor and pharmacy appointments.I use my own car.
How do I apply for a job as a driver what qualification are required? Looking for part time work only, I am 65 so I have a limit on only making 16,000 a year by social security.
Patrice Herb', '2017-12-22 08:50:08.879227-07', 'f');
INSERT INTO "main_contact" VALUES ('10', 'Linda Veen', 'linda.veen@ymail.com', 'I would like the street address of your Payroll or Human Resources Department.  I see several different locations listed on your website, but need to find out where Payroll or Human Resources are located.

Thank you.', '2018-02-10 18:44:52.028016-07', 'f');
INSERT INTO "main_contact" VALUES ('11', 'Anthony Pham', 'apham@intacct.com', 'Hi HealthLift,

My name is Anthony and I am reaching out from Sage Intacct, a Best-in-Class, cloud-based accounting solution. Was hoping you can connect me with Cameron Anderson, COO to discuss evaluating our software. Perhaps you can provide him with my contact information. My direct line is (408) 709-4877.

Please let me know if this project is still a priority for your organization. Looking forward to hearing back from you soon.

Cheers,

Anthony Pham
Sales Development Representative, Sage Intacct', '2018-02-13 16:30:50.643477-07', 'f');
INSERT INTO "main_contact" VALUES ('12', 'shakeel bagga', 'shak_aman@sbcglobal.net', 'New Claim ', '2018-02-14 16:49:45.466228-07', 'f');
INSERT INTO "main_contact" VALUES ('13', 'Lashawn Strickland ', 'aguafria31@gmail.com', 'Hey I was wondering if you were looking for any full time drivers?', '2018-02-19 23:46:50.53378-07', 'f');
INSERT INTO "main_contact" VALUES ('14', 'Antoinette', 'demetriusmhampton@gmail.com', 'Last night one of your drivers total my car and I''m trying to get the number to live so I can make my claim I have all this information I just need the number', '2018-02-27 13:12:06.978246-07', 'f');
INSERT INTO "main_contact" VALUES ('15', 'Verna Jolivette', 'vernajolivette@lusfiber.net', 'I am on prosthetics and can''t drive now.  I would like to know how it works to get a ride to my appointments.', '2018-04-20 13:35:14.131803-06', 'f');
INSERT INTO "main_contact" VALUES ('16', 'neftar leach', 'ieshiathebest@gmail.com', 'I was called about an hour ago tryin get back in touch with who called me', '2018-05-22 11:32:25.2654-06', 'f');
INSERT INTO "main_contact" VALUES ('17', 'David Bowers', 'agwheels1@aol.com', 'I''m trying to find out about qualifications for your services, specifically transportation.  I can find no indications of what these qualifiers are.', '2018-06-02 20:04:53.458053-06', 'f');
INSERT INTO "main_contact" VALUES ('18', 'Christina Cordova', 'christina.cordova@santemesa.com', 'We are looking for additional transportation services for are facilty.Could you please contact me at 480-721-6524 thank you ', '2018-06-11 16:40:35.557125-06', 'f');
COMMIT;

-- ----------------------------
--  Table structure for "django_session"
-- ----------------------------
DROP TABLE IF EXISTS "django_session";
CREATE TABLE "django_session" (
	"session_key" varchar(40) NOT NULL,
	"session_data" text NOT NULL,
	"expire_date" timestamp(6) WITH TIME ZONE NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "django_session" OWNER TO "admin";

-- ----------------------------
--  Records of "django_session"
-- ----------------------------
BEGIN;
INSERT INTO "django_session" VALUES ('drik5cyks9a8uyu5qqavaqz97zkt6seo', 'ZWRlOGY2NjdiMjcxNGIwYWU3ZGIwMzU1OTczMWY3MDExMjgxNjM1Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmEyZmI1MjFmZTgxY2EwMTYzZTJmODk2ZDgwZjI2MjhkMDdiOTJhMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-09-07 13:11:04.510231-06');
INSERT INTO "django_session" VALUES ('9dwuwk1m85gtxtx43ifghicb24qq8zdi', 'NTM5MzFkOTRjZWZlZjAzODJiYjI3OTIyNzVjMmE5NDE4ZDA3N2MxZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImZhMmZiNTIxZmU4MWNhMDE2M2UyZjg5NmQ4MGYyNjI4ZDA3YjkyYTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-09-07 14:37:24.043528-06');
INSERT INTO "django_session" VALUES ('84w4osmbhwhsnzieiwu88vrml78fwtmw', 'ZGVkYTRkNmIzY2Q0ODE0Y2E1NTMyZGQ5NTU4NzVhM2U5MmVhMzM2Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-09-07 14:41:33.069093-06');
INSERT INTO "django_session" VALUES ('lpksn2j5b96lvxi8a7eqvw11bqupmspx', 'ZGVkYTRkNmIzY2Q0ODE0Y2E1NTMyZGQ5NTU4NzVhM2U5MmVhMzM2Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-09-11 13:44:32.351478-06');
INSERT INTO "django_session" VALUES ('aj5cji6pf6gt6ysjly3ctywmrmc1olbz', 'ZGVkYTRkNmIzY2Q0ODE0Y2E1NTMyZGQ5NTU4NzVhM2U5MmVhMzM2Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-09-13 20:57:42.063171-06');
INSERT INTO "django_session" VALUES ('jz0mq29bzlitg5hxawe94lfhfby15z2j', 'ZGVkYTRkNmIzY2Q0ODE0Y2E1NTMyZGQ5NTU4NzVhM2U5MmVhMzM2Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-11-21 10:14:53.757576-07');
INSERT INTO "django_session" VALUES ('s3eo6glc7l4z5ou3u4i0v85x1qjzfn2v', 'ZGVkYTRkNmIzY2Q0ODE0Y2E1NTMyZGQ5NTU4NzVhM2U5MmVhMzM2Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2018-01-19 12:20:24.654132-07');
INSERT INTO "django_session" VALUES ('eox1l6wjgs0y4wwp9n5c7pr43c33tnor', 'NWM3YTFlNzAxOWM1YjMyNGQ4Y2UwZTU4ZjUwYjY0ZmQ5MmM5YTc2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-01-23 11:11:47.530065-07');
INSERT INTO "django_session" VALUES ('7fo6wtxooh6kj79wbtz8l7g7xbe2s3y7', 'NWM3YTFlNzAxOWM1YjMyNGQ4Y2UwZTU4ZjUwYjY0ZmQ5MmM5YTc2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-01-23 11:21:09.091948-07');
INSERT INTO "django_session" VALUES ('ivrjugzw1cj9y693p3bpu66buji8cgrm', 'NWM3YTFlNzAxOWM1YjMyNGQ4Y2UwZTU4ZjUwYjY0ZmQ5MmM5YTc2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-01-23 11:24:58.995386-07');
INSERT INTO "django_session" VALUES ('yfexgd0uvre2wx33qely2glub7aucocz', 'NWM3YTFlNzAxOWM1YjMyNGQ4Y2UwZTU4ZjUwYjY0ZmQ5MmM5YTc2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-01-23 16:24:26.86928-07');
INSERT INTO "django_session" VALUES ('i1snyunr8n6wpo3wtv6wexz183a6a1at', 'NWM3YTFlNzAxOWM1YjMyNGQ4Y2UwZTU4ZjUwYjY0ZmQ5MmM5YTc2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-01-23 16:27:31.059391-07');
INSERT INTO "django_session" VALUES ('pqhgqcp69i6x18d8ywjs6b5v9gppbbpm', 'NWM3YTFlNzAxOWM1YjMyNGQ4Y2UwZTU4ZjUwYjY0ZmQ5MmM5YTc2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-01-23 16:33:19.377009-07');
INSERT INTO "django_session" VALUES ('3tfcr6mbbr9kbmwfsv207ns99dczlzjh', 'NWM3YTFlNzAxOWM1YjMyNGQ4Y2UwZTU4ZjUwYjY0ZmQ5MmM5YTc2ZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjVmMmE5ZDFhOGI4YTFlZTE3YzgyZTcwZTZlMjNiNzQ5MzJjYTRiMjkiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-02-08 16:07:38.656228-07');
INSERT INTO "django_session" VALUES ('gsqbccfb6wj8kmneebcbp2s7pw1oplve', 'YmIxNjMyY2QzMzIxOWZlMTZjZGM0YjRjZmE2ZThhODZhNDFjODU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTJmYjUyMWZlODFjYTAxNjNlMmY4OTZkODBmMjYyOGQwN2I5MmExIn0=', '2018-05-02 11:27:33.46075-06');
INSERT INTO "django_session" VALUES ('5zhs6pemkz4y322kbf2dbab10mf4a203', 'MDhkOThhNTk0YTA5YmViMzgxYjU4YTUyMTA4NjVhZmE5YzQ5OGE4YTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjJhOWQxYThiOGExZWUxN2M4MmU3MGU2ZTIzYjc0OTMyY2E0YjI5In0=', '2018-05-02 14:00:11.137026-06');
INSERT INTO "django_session" VALUES ('f6ckooebbw2rb63fgiqtk2m301i6yzid', 'MDhkOThhNTk0YTA5YmViMzgxYjU4YTUyMTA4NjVhZmE5YzQ5OGE4YTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjJhOWQxYThiOGExZWUxN2M4MmU3MGU2ZTIzYjc0OTMyY2E0YjI5In0=', '2018-05-21 14:49:12.929784-06');
INSERT INTO "django_session" VALUES ('1zcjlctd8efyac55izrok6yu3n2g84n5', 'YmIxNjMyY2QzMzIxOWZlMTZjZGM0YjRjZmE2ZThhODZhNDFjODU2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmYTJmYjUyMWZlODFjYTAxNjNlMmY4OTZkODBmMjYyOGQwN2I5MmExIn0=', '2018-07-11 15:21:55.301578-06');
INSERT INTO "django_session" VALUES ('gawljvpasok3aj8pychxtm8b4i4rils3', 'Mzg4Y2U1MmFkMWUyZDMzMGQ3OWFkYzgwZTA2ZDkwYmE1ZDY3MGQxMjp7Il9hdXRoX3VzZXJfaGFzaCI6ImE2NDZhYWExNjJmZjQ3NzgyNDliYWY2ZTdmMTViNmQ0N2M2NWFlZWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2018-07-16 20:10:06.897724-06');
COMMIT;

-- ----------------------------
--  Table structure for "main_homepage_companies"
-- ----------------------------
DROP TABLE IF EXISTS "main_homepage_companies";
CREATE TABLE "main_homepage_companies" (
	"id" int4 NOT NULL DEFAULT nextval('main_homepage_companies_selector_id_seq'::regclass),
	"homepage_id" int4 NOT NULL,
	"companypage_id" int4 NOT NULL
)
WITH (OIDS=FALSE);
ALTER TABLE "main_homepage_companies" OWNER TO "admin";

-- ----------------------------
--  Records of "main_homepage_companies"
-- ----------------------------
BEGIN;
INSERT INTO "main_homepage_companies" VALUES ('1', '1', '3');
INSERT INTO "main_homepage_companies" VALUES ('2', '1', '4');
COMMIT;

-- ----------------------------
--  Table structure for "main_companypage"
-- ----------------------------
DROP TABLE IF EXISTS "main_companypage";
CREATE TABLE "main_companypage" (
	"id" int4 NOT NULL DEFAULT nextval('main_companypage_id_seq'::regclass),
	"name" varchar(150) NOT NULL,
	"logo" varchar(100) NOT NULL,
	"my_order" int4 NOT NULL,
	"short_description" text,
	"slug" varchar(150),
	"image_1" varchar(100) NOT NULL,
	"image_2" varchar(100) NOT NULL,
	"pullquote_1" text,
	"pullquote_1_source" varchar(150) NOT NULL,
	"pullquote_2" text,
	"pullquote_2_source" varchar(150) NOT NULL,
	"text_block_1" text,
	"text_block_2" text,
	"show_company_name" bool NOT NULL,
	"image_3" varchar(100) NOT NULL,
	"pullquote_3" text,
	"pullquote_3_source" varchar(150) NOT NULL,
	"show_block_1" bool NOT NULL,
	"show_block_2" bool NOT NULL,
	"show_block_3" bool NOT NULL,
	"text_block_3" text,
	"external_site" varchar(150),
	"hero_bg" varchar(100)
)
WITH (OIDS=FALSE);
ALTER TABLE "main_companypage" OWNER TO "admin";

-- ----------------------------
--  Records of "main_companypage"
-- ----------------------------
BEGIN;
INSERT INTO "main_companypage" VALUES ('4', 'Image Ally', 'company_pages/Logo---Image-Ally-Century-w-Bar.png', '0', 'Image Ally helps radiology providers enhance their billing operations and payment turnaround. By adding efficiency, employing best practice & evidence based medicine, and eliminating disputes which are prevalent in P&C claims, Image Ally improves care and economics for all parties involved.', 'image-ally', '', '', '', '', '', '', '<p>Image Ally helps radiology providers enhance their billing operations and payment turnaround. By adding efficiency, employing best practice &amp; evidence based medicine, and eliminating disputes which are prevalent in P&amp;C claims, Image Ally improves care and economics for all parties involved.</p>', '', 't', '', '', '', 't', 'f', 'f', '', null, null);
INSERT INTO "main_companypage" VALUES ('3', 'HealthLift Telehealth', 'company_pages/HealthLift_Connect.png', '0', 'HealthLift Connect platform links provider and patients to enhance access, availability, and effectiveness of care administration. Its solution offers a white-labeled app that provides real time 24/7 access to high quality care, patient monitoring, and improved outcomes.', 'healthlift-telehealth', 'company_pages/BBF77B7F-66A7-467F-AA6B-83215BA50624.jpg', '', 'Pullquote #1', 'Cameron', 'Natural selection is anything but random.', 'Richard Dawkins', '<p>Lad Squirrel Kristina scenester Prick Nicole XP Soulja Boy OH SNAP Ginger. Trogdor Toast nickelback Phoebe Gender Yellow sheep Kirk Jeremiah kill bill. Nut Violet Melanie Marine Fear Eleanor Xan Jabroni WoT Zeno. Julie xkcd juke Eugene ima crystal indie zor NAACP United Airlines. Woo-woo Juan xool throwdown Paige kanyed quiz Basic Bitch zen Emma Watson. Bailey Boston High School XBOX Live Whore german Homestar Runner Fuse Kyla aol esrb. Quelch xombie Koala cigarettes Katie Quail lisa U2 Vagina mullet. Booty woot milk Orion Yah Tia zug-zug fluff Oaf Baseball.</p>', '<p>Lad Squirrel Kristina scenester Prick Nicole XP Soulja Boy OH SNAP Ginger. Trogdor Toast nickelback Phoebe Gender Yellow sheep Kirk Jeremiah kill bill. Nut Violet Melanie Marine Fear Eleanor Xan Jabroni WoT Zeno. Julie xkcd juke Eugene ima crystal indie zor NAACP United Airlines. Woo-woo Juan xool throwdown Paige kanyed quiz Basic Bitch zen Emma Watson. Bailey Boston High School XBOX Live Whore german Homestar Runner Fuse Kyla aol esrb. Quelch xombie Koala cigarettes Katie Quail lisa U2 Vagina mullet. Booty woot milk Orion Yah Tia zug-zug fluff Oaf Baseball.</p>', 't', 'company_pages/LinkedIn_Profile_Picture.jpg', 'Natural selection is anything but random.', 'Richard Dawkins', 't', 't', 't', '', 'http://healthlift.com', 'company_pages/Manhattan-Skyline-after-dark.jpg');
COMMIT;


-- ----------------------------
--  Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "auth_group_id_seq" OWNED BY "auth_group"."id";
ALTER SEQUENCE "auth_group_permissions_id_seq" OWNED BY "auth_group_permissions"."id";
ALTER SEQUENCE "auth_permission_id_seq" OWNED BY "auth_permission"."id";
ALTER SEQUENCE "auth_user_groups_id_seq" OWNED BY "auth_user_groups"."id";
ALTER SEQUENCE "auth_user_id_seq" OWNED BY "auth_user"."id";
ALTER SEQUENCE "auth_user_user_permissions_id_seq" OWNED BY "auth_user_user_permissions"."id";
ALTER SEQUENCE "django_admin_log_id_seq" OWNED BY "django_admin_log"."id";
ALTER SEQUENCE "django_content_type_id_seq" OWNED BY "django_content_type"."id";
ALTER SEQUENCE "django_migrations_id_seq" OWNED BY "django_migrations"."id";
ALTER SEQUENCE "main_company_id_seq" OWNED BY "main_company"."id";
ALTER SEQUENCE "main_companypage_id_seq" OWNED BY "main_companypage"."id";
ALTER SEQUENCE "main_contact_id_seq" OWNED BY "main_contact"."id";
ALTER SEQUENCE "main_employee_id_seq" OWNED BY "main_employee"."id";
ALTER SEQUENCE "main_homepage_companies_selector_id_seq" OWNED BY "main_homepage_companies"."id";
ALTER SEQUENCE "main_homepage_id_seq" OWNED BY "main_homepage"."id";
-- ----------------------------
--  Primary key structure for table "main_homepage"
-- ----------------------------
ALTER TABLE "main_homepage" ADD CONSTRAINT "main_homepage_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "django_migrations"
-- ----------------------------
ALTER TABLE "django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "django_content_type"
-- ----------------------------
ALTER TABLE "django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "auth_group_permissions"
-- ----------------------------
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_group_permissions"
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" USING btree(group_id ASC NULLS LAST);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" USING btree(permission_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "auth_group"
-- ----------------------------
ALTER TABLE "auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_group"
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "auth_group" USING btree("name" ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "auth_user_groups"
-- ----------------------------
ALTER TABLE "auth_user_groups" ADD CONSTRAINT "auth_user_groups_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_user_groups"
-- ----------------------------
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" USING btree(group_id ASC NULLS LAST);
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" USING btree(user_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "auth_permission"
-- ----------------------------
ALTER TABLE "auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_permission"
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" USING btree(content_type_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "auth_user_user_permissions" ADD CONSTRAINT "auth_user_user_permissions_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_user_user_permissions"
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" USING btree(permission_id ASC NULLS LAST);
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" USING btree(user_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "main_employee"
-- ----------------------------
ALTER TABLE "main_employee" ADD CONSTRAINT "main_employee_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "django_admin_log"
-- ----------------------------
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "django_admin_log"
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" USING btree(content_type_id ASC NULLS LAST);
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" USING btree(user_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "auth_user"
-- ----------------------------
ALTER TABLE "auth_user" ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_user"
-- ----------------------------
CREATE INDEX "auth_user_username_6821ab7c_like" ON "auth_user" USING btree(username ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "main_company"
-- ----------------------------
ALTER TABLE "main_company" ADD CONSTRAINT "main_company_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "main_contact"
-- ----------------------------
ALTER TABLE "main_contact" ADD CONSTRAINT "main_contact_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "django_session"
-- ----------------------------
ALTER TABLE "django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "django_session"
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" USING btree(expire_date ASC NULLS LAST);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "django_session" USING btree(session_key ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "main_homepage_companies"
-- ----------------------------
ALTER TABLE "main_homepage_companies" ADD CONSTRAINT "main_homepage_companies_selector_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "main_homepage_companies"
-- ----------------------------
CREATE INDEX "main_homepage_companies_selector_companypage_id_6da32b28" ON "main_homepage_companies" USING btree(companypage_id ASC NULLS LAST);
CREATE INDEX "main_homepage_companies_selector_homepage_id_3b2e48dc" ON "main_homepage_companies" USING btree(homepage_id ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "main_companypage"
-- ----------------------------
ALTER TABLE "main_companypage" ADD CONSTRAINT "main_companypage_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "main_companypage"
-- ----------------------------
CREATE INDEX "main_companypage_slug_bfcdc0d4" ON "main_companypage" USING btree(slug ASC NULLS LAST);
CREATE INDEX "main_companypage_slug_bfcdc0d4_like" ON "main_companypage" USING btree(slug ASC NULLS LAST);

