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

 Date: 08/01/2017 16:34:04 PM
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
CREATE SEQUENCE "auth_permission_id_seq" INCREMENT 1 START 30 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
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
CREATE SEQUENCE "django_admin_log_id_seq" INCREMENT 1 START 15 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "django_admin_log_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "django_content_type_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_content_type_id_seq";
CREATE SEQUENCE "django_content_type_id_seq" INCREMENT 1 START 10 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "django_content_type_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "django_migrations_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_migrations_id_seq";
CREATE SEQUENCE "django_migrations_id_seq" INCREMENT 1 START 22 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "django_migrations_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "main_company_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "main_company_id_seq";
CREATE SEQUENCE "main_company_id_seq" INCREMENT 1 START 3 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "main_company_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "main_contact_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "main_contact_id_seq";
CREATE SEQUENCE "main_contact_id_seq" INCREMENT 1 START 5 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "main_contact_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "main_employee_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "main_employee_id_seq";
CREATE SEQUENCE "main_employee_id_seq" INCREMENT 1 START 2 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "main_employee_id_seq" OWNER TO "admin";

-- ----------------------------
--  Sequence structure for "main_homepage_id_seq"
-- ----------------------------
DROP SEQUENCE IF EXISTS "main_homepage_id_seq";
CREATE SEQUENCE "main_homepage_id_seq" INCREMENT 1 START 1 MAXVALUE 9223372036854775807 MINVALUE 1 CACHE 1;
ALTER TABLE "main_homepage_id_seq" OWNER TO "admin";

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
INSERT INTO "django_migrations" VALUES ('1', 'contenttypes', '0001_initial', '2017-06-15 15:15:38.848794-06');
INSERT INTO "django_migrations" VALUES ('2', 'auth', '0001_initial', '2017-06-15 15:15:38.927144-06');
INSERT INTO "django_migrations" VALUES ('3', 'admin', '0001_initial', '2017-06-15 15:15:38.958709-06');
INSERT INTO "django_migrations" VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2017-06-15 15:15:38.975948-06');
INSERT INTO "django_migrations" VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2017-06-15 15:15:39.008761-06');
INSERT INTO "django_migrations" VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2017-06-15 15:15:39.016773-06');
INSERT INTO "django_migrations" VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2017-06-15 15:15:39.030649-06');
INSERT INTO "django_migrations" VALUES ('8', 'auth', '0004_alter_user_username_opts', '2017-06-15 15:15:39.042738-06');
INSERT INTO "django_migrations" VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2017-06-15 15:15:39.056341-06');
INSERT INTO "django_migrations" VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2017-06-15 15:15:39.058522-06');
INSERT INTO "django_migrations" VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2017-06-15 15:15:39.071891-06');
INSERT INTO "django_migrations" VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2017-06-15 15:15:39.090403-06');
INSERT INTO "django_migrations" VALUES ('13', 'sessions', '0001_initial', '2017-06-15 15:15:39.101334-06');
INSERT INTO "django_migrations" VALUES ('14', 'main', '0001_initial', '2017-06-21 18:42:35.851852-06');
INSERT INTO "django_migrations" VALUES ('15', 'main', '0002_employee', '2017-06-27 12:27:24.846208-06');
INSERT INTO "django_migrations" VALUES ('16', 'main', '0003_company', '2017-06-27 12:36:52.51783-06');
INSERT INTO "django_migrations" VALUES ('17', 'main', '0004_contact', '2017-06-27 13:51:00.119972-06');
INSERT INTO "django_migrations" VALUES ('18', 'main', '0005_auto_20170801_1345', '2017-08-01 13:46:02.088772-06');
INSERT INTO "django_migrations" VALUES ('19', 'main', '0006_auto_20170801_1352', '2017-08-01 13:52:18.560989-06');
INSERT INTO "django_migrations" VALUES ('20', 'main', '0007_auto_20170801_1614', '2017-08-01 16:14:17.627298-06');
INSERT INTO "django_migrations" VALUES ('21', 'main', '0008_homepage_spacer_image_4', '2017-08-01 16:22:02.929099-06');
INSERT INTO "django_migrations" VALUES ('22', 'main', '0009_auto_20170801_1628', '2017-08-01 16:28:24.90549-06');
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
INSERT INTO "django_content_type" VALUES ('2', 'auth', 'group');
INSERT INTO "django_content_type" VALUES ('3', 'auth', 'permission');
INSERT INTO "django_content_type" VALUES ('4', 'auth', 'user');
INSERT INTO "django_content_type" VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO "django_content_type" VALUES ('6', 'sessions', 'session');
INSERT INTO "django_content_type" VALUES ('7', 'main', 'homepage');
INSERT INTO "django_content_type" VALUES ('8', 'main', 'employee');
INSERT INTO "django_content_type" VALUES ('9', 'main', 'company');
INSERT INTO "django_content_type" VALUES ('10', 'main', 'contact');
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
INSERT INTO "django_admin_log" VALUES ('1', '2017-06-21 18:43:39.047647-06', '1', 'Homepage object', '1', '[{"added": {}}]', '7', '1');
INSERT INTO "django_admin_log" VALUES ('2', '2017-06-21 18:58:35.798032-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["hero_bg"]}}]', '7', '1');
INSERT INTO "django_admin_log" VALUES ('3', '2017-06-27 12:30:02.03154-06', '1', 'Employee - Cameron Anderson', '1', '[{"added": {}}]', '8', '1');
INSERT INTO "django_admin_log" VALUES ('4', '2017-06-27 12:31:00.825703-06', '2', 'Employee - Amy-Kate Andrews', '1', '[{"added": {}}]', '8', '1');
INSERT INTO "django_admin_log" VALUES ('5', '2017-08-01 13:47:05.315872-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["about_copy", "about_image"]}}]', '7', '3');
INSERT INTO "django_admin_log" VALUES ('6', '2017-08-01 13:47:19.015193-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["about_copy"]}}]', '7', '3');
INSERT INTO "django_admin_log" VALUES ('7', '2017-08-01 13:52:48.387168-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["mission_title", "mission_copy"]}}]', '7', '3');
INSERT INTO "django_admin_log" VALUES ('8', '2017-08-01 13:53:13.310626-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["spacer_image_1", "spacer_image_2", "spacer_image_3"]}}]', '7', '3');
INSERT INTO "django_admin_log" VALUES ('9', '2017-08-01 14:20:15.484086-06', '4', 'Contact Request - test', '2', '[{"changed": {"fields": ["contacted"]}}]', '10', '3');
INSERT INTO "django_admin_log" VALUES ('10', '2017-08-01 16:17:26.517621-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["pullquote", "quote_source"]}}]', '7', '3');
INSERT INTO "django_admin_log" VALUES ('11', '2017-08-01 16:23:11.640615-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["spacer_image_4"]}}]', '7', '3');
INSERT INTO "django_admin_log" VALUES ('12', '2017-08-01 16:24:59.26281-06', '1', 'Aetna', '1', '[{"added": {}}]', '9', '3');
INSERT INTO "django_admin_log" VALUES ('13', '2017-08-01 16:25:13.025023-06', '2', 'Select Health', '1', '[{"added": {}}]', '9', '3');
INSERT INTO "django_admin_log" VALUES ('14', '2017-08-01 16:25:25.038253-06', '3', 'IHC', '1', '[{"added": {}}]', '9', '3');
INSERT INTO "django_admin_log" VALUES ('15', '2017-08-01 16:29:22.638964-06', '1', 'HomePage', '2', '[{"changed": {"fields": ["companies_title", "team_title"]}}]', '7', '3');
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
INSERT INTO "auth_user" VALUES ('1', 'pbkdf2_sha256$36000$HazJ3nS5fj7u$KRabmEgzkFH1Ro/ExuvKprVgCFozC4LPONoBiMAsapU=', '2017-06-15 15:30:59.181703-06', 't', 'admin', '', '', 'amy.kate.andrews@gmail.com', 't', 't', '2017-06-15 15:16:00.0576-06');
INSERT INTO "auth_user" VALUES ('2', 'pbkdf2_sha256$36000$afKJAUAQ6FpU$GQrnzghUr7VUGzq9ToOJl+Hx309aokNlIRQwCtqn5vA=', null, 't', 'aamykate', '', '', 'amy.kate.andrews@gmail.com', 't', 't', '2017-08-01 12:58:24.047524-06');
INSERT INTO "auth_user" VALUES ('3', 'pbkdf2_sha256$36000$SlYt7XaH8fSn$vkSCS9W+rG7EG8akYynhDyyyHYXcfeNfO6pCK/7Q+so=', '2017-08-01 13:03:14.261612-06', 't', 'amy', '', '', 'amy.kate.andrews@gmail.com', 't', 't', '2017-08-01 13:03:06.181414-06');
COMMIT;

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
INSERT INTO "auth_permission" VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO "auth_permission" VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO "auth_permission" VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO "auth_permission" VALUES ('7', 'Can add permission', '3', 'add_permission');
INSERT INTO "auth_permission" VALUES ('8', 'Can change permission', '3', 'change_permission');
INSERT INTO "auth_permission" VALUES ('9', 'Can delete permission', '3', 'delete_permission');
INSERT INTO "auth_permission" VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO "auth_permission" VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO "auth_permission" VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO "auth_permission" VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO "auth_permission" VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO "auth_permission" VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO "auth_permission" VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO "auth_permission" VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO "auth_permission" VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO "auth_permission" VALUES ('19', 'Can add Home Page', '7', 'add_homepage');
INSERT INTO "auth_permission" VALUES ('20', 'Can change Home Page', '7', 'change_homepage');
INSERT INTO "auth_permission" VALUES ('21', 'Can delete Home Page', '7', 'delete_homepage');
INSERT INTO "auth_permission" VALUES ('22', 'Can add Employee', '8', 'add_employee');
INSERT INTO "auth_permission" VALUES ('23', 'Can change Employee', '8', 'change_employee');
INSERT INTO "auth_permission" VALUES ('24', 'Can delete Employee', '8', 'delete_employee');
INSERT INTO "auth_permission" VALUES ('25', 'Can add Company', '9', 'add_company');
INSERT INTO "auth_permission" VALUES ('26', 'Can change Company', '9', 'change_company');
INSERT INTO "auth_permission" VALUES ('27', 'Can delete Company', '9', 'delete_company');
INSERT INTO "auth_permission" VALUES ('28', 'Can add Contact Request', '10', 'add_contact');
INSERT INTO "auth_permission" VALUES ('29', 'Can change Contact Request', '10', 'change_contact');
INSERT INTO "auth_permission" VALUES ('30', 'Can delete Contact Request', '10', 'delete_contact');
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
INSERT INTO "django_session" VALUES ('f6aneqd8mtxv8wgr9bdo8765rlr16bnr', 'Y2RlZmMxN2ZmYzVjMjZhYTA4MDkxNTA1ODg1MjNmMGE5YjJiMWZjZjp7Il9hdXRoX3VzZXJfaGFzaCI6IjAyYTI0NTBlZDhmZmVjNzA1ODY2YTRiNTMxZTllYjRkNjJlMzhkZDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-06-29 15:30:59.185403-06');
INSERT INTO "django_session" VALUES ('00uf4rsuzpeo6x66m0iubjigtn58ds7n', 'ZDA3MDFhMzE0ZDlmZDQ0OTU1MWI1ZTY1OWJmMjkwNzU5ZWIxYTM2YTp7Il9hdXRoX3VzZXJfaGFzaCI6IjI1YmFiZTExYjEzNjM2OWZkMGMxZjc5ZDlhZjUyOTM3MjhlZGJjOTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2017-08-15 13:03:14.268039-06');
COMMIT;

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
INSERT INTO "main_employee" VALUES ('2', 'Amy-Kate Andrews', 'CTO', 'Amy-Kate is responsible for directing the technical execution of HealthLift''s products. She is obsessed with code, EDM, and memes.', 'employees/headshot.jpg', '2');
INSERT INTO "main_employee" VALUES ('1', 'Cameron Anderson', 'CEO', 'Cameron is a highly accomplished business professional. He attended Brigham Young University for his undergraduate degree, and went on the obtain an MBA from Georgetown. He loves skiing and his dog son Rupert.', 'employees/cam.jpg', '1');
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
INSERT INTO "main_company" VALUES ('3', 'IHC', 'companies/logo-3.jpg', 'Plaid wolf schlitz, poutine polaroid subway tile adaptogen craft beer 3 wolf moon actually taiyaki green juice af.', '', '3');
INSERT INTO "main_company" VALUES ('1', 'Aetna', 'companies/logo-2.jpg', 'Plaid wolf schlitz, poutine polaroid subway tile adaptogen craft beer 3 wolf moon actually taiyaki green juice af.', '', '2');
INSERT INTO "main_company" VALUES ('2', 'Select Health', 'companies/demo-logo.jpg', 'Plaid wolf schlitz, poutine polaroid subway tile adaptogen craft beer 3 wolf moon actually taiyaki green juice af.', '', '1');
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
INSERT INTO "main_contact" VALUES ('1', 'Amy-Kate Andrews', 'amy.kate.andrews@gmail.com', 'Test message', '2017-06-27 13:55:32.574825-06', 'f');
INSERT INTO "main_contact" VALUES ('2', 'Matt', 'matt@deloitte.com', 'Test message from Matt.', '2017-06-27 13:57:51.219475-06', 'f');
INSERT INTO "main_contact" VALUES ('3', 'Matt Hromalik', 'matt@deloitte.com', '', '2017-06-27 14:00:30.674219-06', 'f');
INSERT INTO "main_contact" VALUES ('4', 'test', 'test@example.com', 'test', '2017-08-01 14:20:15.481433-06', 't');
INSERT INTO "main_contact" VALUES ('5', 'cameron', 'cameron@test.com', 'hello', '2017-08-01 14:20:37.225236-06', 'f');
COMMIT;

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
INSERT INTO "main_homepage" VALUES ('1', 'homepage/timp.jpg', 'Who We Are', '<p>HealthLift is a health services technology company.</p>

<p>&nbsp;</p>

<p>We bring healthcare to the patient and deliver on their needs by simplifying their ability to access care. With HealthLift, timely access to quality care has never been easier.</p>

<p>An innovative service that is built upon transparency and dependability, HealthLift is dedicated to making healthcare as individualized as each patient.</p>', 'homepage/vector-nurse-van.png', '<p>We bring healthcare to the patient and deliver on their needs by simplifying their ability to access care. With HealthLift, timely access to quality care has never been easier.</p>

<p>An innovative service that is built upon transparency and dependability, HealthLift is dedicated to making healthcare as individualized as each patient.</p>

<p>We bring healthcare to the patient and deliver on their needs by simplifying their ability to access care. With HealthLift, timely access to quality care has never been easier.</p>

<p>An innovative service that is built upon transparency and dependability, HealthLift is dedicated to making healthcare as individualized as each patient.</p>', 'Our Mission', 'homepage/mountains.jpg', 'homepage/bg-slc.jpg', 'homepage/timp_wVUkLtT.jpg', 'The best way to predict the future is to create it.', 'Peter Drucker', 'homepage/spacesloth.jpg', 'Our Companies', 'Our Team');
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
ALTER SEQUENCE "main_contact_id_seq" OWNED BY "main_contact"."id";
ALTER SEQUENCE "main_employee_id_seq" OWNED BY "main_employee"."id";
ALTER SEQUENCE "main_homepage_id_seq" OWNED BY "main_homepage"."id";
-- ----------------------------
--  Primary key structure for table "django_migrations"
-- ----------------------------
ALTER TABLE "django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "django_content_type"
-- ----------------------------
ALTER TABLE "django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

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
--  Primary key structure for table "auth_user"
-- ----------------------------
ALTER TABLE "auth_user" ADD CONSTRAINT "auth_user_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "auth_user"
-- ----------------------------
CREATE INDEX "auth_user_username_6821ab7c_like" ON "auth_user" USING btree(username ASC NULLS LAST);

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
--  Primary key structure for table "django_session"
-- ----------------------------
ALTER TABLE "django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table "django_session"
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" USING btree(expire_date ASC NULLS LAST);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "django_session" USING btree(session_key ASC NULLS LAST);

-- ----------------------------
--  Primary key structure for table "main_employee"
-- ----------------------------
ALTER TABLE "main_employee" ADD CONSTRAINT "main_employee_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "main_company"
-- ----------------------------
ALTER TABLE "main_company" ADD CONSTRAINT "main_company_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "main_contact"
-- ----------------------------
ALTER TABLE "main_contact" ADD CONSTRAINT "main_contact_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Primary key structure for table "main_homepage"
-- ----------------------------
ALTER TABLE "main_homepage" ADD CONSTRAINT "main_homepage_pkey" PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

