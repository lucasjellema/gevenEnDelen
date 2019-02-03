prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.05.24'
,p_default_workspace_id=>17511755151038199911
);
end;
/
prompt  WORKSPACE 17511755151038199911
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   12:42 Saturday February 2, 2019
--   Exported By:     LUCAS.JELLEMA@AMIS.NL
--   Export Type:     Workspace Export
--   Version:         18.2.0.00.12
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_180200
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>17511755151038199911);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace LJWS...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 17511948090348204295
 ,p_provisioning_company_id => 17511755151038199911
 ,p_short_name => 'LJWS'
 ,p_display_name => 'LJWS'
 ,p_first_schema_provisioned => 'LJWS'
 ,p_company_schemas => 'LJWS'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'LJWS'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'LJWS'
 ,p_files_version => 1
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 5346521014052520,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 5346468945052520,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 5346340471052517,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 27238491083666276357,
  p_GROUP_NAME => 'eindgebruikers',
  p_SECURITY_GROUP_ID => 17511755151038199911,
  p_GROUP_DESC => 'groep van eindgebruikers');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '28181965245347782021',
  p_user_name                    => 'ANNE',
  p_first_name                   => 'Anne',
  p_last_name                    => 'Riemersma',
  p_description                  => '',
  p_email_address                => 'xx@yy.nl',
  p_web_password                 => '66A5315157E621BCEB15674956AC89063EE667154ECF23850534F02FC8A6083C391313A90656760C69BF700ED329CD7AB4E1F15A8E67A1A54900881740452A02',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '27238491083666276357:',
  p_developer_privs              => '',
  p_default_schema               => 'LJWS',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201902020000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_default_date_format          => 'DD-MM-YYYY',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '28182693803014899462',
  p_user_name                    => 'IRENE',
  p_first_name                   => 'Irene',
  p_last_name                    => 'van Rossum',
  p_description                  => '',
  p_email_address                => 'irene.vanrossum@gmail.com',
  p_web_password                 => '9775946ED94687BCA7CF1884E35C510DC3565BA0F7CBEDC72D99D8C469372B4F20FFDF92E4177E30F72F80309DFC2298262E40C83457EB84BCAFA6570BE550AD',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '27238491083666276357:',
  p_developer_privs              => '',
  p_default_schema               => 'LJWS',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201902020000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_websheet_dev_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_default_date_format          => 'DD-MM-YYYY',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '17511755099879199911',
  p_user_name                    => 'LUCAS.JELLEMA@AMIS.NL',
  p_first_name                   => 'Lucas',
  p_last_name                    => 'Jellema',
  p_description                  => '',
  p_email_address                => 'lucas.jellema@amis.nl',
  p_web_password                 => '8802459C4C6A26480D2871FCCE01417ECB6F9C25F30A47270772C0838E92E60E6E4DEBEAA0FF66A0456058B55FBD4A85FACBF734B226ECF3B7A4CD2BB4CA036D',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'LJWS',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201901271227','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '27237459651663190889',
  p_user_name                    => 'MADELON',
  p_first_name                   => 'Madelon',
  p_last_name                    => 'van Rossum',
  p_description                  => 'main application user',
  p_email_address                => 'jellemavanrossum@hotmail.com',
  p_web_password                 => '52545C428FA110B8F2A12B4A10EC6D3DF62BDA142854D7316903B171929DCD6AD70CCB58FA7A2143C627840012B39F98094FBD5AE532593DEC9363C455C4E4C2',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '27238491083666276357:',
  p_developer_privs              => '',
  p_default_schema               => 'LJWS',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201901270000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_default_date_format          => 'dd-mm-yyyy hh24:mi',
  p_allow_access_to_schemas      => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...news
--
begin
null;
end;
/
--
prompt ...links
--
begin
null;
end;
/
--
prompt ...bugs
--
begin
null;
end;
/
--
prompt ...events
--
begin
null;
end;
/
--
prompt ...feature types
--
begin
null;
end;
/
--
prompt ...features
--
begin
null;
end;
/
--
prompt ...feature map
--
begin
null;
end;
/
--
prompt ...tasks
--
begin
wwv_flow_team_api.create_task (
  p_id => 27247658170043089503 + wwv_flow_team_api.g_id_offset
 ,p_friendly_id => 1
 ,p_assigned_to => 'lucas.jellema@amis.nl'
 ,p_task_name => 'Want veld image moet afbeelding heten'
 ,p_description => 
'Want veld image moet afbeelding heten'
 ,p_task_status => 0
 ,p_application_id => 26805
 ,p_product_version => 'Release 1.0'
 ,p_created_by => 'LUCAS.JELLEMA@AMIS.NL'
 ,p_created_on => to_date('20190127171947','YYYYMMDDHH24MISS')
 ,p_updated_by => 'LUCAS.JELLEMA@AMIS.NL'
 ,p_updated_on => to_date('20190127171947','YYYYMMDDHH24MISS')
 ,p_page_id => 2
);
end;
/
--
prompt ...feedback
--
begin
wwv_flow_team_api.create_feedback (
  p_id => 27247628537578078500 + wwv_flow_team_api.g_id_offset
 ,p_feedback_id => 1
 ,p_feedback_comment => 'Want veld image moet afbeelding heten'
 ,p_feedback_type => 1
 ,p_feedback_status => 4
 ,p_application_id => 26805
 ,p_application_name => 'Geven en Delen'
 ,p_page_id => 2
 ,p_page_name => 'submit_offer'
 ,p_page_last_updated_by => 'LUCAS.JELLEMA@AMIS.NL'
 ,p_page_last_updated_on => to_date('20190127170310','YYYYMMDDHH24MISS')
 ,p_session_id => '104273356268151'
 ,p_apex_user => 'MADELON'
 ,p_user_email => 'jellemavanrossum@hotmail.com'
 ,p_application_version => 'Release 1.0'
 ,p_session_info => 'security_group_id=17511755151038199911'||chr(10)||
'expires_on=28-JAN-19'||chr(10)||
'ip_address=141.146.114.42'||chr(10)||
'session_id='||chr(10)||
'created_on=27-JAN-19'
 ,p_session_state => 'P8_CATEGORIES_ID="58"'||chr(10)||
'P6_ID="170736233054950896430796764023064670949"'||chr(10)||
'P6_ID_COUNT="1 of 1"'||chr(10)||
'P8_ID="170747124805339329896222724409514548431"'||chr(10)||
'P8_ID_COUNT="2 of 2"'||chr(10)||
'="27239832892663422829:GRID"'||chr(10)||
'P2_NAME="Een tuinstoel"'||chr(10)||
'P2_DESCRIPTION="Een mooie rieten gammele stoel"'||chr(10)||
'P2_THE_USER="Madelon"'||chr(10)||
'P2_IMAGE="27247515214096060721/tobias-head.jpg"'||chr(10)||
'P10014_TIMEFRAME="900"'||chr(10)||
'P2_HANDOVER_OR_SHARE="H"'||chr(10)||
'P2_CATEGORIES_ID="58"'||chr(10)||
'P10020_USER_AGENT="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb"'||chr(10)||
'P10020_RATING="2"'||chr(10)||
'P10020_FEEDBACK="Want veld image moet afbeelding heten"'||chr(10)||
'P8_ID_PREV="170744285107164193576771845791788314960"'||chr(10)||
'P8_NAME="Een tuinstoel"'||chr(10)||
'P8_THE_USER="MADELON"'||chr(10)||
'P8_UPDATED="Sunday, 27 January, 2019 17:14"'||chr(10)||
'P8_DESCRIPTION="Een mooie rieten gammele stoel"'||chr(10)||
'P8_CREATED="27-JAN-19"'||chr(10)||
'P8_CREATED_BY="MADELON"'||chr(10)||
'P8_UPDATED_BY="MADELON"'||chr(10)||
'="1:10:5:0"'||chr(10)||
'P10020_PAGE_ID="2"'||chr(10)||
''
 ,p_parsing_schema => 'LJWS'
 ,p_http_user_agent => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36'
 ,p_remote_addr => '84.104.0.231,141.146.114.42'
 ,p_remote_user => 'APEX_PUBLIC_USER'
 ,p_http_host => 'apex.oracle.com'
 ,p_server_name => 'apex.oracle.com'
 ,p_server_port => '443'
 ,p_task_id => 27247658170043089503 + wwv_flow_team_api.g_id_offset
 ,p_logging_security_group_id => 17511755151038199911
 ,p_logged_by_workspace_name => 'LJWS'
 ,p_created_by => 'MADELON'
 ,p_created_on => to_timestamp_tz('20190127171757.573988000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
 ,p_updated_by => 'LUCAS.JELLEMA@AMIS.NL'
 ,p_updated_on => to_timestamp_tz('20190127171947.616014000 +00:00 ','YYYYMMDDHH24MISSxFF TZR TZD')
);
end;
/
--
prompt ...task defaults
--
begin
null;
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
