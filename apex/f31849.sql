prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>106832397978705752132
,p_default_application_id=>31849
,p_default_id_offset=>0
,p_default_owner=>'WKSP_INVENTORY12345'
);
end;
/
 
prompt APPLICATION 31849 - INVENTORY MANAGEMENT SYSTEM
--
-- Application Export:
--   Application:     31849
--   Name:            INVENTORY MANAGEMENT SYSTEM
--   Date and Time:   05:59 Monday February 17, 2025
--   Exported By:     INEEDGAMESSS@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     25
--       Items:                  113
--       Validations:              7
--       Processes:               38
--       Regions:                 66
--       Buttons:                 62
--       Dynamic Actions:         22
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  4
--         Breadcrumbs:            1
--           Entries:             12
--       Security:
--         Authentication:         2
--         Authorization:          3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                  10
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.2
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_INVENTORY12345')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'INVENTORY MANAGEMENT SYSTEM')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'INVENTORY-MANAGEMENT-SYSTEM')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'19509DEDE7D723D11E908B2DB18B6B74DE0FCC9E805EC3A91FAEF4FC1E13776D'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY HH:MIPM'
,p_timestamp_format=>'DD-MON-YYYY HH:MIPM'
,p_timestamp_tz_format=>'DD-MON-YYYY HH.MI.SSXFF PM TZR'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(1412199297412682126)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'INVENTORY MANAGEMENT SYSTEM'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'INVENTORY MANAGEMENT SYSTEM'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>15599968680270
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(31849)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(107681682723379409958)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--default:t-TreeNav--classic'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(107682974043358410219)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(107681682723379409958)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15599872973682
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(107682985202151410237)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'Vadmin varchar2(1);',
'Vallow varchar2(1);',
'begin',
'select admin into Vadmin from app_users where upper(userid)=upper(:APP_USER);',
'if Vadmin = ''N'' then',
'select allow_access into Vallow from xbiz_groups_detail',
'where segmentType=''Menu'' and segmentID=',
'(select segmentID from xbiz_app_segments where segmentTitle like',
'''Home%'' and segmentType=''Menu'' ) and',
'groupID=(select groupID from app_users where',
'upper(userid)=upper(:APP_USER));',
'',
'if Vallow=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'else',
'return true;',
'end if;',
'exception',
'when NO_DATA_FOUND then return false;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109045865033182501548)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Setup'
,p_list_item_icon=>'fa-gear'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'Vadmin varchar2(1);',
'Vallow varchar2(1);',
'begin',
'select admin into Vadmin from app_users where upper(userid)=upper(:APP_USER);',
'if Vadmin = ''N'' then',
'select allow_access into Vallow from xbiz_groups_detail',
'where segmentType=''Menu'' and segmentID=',
'(select segmentID from xbiz_app_segments where segmentTitle like',
'''Setup%'' and segmentType=''Menu'' ) and',
'groupID=(select groupID from app_users where',
'upper(userid)=upper(:APP_USER));',
'',
'if Vallow=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'else',
'return true;',
'end if;',
'exception',
'when NO_DATA_FOUND then return false;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109050158530024601519)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Manage Customers'
,p_list_item_link_target=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_parent_list_item_id=>wwv_flow_imp.id(109045865033182501548)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109050788914131608424)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Manage Products'
,p_list_item_link_target=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-package'
,p_parent_list_item_id=>wwv_flow_imp.id(109045865033182501548)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109051743535283625467)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Manage Suppliers'
,p_list_item_link_target=>'f?p=&APP_ID.:118:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-chart'
,p_parent_list_item_id=>wwv_flow_imp.id(109045865033182501548)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109052099065840637392)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Reset Password'
,p_list_item_link_target=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-lock-password'
,p_parent_list_item_id=>wwv_flow_imp.id(109045865033182501548)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109046644836108507722)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Buy'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-arrow-down'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'Vadmin varchar2(1);',
'Vallow varchar2(1);',
'begin',
'select admin into Vadmin from app_users where upper(userid)=upper(:APP_USER);',
'if Vadmin = ''N'' then',
'select allow_access into Vallow from xbiz_groups_detail',
'where segmentType=''Menu'' and segmentID=',
'(select segmentID from xbiz_app_segments where segmentTitle like',
'''Buy%'' and segmentType=''Menu'' ) and',
'groupID=(select groupID from app_users where',
'upper(userid)=upper(:APP_USER));',
'',
'if Vallow=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'else',
'return true;',
'end if;',
'exception',
'when NO_DATA_FOUND then return false;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109047405665617519937)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-arrow-up'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'Vadmin varchar2(1);',
'Vallow varchar2(1);',
'begin',
'select admin into Vadmin from app_users where upper(userid)=upper(:APP_USER);',
'if Vadmin = ''N'' then',
'select allow_access into Vallow from xbiz_groups_detail',
'where segmentType=''Menu'' and segmentID=',
'(select segmentID from xbiz_app_segments where segmentTitle like',
'''Orders%'' and segmentType=''Menu'' ) and',
'groupID=(select groupID from app_users where',
'upper(userid)=upper(:APP_USER));',
'',
'if Vallow=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'else',
'return true;',
'end if;',
'exception',
'when NO_DATA_FOUND then return false;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109047502263361526431)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Reports'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-list'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'Vadmin varchar2(1);',
'Vallow varchar2(1);',
'begin',
'select admin into Vadmin from app_users where upper(userid)=upper(:APP_USER);',
'if Vadmin = ''N'' then',
'select allow_access into Vallow from xbiz_groups_detail',
'where segmentType=''Menu'' and segmentID=',
'(select segmentID from xbiz_app_segments where segmentTitle like',
'''Reports%'' and segmentType=''Menu'' ) and',
'groupID=(select groupID from app_users where',
'upper(userid)=upper(:APP_USER));',
'',
'if Vallow=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'else',
'return true;',
'end if;',
'exception',
'when NO_DATA_FOUND then return false;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(994203962912691768)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Stocks'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-inbox'
,p_parent_list_item_id=>wwv_flow_imp.id(109047502263361526431)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109049047674698577667)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Admin'
,p_list_item_icon=>'fa-database-user'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'Vadmin varchar2(1);',
'Vallow varchar2(1);',
'begin',
'select admin into Vadmin from app_users where upper(userid)=upper(:APP_USER);',
'if Vadmin = ''N'' then',
'select allow_access into Vallow from xbiz_groups_detail',
'where segmentType=''Menu'' and segmentID=',
'(select segmentID from xbiz_app_segments where segmentTitle like',
'''Admin%'' and segmentType=''Menu'' ) and',
'groupID=(select groupID from app_users where',
'upper(userid)=upper(:APP_USER));',
'',
'if Vallow=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'else',
'return true;',
'end if;',
'exception',
'when NO_DATA_FOUND then return false;',
'end;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109055983170847043249)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Application Segments'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-3row'
,p_parent_list_item_id=>wwv_flow_imp.id(109049047674698577667)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109056037440606050011)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>'User Group and Group Assign'
,p_list_item_link_target=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_parent_list_item_id=>wwv_flow_imp.id(109049047674698577667)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109056184449043750123)
,p_list_item_display_sequence=>230
,p_list_item_link_text=>'Application Users'
,p_list_item_link_target=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-man'
,p_parent_list_item_id=>wwv_flow_imp.id(109049047674698577667)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(107682974043358410219)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15598236944327
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(107682986891824410241)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(107682987382386410242)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(107682986891824410241)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(107682987721254410242)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(107682986891824410241)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/reports_list
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(109057820607979085467)
,p_name=>'Reports List'
,p_list_status=>'PUBLIC'
,p_version_scn=>15598722561382
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109057820815015085468)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customer Orders'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109057821298340085469)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Sales by Category and Product'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109057821681170085469)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sales by Category/Month'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109057822009757085469)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Order Calender'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109057822432766085470)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Product Order Tree'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/order_wizard
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(109058787736265811981)
,p_name=>'Order Wizard'
,p_list_status=>'PUBLIC'
,p_version_scn=>15598723138787
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109058787918217811983)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Identify Customer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109058788385215811983)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Select Items'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(109058788799096811983)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Order Summary'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE9000001B9494441545847ED95CF4A025114C63F0BD149C1A694C2723198E6B40EA42008772D6AD1B22768DFB2E768D923D4A617685548';
wwv_flow_imp.g_varchar2_table(2) := 'D122222BABB1A4829A74CC6CD4B18C73E18AF4CF19C12C98B33D337CBFFB9DF3DDEB585ADEA8A38BE5B0016C076C07FEAD0386A1C32BD4A115CAEC16113C036DDD2696EF012E1C090F23E01799E8F18902A75340FAE2CE328865802151871C93903ABBC5';
wwv_flow_imp.g_varchar2_table(3) := '444C62000F6A1EC5E23354358F52D567C909CB00B371118BF393D8DCDA67424AB600722334E2C74E328553C5F81D00522117D24A9E8953D9001D75806F7FBFCF0D796C90ED011F01D9BF9B4CA15CA9C1EF1791B9D64CA7A1E512EAA51CBC7D75B6F93C76';
wwv_flow_imp.g_varchar2_table(4) := '3C7A78ABC02D7898304F04DF408AA6199096002C76D12052E78F9F62E776F542D39E801E17D36D27962D0178EC4880A2D71CBBEC8D8A88243240EAA9B9172857F7988ACBA66369098020D6D6B7311D97D9899B0138A024851AF78099A5FCFB00B403AB2B';
wwv_flow_imp.g_varchar2_table(5) := '0B8D53353B40274CCC44D9083AE600A5806A2E1166D12380D068007B0719A8DA2B6A559DF578D1086834BC4F8FD44FD57204CD3F138C6194217844F6FA7DECC9E3411C1E5D7ED9FF0EC21280A557C6E4C73680ED80ED40D71D7807291544F064DF3C8C00';
wwv_flow_imp.g_varchar2_table(6) := '00000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(107682975146116410222)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000098349444154785EED9DBF6F1C4514C7E71C3BC144A004394A14489106C5142021441484C0EEA1C0C1526C5146E228A8F8036CFF';
wwv_flow_imp.g_varchar2_table(2) := '0154141C524A748E303105E96D7E882828128202079A14F9A144B14884144C62E716BDB5E7184F66776767DEECEEED7E578A72B667E6CD7CDFE7DEBCBD9B77D712B8A08087022D8FBEE80A05040002045E0A00202FF9D0190081012F050090977CE80C80';
wwv_flow_imp.g_varchar2_table(3) := 'C080970200C84B3E74064060C04B0100E4251F3A032030E0A50000F2920F9D011018F052000079C987CE950368E66CF7F02EB78CECDDFD73137DB6F9E88E5CF6E2B9D9FEE32A48513A4067DA4B1343424C4462CFDB2D114D544194EACFA1B74073EC09B1';
wwv_flow_imp.g_varchar2_table(4) := '7ABE33BD5AE67C4B0188A069893D730086CBF5DB40753BD3F35C23DA8E53284000C7D62D3EED7A0B4582540840B3EDA5792186E67C6441DFBC0A1403527080004F5EC773B60F0F513080B05D7182E03E56245AAB9178BC102AD90E02D0F69DD5D08AFBB2';
wwv_flow_imp.g_varchar2_table(5) := 'D1935B819EE84D8680881D20C0C3ED7ABEF14240C40ED04C7B7905B7E77C4EE71C89B6B3C5CED424E798AC002161E6744DA8B178136B3680004F28878718970F2246802E4421968A31C328D0ED9C66F13DCB20883E619C1C7254AE849A0920449F90CE0E';
wwv_flow_imp.g_varchar2_table(6) := '31365742ED0D10A24F08F716332647140240C5F8AA925638A2100340D8BE2A4987E5A47C93692F80F0AAB3A5972ADCCC771BF30208F94F85C9B09E9ADF6B4200C85AE87A36F4CD833C0142FE5307AC7CF2206780A87AA235BCEF761D046CFA1AA2AD8747';
wwv_flow_imp.g_varchar2_table(7) := '5CAB3D0050D3E91142002040E0A54039007DF4F5CBADA8F5ABD7CCD1B9120A00A04AB861702711B5A257163F7FFF379715B8E74088402E7A57B20F00AAA45B066752002890AF363737E2914746460359A8C6B00088D90F04CEC6837B626B07A0D1A70FC6';
wwv_flow_imp.g_varchar2_table(8) := '1646F73FC76CA91AC30120263F6C3CF84B6C6EFEDB07E7D0D80131367650AC5DBDD6B74030D50D2400E401901E6D68280267FCC47171686C3BF2DC5DBF27EEAEDF7F02A4E1BDA3B5D8DE009003403A3832DABC74E278EA68BF5FBDF6044883BEBD01A01C';
wwv_flow_imp.g_varchar2_table(9) := '0099C051A38DED5004125D75D8DE009085D7FFBE7FAB9FDB98B6298B218C4DEA001200CAF03E25C71BFFDC8B5BD15645D75B6FBEEACA8CB11FE549DFFFF8CB4026DB00C812A0F1178F8AB53F6FF55BD3D69595F3645146E0D0364649B67A0DD2DD1A00B2';
wwv_flow_imp.g_varchar2_table(10) := '0468EA9DD7FA2D972F5E7106C904CDB1E7C7C4A993E3E2FA8DBBE2D2CF570500CA70CACC00BD1726B7300268EA5D05A26FAF081D245A7652544A038700A2EBA7CB6B00282B6CD3DFEB00905CE7B206927E4BAF8323A38D8446D50B00D9D05333805490E8';
wwv_flow_imp.g_varchar2_table(11) := 'B11A955439D2C091ED005083015297AE46251B7000902538B2599DB6B0A4A57FF06127FED3271FBF67AD0E2290A55400C82C140002407D051081B26168C491D6A4DBF82C79005096424200A0148D0010008A1540044A07016F65643C51001000CA8EA529';
wwv_flow_imp.g_varchar2_table(12) := '2D00100002405E0A00202FF91081001000F252000039CBA79E81A60365F44F3DD2913670DEDBF8EB37D7C5A5CB6B82FE1F1EA18A8DA706A204087761060A4CE53AB2993C589605922D402A38FA5406012400A4784D3DFF4CBF566BBCF403F05911290B20';
wwv_flow_imp.g_varchar2_table(13) := '1D9C345B3497AA9E526C3C4036C5816A64305552E8A715A97D124069E098B644532D59958A121B0B10478D97EE5C15241D20F94EBB8444AF60CD4AD4AA5A94D8388038C0D19D6D02499E4C3CF5FA89F89CB32B38265BF4BBAA14253606A0B4FC26EBD96F';
wwv_flow_imp.g_varchar2_table(14) := 'FB771D24B51F4719903A9EA9E6FE9903470BAFB76F0C406A75A96D2DBB2D38B25D529D17C143976F1D993E1FDD1EDDB53D7BE068DE697BB56F1C4094A7F8D47599D436555E50B2AC5F5C2051A45BDFF9D40FB241E7AEE5EB4700C8EBF990DC5946A02FBF';
wwv_flow_imp.g_varchar2_table(15) := '68C715A66B7FDCF20629AD64E7D3CFBE892743F6E8903D5D125C970898555746F6108102C143C3AA00A966F4BA2E9B286153EBA50224EDE920D1EFB3722313389498BF71727C975A0028203C6900A9CE8D23534AFDBB9E24A795EC9800CA0257CD916C20';
wwv_flow_imp.g_varchar2_table(16) := '55C70340250394162568CB513F00C1A6D62B0B20D59E9A93B9D8A2B1005045004A8B12A6AD2369DAB600258164032922506068D4E19372A0AC29C81C290F3C3222C8243ACB860E515E5B8840B60A7BB403401EE2A5746DDCEB40745B9DE742044A570B00';
wwv_flow_imp.g_varchar2_table(17) := '65D004800050AC00B6B03C71D7BE2D221022903D2D869600080001201B05B085D9A894BF0D221022507E6A941E00080001201B05E416663A009FD6DFE5369ECEE67CB5FC433C6C9ED79D5C6C910D690FC7396C48706CA31E69B5ADED2253799C9A54E365';
wwv_flow_imp.g_varchar2_table(18) := '6B2F8F2D098E2C46A49FCB28FD69CC1646021344F1FF3BDF7D418FB322928D53757028128CEE3F28B61E6D3C612BB6A97C60B9FA7CB0B145EDA9C2E3C6CDF538F2D025ED95F1F59A8D02483A8B2A334CCE353936CDA949E0E88ED4C14D2A4ACC63AB6C70';
wwv_flow_imp.g_varchar2_table(19) := 'A4968D04487DD6EBD51AFA766372AA2D38FA6E9B15016D6C95B55525650E8D07480AA37FE7A9DCDEE23CE8E21541472CE8526BBC7CB68E2470A5AD632F1CEA7FD84255A28D092200A4A9628A12BA703EE098A2929A9385B4E578FF91DA0D00A5C8A34789';
wwv_flow_imp.g_varchar2_table(20) := '907739BA2D4E484380831C2887AA947417758753A4AD1C1224364504E250B1C16300A0063B9F63E9008843C5068F510E4067BB875BC3FB6E3758F7DA2C1D00D5C695E52C24DA7A7864F1DCEC1D17EBEE5FB68208E4A27725FB00A04ABA657026550A4024';
wwv_flow_imp.g_varchar2_table(21) := 'CF6CFB4234383261A6490A743BA79D7722E78E349999F6F24A4B441370CD202BD05BE876A6E75D57E005D06C7B695E88A13957E3E85705054A04E84C7B6962480CAD544106CCC14D819EE84D9EEF4CAFBAF5F6F8CA4B69107990ABF4D5E8E793FFD00ABC';
wwv_flow_imp.g_varchar2_table(22) := 'B630E441D580C07D167EDB170B40D8C6DCDD577ECF0A008428543E06AE33F0DDBE5822100D8228E4EAC232FBF9471F3680682024D365C290DF3647F4610608AF09E57763593D78A20F2B40DB510810958584BD5D3E78D80142426DEFC6325A46A2B5BAD8';
wwv_flow_imp.g_varchar2_table(23) := '999AE4B4EDFD3A903E1924D49CEEE11DCBF75567D36CD801C25D19AFD3B9460B014F902D4C2E9822514BEC99C3BBF55C08B88D43DB56241E2FF8BCDF9566394804520D22B176733C4F2FDE84B9B02D4C3704887870C8374A7878826E61A6C502A47C08E4';
wwv_flow_imp.g_varchar2_table(24) := '6D1D7ABB2A2D02992312FD1687D1F242626A5F0638721EC173A02C81B66FFBC5CEB1580095A517FD9D806989C7DFF584580D951CDBCCA3F02DCC66523367BB87FBED46F6FEFFD8A6731DDB6C3EDA55AFE55ABF154A9AD22350A88561DC62140040C5E85C';
wwv_flow_imp.g_varchar2_table(25) := '5B2B00A8B6AE2D666100A8189D6B6B0500D5D6B5C52C0C0015A3736DAD00A0DABAB6988501A06274AEAD1500545BD716B33000548CCEB5B502806AEBDA621606808AD1B9B65600506D5D5BCCC20050313AD7D6CA7F2B1081095905697C0000000049454E';
wwv_flow_imp.g_varchar2_table(26) := '44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(107682975449642410223)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900000B2D49444154785EED9DC18A1D4514863B9011C78064C2CC269A451074C67530C467300BB314F766E3CAE770E546F76E8D0B7D02';
wwv_flow_imp.g_varchar2_table(2) := '114324E0CE89826411CD66864C10922B4E40A93BF6D0F6ADAE53D55D75EE99AEEF4288E476579DFACFFFF5A9EE19FB9CFBE0F657FF347C50A05205CE0140A59967D94B0500002354AD0000549D7E160F0078A06A0500A0EAF4B37800C003552B000055A7';
wwv_flow_imp.g_varchar2_table(3) := '9FC503001EA85A0100A83AFD2C1E00F040D50A0040D5E967F1008007AA560000AA4E3F8B07003C50B502005075FA593C00E081AA150080AAD3CFE201000F54AD0000549D7E160F0078A06A0500A0EAF4B37800C003552B000055A79FC503001EA85A0100';
wwv_flow_imp.g_varchar2_table(4) := 'A83AFD2C1E00F040D50A0040D5E967F1008007AA560000AA4E3F8B07003C50B502005075FA593C00E081AA150080AAD3CFE201000F54AD0000549D7E160F0078A06A0500A0EAF4B37800C003552B000055A79FC503001EA85A0100A83AFD2C1E00F040D5';
wwv_flow_imp.g_varchar2_table(5) := '0A0040D5E967F1008007AA560000AA4E3F8B07003C50B502005075FA593C00ACD103C7C78B666363738D11303500ACC103CEF88B6747CD8BE3C572F6CD57B64EFEBE70690DD1D43D250028E6BF6F7CDFD40E0640D04B0A0014D63AC6F48050380981E101';
wwv_flow_imp.g_varchar2_table(6) := 'A090F692F1F776AF363BDB179B9DEDADE6E7070F9BFD070FBD91B03D2A94A0FF860580CCFA868CEF0C7F62FC933D7FFF1302A1BD57607B9437610090414FE96A2F19DF0782FBB7505500840C896B9A060026E898DBF8A95581EDD184E4B1051A2FDE946D';
wwv_flow_imp.g_varchar2_table(7) := 'CED85943DBA3F31B9BCDC6C6CB3C3D1A212E1520523467FA177F2F9AC5F323EF19A9DB9CC869BDF7096C8FC6AAB77A1E004468F9E7D3C7A73FB4EA1FAE65FC31DB23EE13E4E40280A0D19383DF568E70A6DFDEDE6ADEDEBD2A2BAC7044687B7469E70D85';
wwv_flow_imp.g_varchar2_table(8) := '08CEEE1400300200778A7B9C690980C3C3A3E6E0F0E9CA6A00209C60001809407BDABA4038383C5A3E26F599BEBB2400008049F5B9BB05BAF5DEB5E6CEB7F7BDE33910DCA77455908C7FE39DDDE6EE8F0F4E63040000C806C0975FDC5E8E75E79BFBCDFE';
wwv_flow_imp.g_varchar2_table(9) := 'AF8F977F7C9F12552164FC2BAF6D3737AEEF35EE6FF7F9F4B3AF012032EB6C8112B6402D00ED290E84251081AA30A5224857FBBEF1DBB80020D2FDFC245816AABB05EA03D03DDBC1906B7B2419DF6D73AEBCBE737AC5EFAF0200E4BCB6475001265400DF';
wwv_flow_imp.g_varchar2_table(10) := 'A92110DCF1A1ED51CA36271436000040BC02990148DD1E39D3BB273943BFF836B4CD01803C29A602140220767B3434FD18E3730F900E05002800D0AD0A43F709EE9829A6EF2E832D503C0800A008401784EE63D45CC6A702C41B9F9BE048AD629F02450E';
wwv_flow_imp.g_varchar2_table(11) := '777A58F766D93DD579F7FA5EEA1083C75301E2A5A402ACA102B8290120DEA4258F04000028E92FF363030000983769C9000100004AFACBFCD8000000E64D5A324000008092FE323F360000807993960C100000A0A4BFCC8F0D000060DEA4250304000028';
wwv_flow_imp.g_varchar2_table(12) := 'E92FF363030000983769C9000100004AFACBFCD8000000E64D5A324000008092FE323F360000807993960C100000A0A4BFCC8F0D000060DEA4250304000028E92FF36303802745A10E30EEFDA0B76E5E9B9CD812FF47D80FF7F6FFF75ED036487A0F0FA7';
wwv_flow_imp.g_varchar2_table(13) := '0B003ADA483DBFBA324E052117008FFE386CEEDEDB6FDCDFD2879E62AB0A0140D33452CF2FD70C63E8C5556341980A40C8F86D038FA1989D0DA80A2730540BC0989E5FAE13CB50230A0782FBC46E8FC6022019BFDF87D8C5EC3EB45CF5D7C7EA0090B639';
wwv_flow_imp.g_varchar2_table(14) := '313DBF42A68A0521158054E3FBD22D75A43FFF92EB36B929EDA466F57D350048DB9C5007F7A18C4B57D7D0F62816801CC6EFC72F81B0DC225DB8342BA30F2D66F60094307EEAD5D50782044009E3FB40A87D7B344B00726C73C65EFE4257D72E0843000C';
wwv_flow_imp.g_varchar2_table(15) := '3DCA74F19C54A98BCDCEF6D6D8F0BCE7496FA89EF30DF3AC00908C5FCA40632A823BA77D516EDBDA68E8516689964BA16D5DE886796EDBA35900A0B5CD1973D90D5584D0783137E363E2893D478A7B2E55E1CC03B078F6A4593C3F5AC9EBBA0DE4DB6F0F';
wwv_flow_imp.g_varchar2_table(16) := '3D42ED1E6B31EEA1FB84F31B9BCDAB172FC73265F2B8330FC05027F7314F754A67C8EDB5BFFBFEA7C169AC75A06F030DB56E3AEB6D586709409B38ADDEBD123852D33BDFF99AFBFEA1F863E2060029FB85BF4F69643DA565E99865C41868F974E7CDCBAA';
wwv_flow_imp.g_varchar2_table(17) := '3D87A5B548CDFABA37EB0020A959F8FB7E038B65E7955F1E17EBDD1BB39CD00D64DBE2F4D1EF07A7BFB9D93E1E955AAD96045882B5DBC5664E0D3866B505F235B2CED5BB5732BE64A07E1798EEF3FEFE0FCA34418889BBDF9318002437287E1FD3C2684A';
wwv_flow_imp.g_varchar2_table(18) := 'EF5E6929D276E1C6F53D6F43EB1000ED9C2541181BB78B0D002457287E1F0340D750EEBF435521769B31C5402E861800BA71779BEA75E54DB9D1977EE21BDBAC0F00140D2E4D950240772CE9EA3AF42B07538DDFC69002400CC02110A46D4EACF1DB3800';
wwv_flow_imp.g_varchar2_table(19) := '4072A5E2F7630188DD66B8E35C55C865FC2900C480B07CAAB47BB548CC00A068ECD8A9A602106B2A5F3CA957CEEE18632A802F06E9FEA67FCE94980120D6958AC7E502A00D597A8CEA8E6B1F65B6BFC43666B9B90088A964EE981CC6078031992E7C4E6E';
wwv_flow_imp.g_varchar2_table(20) := '0042F709391B5AE7066008841CB0F653C83D406153A70C5F120017C7871F7D7E1ACE271FBF9F125AF0D85200948C990A902DFDF9060280552D4B410B00F97C9B6D2400008029669AF5AF424C11A63DB7D4D5942D508EEC4C1F0300040D016055206E82A7';
wwv_flow_imp.g_varchar2_table(21) := '83976D04B6406C81A698890A400548F60F152059B272275001A80053DC4505A00224FB870A902C59B913A800548029EEA202500192FD43054896ACDC0954002AC014775101A800C9FEA102244B56EE042A0015608ABBA800548064FF500192252B770215';
wwv_flow_imp.g_varchar2_table(22) := '800A30C55D54002A40B27FA800C992953BA1FF6AC4D82675B11195F865B87EF717F76A44F72757EC2562767AB9B8BB6FB473FFC6AB11639D54E838DFDBA1DD9BD6F6DE3A31D5D44F4E33493D7D631BEC496BCA19736BFCA15EC4002065A3F0F743FD01DC';
wwv_flow_imp.g_varchar2_table(23) := 'B4390C95C34C92F17D128DED3FECC6CA11B3647CD71B60F3C2D699EF2A79E6EF015AF33810DCC7D72CA38561CC16638A9942C6EF1A48823835EE2931D762FCD637B301A05D90D4003BF5CA3AC64CA14677AEB5D0503FDE5C208C8959AA5273B9E2F7ABED';
wwv_flow_imp.g_varchar2_table(24) := 'EC00E82E5032D4B232DC3CE9F03EF489359364A0949E5A52DCB96296AEF6EEFB10B08577B72AC3CF1A80EEF668686B246D8F240062B73963B23916042966C9F873BDDAFB7250050053EE1386CC54D2F8FD4439108E8FFF6A5E1C2F5672E8BBD10FC5DC7F';
wwv_flow_imp.g_varchar2_table(25) := '8CD91DB026E3CFF61E20F64A2B5D5DDBC7A87D33691ADF07C2D08D7E17849498DD78351ABF7A0062B647CE54DD5E02EEFD9ABE66D6DA06929E7875C1B11273EC8549FBB8AAB6402171534CD58EA36D7C5FFCA14AE63BDE42CCDA260FCD07003D75A4C7A8';
wwv_flow_imp.g_varchar2_table(26) := '569F8C4820607C3F060010B83CF44D95F228735D57395FCC433F7758578C96E605004BD92016750500405D7226B4A4000058CA06B1A82B0000EA9233A1250500C0523688455D010050979C092D29000096B2412CEA0A0080BAE44C68490100B0940D6251';
wwv_flow_imp.g_varchar2_table(27) := '570000D42567424B0A0080A56C108BBA0200A02E39135A5200002C658358D415000075C999D092020060291BC4A2AE0000A84BCE84961400004BD92016750500405D7226B4A4000058CA06B1A82B0000EA9233A1250500C0523688455D010050979C092D';
wwv_flow_imp.g_varchar2_table(28) := '29000096B2412CEA0A0080BAE44C68490100B0940D6251570000D42567424B0A0080A56C108BBA0200A02E39135A5200002C658358D415000075C999D092020060291BC4A2AE0000A84BCE84961400004BD92016750500405D7226B4A4000058CA06B1A8';
wwv_flow_imp.g_varchar2_table(29) := '2B0000EA9233A1250500C0523688455D010050979C092D29000096B2412CEA0A0080BAE44C68490100B0940D6251570000D42567424B0A0080A56C108BBA0200A02E39135A5200002C658358D415000075C999D092020060291BC4A2AE0000A84BCE8496';
wwv_flow_imp.g_varchar2_table(30) := '1400004BD920167505FE053E4774C815BF6A040000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(107682975773996410223)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000139249444154785EED9DCF8F14C715806B6759CB6BE408AC45118B89E48BCDFA16D90AB215C5708F730011D988A385F69E630E86';
wwv_flow_imp.g_varchar2_table(2) := '3F20A75C362847842D23C8C1BE831D2BC896E3A31773E160B31C581994086FE485D9A8666868C6FDA3BAEBD7ABEA6F240482EEAA575FBDF7755577B333A7F840000283253037D8913370084040210092000203268000063CF90C1D0208801C80C0800920';
wwv_flow_imp.g_varchar2_table(3) := '80014F3E438700022007203060020860C093CFD0218000C801080C98000218F0E4337408200072000203268000063CF90C1D0208801C80C080092080014F3E438700022007203060020860C093CFD0218000C801080C98000218F0E43374082000720002';
wwv_flow_imp.g_varchar2_table(4) := '03268000063CF90C1D0208801C80C080092080014F3E438700022007203060020860C093CFD0218000C801080C980002A899FC53A72FEDAFFAA7F1F8E1F280F345FCD047A3F98DAA20CF9F3B7E5B7CF011021CAC00DE59BD7844F31E29756447CDBF55B0';
wwv_flow_imp.g_varchar2_table(5) := '9F533B93BFE7932F811D3577558F6E4E3DFC54FF3E56EAEA876B27267F37B4CF6004A00B7E4ECDBF3F9D788A7C68896E325E2D86420A17D64E9C313927F563B215802EF8E2EA4EC1A79EA671E22F8490F30A213B0114577A8A3E4ED1E4DDEBF86C6E2B83';
wwv_flow_imp.g_varchar2_table(6) := '2C0440D1E75D76F246373EAB63CA4106490B80C297571AC38A287D112429000A7F5865267FB4E96E0D9213C0C9D58B67941A4DEEE6F381802C02E98920190170D59795EA445347202D09242100AEFA945B7A04D21081780150FCE9A53E111704E44B40B4';
wwv_flow_imp.g_varchar2_table(7) := '00287E4A297D02B225205600147FFAA9CF08E4AF04440A80E2A774F223207325204E00147F7EA9CF88E4AE04440980E2A754F227206B25204C009776F24F004638740263353E2AE5E70F88110057FFA197C570C6AFFF9BF1076BC78E4A18B1080150FC12';
wwv_flow_imp.g_varchar2_table(8) := '528118C21290B11510220096FE61938FDE241090B015882E00AEFE12529118621090B015882A008A3F46DAD1A72402B157010840523610CBE008C45E0544130057FFC1E53A03AE211073158000484B084426107315105100DCF98F9C77742F88C085B5E3';
wwv_flow_imp.g_varchar2_table(9) := '516A314AA72CFF05651EA18820106B1B1049005CFD45641D418821106B1B105C00D36FEC195D11439E40202084408C55407001B0FC17926D84219040F8D783830BE0DDD5CB57F8DA2E81B94748D109C4D8060417C0C955F6FFD1338D00C41208FD3420A8';
wwv_flow_imp.g_varchar2_table(10) := '0058FE8BCD3B02134220F47D00042064E20903029A40E86D405001B0FF27C921D04C206B01B0FF27FD21D04E20E47D80602B009EFFB74F3C4740401308791F209800B801487243C08C000230E3C45110C89440B8178282AD00B8019869AE322CE70442DE';
wwv_flow_imp.g_varchar2_table(11) := '084400CEA78F06216047204B01F004C02E29387B380410C070E69A9142A09240A84781C1B600AC00C874089813C84A00A74E5FDA3F1EA90DF3E1732404864D603456CBE7CF1DBFED9B4290150002F03D8DB49F1B010490DB8C321E08742080003AC0E250';
wwv_flow_imp.g_varchar2_table(12) := '08E4460001E436A38C07021D0820800EB0381402B911C84A0027DFFBE835B56BFEABDC2689F140C01B81070F5FBFF0F73FFEDB5BFB8F1A0EF2140001F89EC67EED6F6F6F4D4E5C5858ECD70067F9238000FCB11D7ACBBAF0B7EEDF550F1E0940F3587C6E';
wwv_flow_imp.g_varchar2_table(13) := 'AF5ADCFDC2D0D1C8193F0290331739445255F455E3420442661B01089988C4C3302DFCD9616A114C5606AC0AE264000288C33D975EDB0A7FDFD21EB572E825B56F69AFFAE6FA4DB57EFD66EDD0591544C80A0410017AE25D7629FAAAA122024109800004';
wwv_flow_imp.g_varchar2_table(14) := '4D86F0506C0B7F76785A04FA53B72A607B102021104000C88977E1BAF06771DCD9BCABEE6CDE637B10234F10400CEAF2FBD445FFE0A72DB5F5E3DDDA60F5DEFED5432F391D0CDB03A738DB1B4300ED8C867484EFABBD294B2D82CD472B83AA73D81E9892';
wwv_flow_imp.g_varchar2_table(15) := '6C390E013802997833520ABFEB7D825D0B8B6A61E1591E23F6CD3F04D0975C1EE7B515FEF411DE9EC963BCD89FB6EDC1F37B9679DDB8EB242180AEC4F23A7EEBFE0F95FB7C1FFB7B57E43EFBFCEBC94DC3D90FEF11F4208C007A40CBE8943A01E8216A09';
wwv_flow_imp.g_varchar2_table(16) := 'E88FEB1B7D7DF1E9A705FA916155F1EB3611400FB208A007B48C4E69124079983157046D855FC489007A242602E8012DA353CA0238F6FBD72723BBFC49FD8F54082582B6A23F786049BD7178457DF7FD1D75EDCBEB93B811408FC444003DA06574CAAC00';
wwv_flow_imp.g_varchar2_table(17) := '8EBDFD48021F4F255027035FDB03D3C2D702D09F7F7DB18E006CF21101D8D04BFFDC3A01944776F9E3AFBCAF0ABA167E111F02B0CC4104600930F1D34D04500CD1B5084C8AFEC5034BEACDC32BB5941180650222004B80899FDE45006511D86C0F4C0A5F';
wwv_flow_imp.g_varchar2_table(18) := 'EFEF8B657E13620460998008C01260E2A7F7114031E4F51B1B6AFDDB0DE3ED81CBC2670BE028F11080239089366323802EF7099AF0BCF19B438DCB7C56001E930B0178849B40D3AE0450DE1E4C5606379ABFA3B5788C67B2CC47001E13090178849B40D3';
wwv_flow_imp.g_varchar2_table(19) := 'AE05D0769FC055E1B30570945C08C011C8449BF12580AA2707364BFD3ABCDC04B44C3C04600930F1D31140E213681B3E02B02598F6F90820EDF9B38E1E0158234CBA010490F4F4D9078F00EC19A6DC02024879F61CC48E001C404CB8090490F0E4B9081D';
wwv_flow_imp.g_varchar2_table(20) := '01B8A0986E1B0820DDB973123902708231D9461040B253E7267004E08663AAAD20805467CE51DC08C011C8449B4100894E9CABB011802B9269B68300D29C37675123006728936C080124396DEE824600EE58A6D812024871D61CC68C001CC24CB0290490';
wwv_flow_imp.g_varchar2_table(21) := 'E0A4B90C1901B8A4995E5B0820BD39731A3102708A33B9C610407253E6366004E096676AAD2180D466CC71BC08C031D0C49A4300894D98EB7011806BA269B58700D29A2FE7D12200E748936A100124355DEE834500EE99A6D2E2F6F696DABA7F573DD8DE';
wwv_flow_imp.g_varchar2_table(22) := '9A84BCF2F2F2E457F1FD802EC651FE3621D73F13F0BB5B9BEADA17EB4AFFAE3FBB1616D5C2C2B36A71F70B2E421F461B086018F35C1EE56CE1CF1228BE25D885087C0860B6F067E347041D721A01748095F8A1E5E5BEC9505CAC085C0AA0ADF0ABC6C457';
wwv_flow_imp.g_varchar2_table(23) := '86B7CC3402302985748F69BBDAEF5BDAA3F4577DDFD9BCA7D6AFDFAC1DA85E15F45911B8104053E197E3DFDCBC3B19479D08763DA3B7088BE94EA68FC811800FAAF1DB342DFC7D4B7B9F0AF69BEB375553217515818D00F4CFFCFFFED6E6E33D7E39D0A2';
wwv_flow_imp.g_varchar2_table(24) := 'F0ABE2D7C7D5C94CAF08F487FB048F682280F8C5EA3282BE853F1B8316415321998AA08F00CA5FF6311B575DE15731D463685AD5B03D504A210097E517A72D57455F57443622301540DBFEBE4BE157C90C11D4E426028853B42E7AF559F85DAFA87A45B0';
wwv_flow_imp.g_varchar2_table(25) := 'F2CAF43162F9D326009F85DF755533C8ED010270518A61DB085DF85DAEA8B38F10EB04D056F8FAC6A4BEEACFEEF15D916EDA1E0CEA312202709552FEDB697A8CA78B656969AF7AF5D04BFE0379D44353111522D0875EFEE4ABC919FA45A0832FEE7BEAE5';
wwv_flow_imp.g_varchar2_table(26) := '9DD96075E14B19838E2DFBFB04082058BDF4EA28F6D5DE24E8B69B6D6D6DD8ECEFDBDA36FDF7B6A71F5A04593E464400A62912FEB8B62BFE7499FCF463BCF0513EE9B1AD8866639350F87DEE1364F5081101C42C99FABEF595FFBFF7362A0FF8DD6F7F2D';
wwv_flow_imp.g_varchar2_table(27) := 'AAF0AB8AA8E95D027DBCF431E8183FFBFCEBCA178B9EDFB39CCF0B4508203D01E88843EF954D28DDD9BC3B79EE5EF7365EECFDBEC918F4316D2B1904604AF2C97173DD4FE97EC6C9F73E7A4DED9A9FDE714AFCD3B402280F4D8208BA167E95087CDEF137';
wwv_flow_imp.g_varchar2_table(28) := '49852E63400026449F3E06017464362B80E2AE7A7147BDAA88F4DF85BC83DE5634FAAEBFFE5CFBF2FAE4F714C770F0C0927AE3F08AFAE8F23F1F2347001D93592985003A329B15C0F9BFAD3E6EA1FC6CBDAA59DFAB82A6C23FB07FAFFAD5C15FAA370FAF';
wwv_flow_imp.g_varchar2_table(29) := '4C422BBFD65B7E7DB8690C3A7EDF326B935751F8FA77FDF9CB5FFF81003AE670F97004D0115E93008AA6428BA0A968660BA688B14E0031C6D0B5E8CB5386003A26F0CCE108A0233F1301948B48FFD9D7F6A0E9397F5DE19B0AA03C86F51B1B4AFF72BDAA';
wwv_flow_imp.g_varchar2_table(30) := 'B129FC221604D0318111801DB02E02287A9A14D0B71BB522E8F2B6A02E9AA69F11D056F85D05D04566A6F7395C143E02B0CBE3E26C56001D39F61140B98BBEDB039745A3E369DB02D461D1F1B7AD6AEA44D0F618AF7825B9D8DF9B4C0D2B00134AF5C720';
wwv_flow_imp.g_varchar2_table(31) := '808EFC6C05D0758FEDBAF0FBAE00AA3099DC30D4AB9BA677104C572C75D384003A26305B003B60AE0460BAB4AE8BB6CFD5B2DC56DF15405711D4C56F5BF86C01ECF2982D404F7EAE05D0657BA08F75F523BC5D0AC07455A38F7355F808A06702B302B003';
wwv_flow_imp.g_varchar2_table(32) := 'E753007585E4BA68743F3E0410327E046097C7AC007AF20B21001D5ADB4FECE919FEE3D37C0A2044FC08C03603A6E77313B02347046006CCB7C01080D93CB41D8500DA08CDFC3B0230038600CC38D51EC57F07B604E8E974046006160198714200969C42';
wwv_flow_imp.g_varchar2_table(33) := '9F8E00CC882300334E08C09253E8D3118019710460C6090158720A7D3A0230238E00CC3821004B4EA14F470066C4118019270460C929F4E908C08C380230E384002C39853E1D0198114700669C108025A7D0A7230033E208C08C1302B0E414FA74046046';
wwv_flow_imp.g_varchar2_table(34) := '1C0198714200969C429F8E00CC882300334E08C09253E8D3118019710460C6090158720A7D3A0230238E00CC3821004B4EA14F470066C4118019270460C929F4E908C08C380230E384002C39853E1D0198114700669C108025A7D0A7577D37E0B1B75F77';
wwv_flow_imp.g_varchar2_table(35) := '1E86EF022AFF44A0959797D59FFFF407A763F01DBF0EF6BB5B9B7C37A0E5ACF103413A02ACFA76605D40FA974B11F82AA072E1CF0EBDFC1D811DB1FCEC705FF117857FED8BF58900CA1FBE1CB4FBAC2180EECCD47FEE6DA807DB5B9567BA2A229705A40B';
wwv_flow_imp.g_varchar2_table(36) := 'A5AA60EA86EE620C2EE32FE2D4F2FAFED6E6CF0A5FFFFBAE8545F58B3DCB3D6653E829FC4420A113F328ACADFB3FA8AD1FEFD606695B442E0AA8ADF075D12C2C3C5B3B0E3D869557A6AB9BAE1F17F1375DED8B78F4181677EF550B0B8B5D43947D3C0290';
wwv_flow_imp.g_varchar2_table(37) := '3D3F45745A04FA5327035D44FAD3757B6053406D85BFF8DC5EB5EB195DFC4F8AA649687DC66013FFA00BBF482C04908600CA51BA5C15F4292093C25FDCFD4223585722E8133F855F9A1A04909E00CAAB02DBED4197026A2AFCBE4B645B99B98ABFD8DF67';
wwv_flow_imp.g_varchar2_table(38) := 'B9CC6F4A710490AE005C6C0F4C0AA8EDA6988BA2D122D8DEFE5FE79B9E26F1B7AD58FACA2BFDCC514A21802CA6713208FDE8F0C14F5BB5F709AA1E23361550D3A33C5F456372AFA37C9FA3297E0ADF20B7118001A4040F315D5ACF16D0C117F7353ECAF3';
wwv_flow_imp.g_varchar2_table(39) := '55F8B3884D45502580A6158BEEA7EAE6648253EC266404E086A3D456DA44A05705EB37365AC30F55F85581348D2185F85BE1C63C0001C4A41FAEEFB62B6A5D2492AE966D32AB1A434C71859B5D8B9E108005BC444F3529245DF86D8FF2620DDF247E0ADF';
wwv_flow_imp.g_varchar2_table(40) := '7076108021A80C0F9B2DA4D48A26F5F845A4140210310D5183D04F0FF427D5D75C538F3FEAE42380A8F8E91C027109E4248053A72FED1F8F54FB2DEDB8C8E91D0262088CC66AF9FCB9E3B77D0714E4BF032300DFD348FBB9114000B9CD28E38140070208';
wwv_flow_imp.g_varchar2_table(41) := 'A0032C0E85406E0410406E33CA7820D0810002E8008B4321901B81AC04A027E7E4EAA59DDC2689F140C017810B6BC783DCA00FD20902F09526B49B2B81EC04F0EEEAE52B736AE748AE13C6B820E0920002704993B6209010811D3577F583B5634743841C';
wwv_flow_imp.g_varchar2_table(42) := '6C0BC00A20C474D2470E04B214C0C9D58B67941ABD9FC304310608F825303E7B61EDC419BF7D4C5B0FB6027867F5E291911A5D093128FA8040DA041040DAF347F410B0203056E3A31FAE9DB86AD184F1A9C156003A22DE05309E170E1C3081504F00826E';
wwv_flow_imp.g_varchar2_table(43) := '017467DC081C705633742302216F002200A329E120088424106EFF1F5C00DC080C9948F49526818C05C07D80345392A8C31108B9FF0FBE02E03E40B844A2A7F40884DEFF4711002F04A59798441C8A40D8E57F1401701F205432D14F6A04423EFF2FD804';
wwv_flow_imp.g_varchar2_table(44) := '7D0FA0E894C781A9A526F18620107AFF1F6505A03B651510229DE8232D02E197FFD104C0D380B4529368FD138871F58F2A00B601FE938A1E522110E7EA1F55006C0352494EE2F44F608002D0505905F84F2D7A904E205EF1475D017033507A62125F1802';
wwv_flow_imp.g_varchar2_table(45) := '031600AB803029462F5209C42DFEE82B005601521393B842108875E7BF3CB6282F02CDC2E5F5E010E9461FB208C4BFFA8B58011493C20D4159E949343E09C8287E5102E0B1A0CF84A36D4904242CFD0B1E22B60045306C0524A529B1F82120E7EA2F6A05';
wwv_flow_imp.g_varchar2_table(46) := '8004FCA41BAD4A2220ABF8450A4007C54A4052D2128B1B02F28A5FAC0090809B94A31529046416BF6801200129C94B1C7604E416BF78012001BBD4E3ECD80464177F12024002B19398FEFB11905FFCC908802704FD5290B3C213D03FD977473D3C1BEABB';
wwv_flow_imp.g_varchar2_table(47) := 'FD6C4728EA3D0093C1F084C08412C7C42190C655BFCC263901B01A8893DAF45A4F20B5AB7E160278726F40FF69F43E090A81D004522EFC8255B22B80F2644FB705882074010CB5BF1C0A3F2B01FC5C06AC08865A9CBEC69D53D167B305689AECE9FF2E54';
wwv_flow_imp.g_varchar2_table(48) := '4776D4FC5B736AE788AFC4A0DD7C09E8A29F530F3F1D2B753595BBFA5D67238B2D80C9A08B6D024230A135CC6374C1EB91A7F418CF76A60623805950C50A613AE1F36FE9DF5929D8A693FCF38B229FCEF7F4EAAEFF9CEB15BE6D46062B803630A74E5FDA';
wwv_flow_imp.g_varchar2_table(49) := '5F75CC78FC70B9ED5CFE3D1E81D1687EA3AAF7F3E78EDF8E1795DC9E1180DCB921320878278000BC23A60308C8258000E4CE0D9141C03B0104E01D311D40402E010420776E880C02DE092000EF88E9000272092000B973436410F04E000178474C071090';
wwv_flow_imp.g_varchar2_table(50) := '4B0001C89D1B228380770208C03B623A80805C020840EEDC101904BC134000DE11D30104E412400072E786C820E09D0002F08E980E2020970002903B37440601EF04108077C4740001B9041080DCB921320878278000BC23A60308C8258000E4CE0D9141';
wwv_flow_imp.g_varchar2_table(51) := 'C03B0104E01D311D40402E010420776E880C02DE092000EF88E9000272092000B973436410F04E000178474C0710904B0001C89D1B2283807702FF079BEC60E2F0CFBDD60000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(107682976055210410223)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD4F8B64D779C7F11BD098B40546236620C81641982492D78A85027E07CEC25A7811BCB7375EF97564958D';
wwv_flow_imp.g_varchar2_table(2) := 'B3CFCA900924DE646D88902DC82A99894350829C21308D6670903A7806126E8F2A6ED55477DD3FCFA97BCE793EBD19C5A97BEF79BEBF73EAF9D6B975BB7FE7CF7EF0D7FF3BF8410001041040008154047E8700A4CA5BB10820800002085C122000260202';
wwv_flow_imp.g_varchar2_table(3) := '08208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E60002082080000209';
wwv_flow_imp.g_varchar2_table(4) := '09108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B';
wwv_flow_imp.g_varchar2_table(5) := '1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B190104104000';
wwv_flow_imp.g_varchar2_table(6) := '0102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E2080';
wwv_flow_imp.g_varchar2_table(7) := '00020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E2080000208209090';
wwv_flow_imp.g_varchar2_table(8) := '00014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA92';
wwv_flow_imp.g_varchar2_table(9) := '1140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA92114000010410';
wwv_flow_imp.g_varchar2_table(10) := '2000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208';
wwv_flow_imp.g_varchar2_table(11) := '208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909';
wwv_flow_imp.g_varchar2_table(12) := '108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B19';
wwv_flow_imp.g_varchar2_table(13) := '01041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B19010410400001';
wwv_flow_imp.g_varchar2_table(14) := '02600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000';
wwv_flow_imp.g_varchar2_table(15) := '020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000';
wwv_flow_imp.g_varchar2_table(16) := '014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA9211';
wwv_flow_imp.g_varchar2_table(17) := '40000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA9211400001041020';
wwv_flow_imp.g_varchar2_table(18) := '00E60002C9083C7D7A315C7CFAF8B2EA674F2F86B32FDFBEFCEFB3975F4D4642B908E426400072E7AFFA4404768D7F6CFAD7FD8C324004124D0AA5A626400052C7AFF8DE094C69FA87181081DE6786FA10180602601620D02181A58D7F1F85DB031D4E0E';
wwv_flow_imp.g_varchar2_table(19) := '2521F0390102602A20D01181A8C6BF8FE4A55B67C3AD5BBFEBF64047734529081000730081C6098C4DFFD96F2E868BCF9E7FB1AFF48FDB03A5093B3F02A72140004EC3D95510082750EAD3FED4818E22F0D297C69D81B3A987781D020854448000541486';
wwv_flow_imp.g_varchar2_table(20) := 'A1203085C0D68D7F7F8CBE27302535AF41A03E0204A0BE4C8C088183042E3EFD6478FAF47F2E9FDD8FF8B97BE795E1CE9DDBC3FD071F459CEEF21C6E0F84A17422048A132000C511BB0002CB09447FDA1F9BFE5B6FBE31DCBDF3FC97FFEC7EFEF9C14744';
wwv_flow_imp.g_varchar2_table(21) := '60794C8E44A0490204A0C9D80CBA7702A76AFCFB1C4711187FA27605DC1EE87DA6AAAF650204A0E5F48CBD3B025B35FE4320ED0A7437BD1484C0170810001302818D099468FAE3BDFD6FBCF9464865442004A39320501D0102505D240694854089C67FE8';
wwv_flow_imp.g_varchar2_table(22) := 'FE7E144FB707A2483A0F027510200075E460148908B4D6F8F7A37974FE787874FE24EC7B02E3F93D3D90680128B51A0204A09A280CA46702D14D7F64F5FCD3FE2B2F7CA3FF941CDD1E38256DD7422096000188E5E96C087C814074E3BFEE31BEADB18F22';
wwv_flow_imp.g_varchar2_table(23) := '70FEF9CE40C4583C3D1041D13910B89900013043102840204BE3DF4717FD3D017F84A8C0E4744A043E2740004C0504820894F8A33CB57EE29F82CCED812994BC0681ED081080EDD8BB722704B27EDA9F1A5F0911F04788A6D2F73A04AE274000CC0E0416';
wwv_flow_imp.g_varchar2_table(24) := '12D0F8E7818BBE3DE07B02F3F87B3502FB0408803981C04C0225FE284FC9E7F7679677929797D815387BF9D5938CDD4510E8850001E82549751425E0D37E19BC44A00C576745600A0102308592D7A425A0F19F267AB7074EC3D95510B84A8000980F081C';
wwv_flow_imp.g_varchar2_table(25) := '20A0F16F372DEC0A6CC7DE9573112000B9F256ED0D044A34FDC83FCA932D3C22902D71F59E9A0001383571D7AB92C0AF9F3C1C9E3DBD08195BCBCFEE8700083E4989DB03BE30181C92D33549800034199B414712886AFE1A7F642A2F9E2BF28F108DBF61';
wwv_flow_imp.g_varchar2_table(26) := 'F02BAFBC5676C0CE8E40E5040840E501195E59029F3CFAB7D517A8E18FF2AC2EA2B11344DD1E78F5EED71BABDC701188234000E2583A538304960A804FFB7584BDF68F1011803A72348A6D0810806DB8BB6A2504D608802FF86D1FE2785BE0FE838F8647';
wwv_flow_imp.g_varchar2_table(27) := 'E74F160D86002CC2E6A04E0810804E8254C632024B05E0EAD5C65B00DF78F38D650370D46C0291DF052000B3F13BA0230204A0A33095329F408400ECAEEABB00F3F9CF3962EDA7FD43D722007312F0DADE081080DE1255CF2C029102705504C6FFB62B30';
wwv_flow_imp.g_varchar2_table(28) := '2B8A6B5F5CA2F1EF2E46006232729636091080367333EA20022504C0ED819870D67EC16FCA2808C0144A5ED32B0102D06BB2EA9A44A0B4005CDD15B023703C92929FF6DD0238CEDF2B72112000B9F256ED1E816302F0DEB7DFBE3CE2DE4F3F0C61377E4F';
wwv_flow_imp.g_varchar2_table(29) := 'C0ED8117514637FED7BF7A6778F79DB7869FDCFBD98DB9D9010899D64ED2280102D06870861D43E09800FCD55FFEE0F242F77FF970B8FF2F0FC344603CA7A70786A154E31F0560FCF9F3BFF81B0210B3549CA5430204A0C35095349DC05401B87AC67B7F';
wwv_flow_imp.g_varchar2_table(30) := 'F72111988EF885579668FA5FFBEA9DE14FDE79EB856B1180154139B47B0204A0FB88157813812502B03BDF2802E38FDB03D3E65889C63F6EF3EF3EED1F1A050198968D57E524400072E6AEEACF09AC11805222D0DBED812D1AFF2E1B0260A923703D0102';
wwv_flow_imp.g_varchar2_table(31) := '6076A4261021006E0FBC3885A29BFE788577BFF9E6F0FAD7EEDEF8897F7F240420F5F256FC110204C014494D205A00AEEE0A5C7E71F0970F43F8B6F2F44074E3DF7D9BFFA66DFE9B00138090E9E7249D1220009D06ABAC69044A0940A9DB03E35F21ACF1';
wwv_flow_imp.g_varchar2_table(32) := '8F10D5D6F8DD029836FFBD2A370102903BFFF4D59716809E6F0F44FE519E1DA7B59FF8DD0248BFA40198418000CC80E5A5FD1138A5005CDD15887A72603CE7A9FF0851AD9FF60FCD4EB700FA5BB32A8A234000E2583A538304B6108052B7074A7F4FA0A5';
wwv_flow_imp.g_varchar2_table(33) := 'C6EF1640838BD1904F4E80009C1CB90BD644604B0168E5F640F41FE589DEE6BF693ED901A869B5194B6D0408406D8918CF4909D42200256F0F2CF923442D7EDA770BE0A44BC7C53A2040003A085109CB09D426005BDF1EE8A5F1BB05B07C4D38320F0102';
wwv_flow_imp.g_varchar2_table(34) := '90276B951E2050AB00EC867AAA3F42D45BE32700963B02C7091080E38CBCA26302B50B40E9EF099C9F3F1E1E9D3F094978BCB77FDD1FE509B9C08293F80EC002680E49438000A4895AA18708B42400A56E0FAC9D19A7FC52DFDCB11280B9C4BC3E130102';
wwv_flow_imp.g_varchar2_table(35) := '90296DB5BE40A04501A845046A6EFC6E0158EC081C2740008E33F28A8E09B42C00256F0FDC14F9923FCAB3D514B203B01579D76D810001682125632C46A01701B8BA2B10F9478876E76DE1D3FEA14942008A2D1D27EE800001E82044252C27D09B0044DF';
wwv_flow_imp.g_varchar2_table(36) := '1E68B5F1BB05B07C4D38320F010290276B951E20D0AB00ACBD3DD07AE32700963B02C7091080E38CBCA263021904E0EAAEC0B13F42F4DDF7BE358CCDBF971FB7007A49521D2508108012549DB319029904600CE57BDFFFF18DD9FCE887DF6926BB290325';
wwv_flow_imp.g_varchar2_table(37) := '005328794D560204206BF2EABE244000BE381108808581401E0204204FD62A3D40800010000B0381AC040840D6E4D56D07E0C01CB00360612090870001C893B54AED00F80EC0DE1C78F5EED7AD0B04D212200069A357B8EF00BC3807EC00581708E42140';
wwv_flow_imp.g_varchar2_table(38) := '00F264AD523B007600EC00781F40E0FF091000932135015F02FC62FC7600522F07C5272340009205AEDC2F12200004C09A40202B0102903579755F12200004C05240202B01029035797513800373C02D000B03813C0408409EAC557A80801D003B001606';
wwv_flow_imp.g_varchar2_table(39) := '0259091080ACC9ABDB0E801D80C1EF01F04690990001C89CBEDA7D07606F0EB80560512090870001C893B54ADD02F07B00F6E6801D006F0B99091080CCE9ABDD0E801D00AB0081B4040840DAE8153E12F025405F02B41210C84A8000644D5EDDBE04E84B';
wwv_flow_imp.g_varchar2_table(40) := '80BE04E87D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D2035';
wwv_flow_imp.g_varchar2_table(41) := '0102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB';
wwv_flow_imp.g_varchar2_table(42) := '01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090';
wwv_flow_imp.g_varchar2_table(43) := '950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBA';
wwv_flow_imp.g_varchar2_table(44) := 'ED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E07D20350102903A7EC5DB01B00360152090950001C89ABCBAED00D801B003E0';
wwv_flow_imp.g_varchar2_table(45) := '7D20350102903AFEDCC53F7D7A31FCF79387374278EFDB6F0FEFFDE9DBDD80FADEF77F7C632D3FFAE177BAA9F5E3FF3C1F7E72EF6737D673F6E5DBC3D9CBAF7653B3421098438000CCA1E5B5CD13189BFEB3DF5C0C179F3D9E554B2F22904100C6C6FFFE';
wwv_flow_imp.g_varchar2_table(46) := '07F787F1DFA93F44602A29AFEB890001E8294DB55C4B606CFC179F3E1E9E3DBD5845A97511E859007EF18FFF3E7CF4D1C7B31AFFFE641845E0A52F9D0DB76E9DAD9A270E46A0050204A085948C713181A8C6BF3F805645A04701F8870FEE0FEFFFFCC1E2';
wwv_flow_imp.g_varchar2_table(47) := '3972E8C05104C61FB70742B13A59650408406581184E0C81528DBF7511E84500966CF32F9D596E0F2C25E7B8DA091080DA1332BEC9044ED5F40F0D68DC1178EB8F5E1BDEFAC3D7268F778B17B62E00A76CFC876E0FD811D862D6BA66290204A01459E73D';
wwv_flow_imp.g_varchar2_table(48) := '19812D1BFFA11D81F17FABF5C981560560CBC67F4804DC1E38D9F276A18204084041B84E5D964074E3BF7BE795E1CE9DDBC3FD071FAD1EF8B82350A308B42600918D3F32DFDD04717B60F55271820D0910800DE1BBF47C024B1FE3BBEE4A635378EBCD37';
wwv_flow_imp.g_varchar2_table(49) := '86BB779E7FE96BF7F3CF0F3E0A11814B09A8E87709B42200D18D7F3FE3C87C2F7703FC3E81F98BD9119B1320009B476000530894F8B47FA8F1EF8F25B251D42002B50B4064E31FF3FDC69B6FDC38BDC67CC79F885D9F9D08788C70CA8AF69A1A0810801A';
wwv_flow_imp.g_varchar2_table(50) := '5230866B096CD5F87B15815A0520EA51BEEB76748E2DB147E78F8747E74F4245E05208FC96C163E8FDFF372440003684EFD2D713886EFCCF3FEDBFF2C256FFDC0C5ADF11A84900223FED2F6DFC87F28FCCD8ED81B92BCCEB4F4980009C92B66BDD4820BA';
wwv_flow_imp.g_varchar2_table(51) := 'E9473685433B02515BC7A77C84B00601A8B5F197DCF52102DEFC6A2440006A4C25D9985A6AFCA545603C7FC94708B71480561A7FC98C7722E0F640B237B94ACB250095069361582D37FE925BC7251F21DC42005A6DFC2533DE9DDBD30319DEE9EAAD9100';
wwv_flow_imp.g_varchar2_table(52) := 'D49B4D97233BD5637C5BC28BBC871CFDE4C02905A0A7C6EFF6C0962BCAB54B112000A5C83AEF1708F4F6697F4ABC358AC0290420B2F14F79946F4A16A55EE331C252649DF7140408C0292827BE46C6C65FF2D3E2DA1D819202B0F5A37C5B2E338F116E49';
wwv_flow_imp.g_varchar2_table(53) := 'DFB5971220004BC939EE4602D18D3FEA31BE2D63AB6147205A00223FED977C6AE394B947E63C8EDBF7044E995EAE6B11805C7917AD36BAE9F7D2100EED088CFF5BC46F9F9BFB0861940068FCC797121138CEC82BB6254000B6E5DFC5D535FE653146DE3F';
wwv_flow_imp.g_varchar2_table(54) := '9EFAE4C05A01D0F8E7671D99F36E47E0F25FBF65707E188EF802010260422C26A0F12F46F7C281519F168F89C05201D0F863B28ECA79371AB7076272C97A16029035F9857567788C6F219A90C3221BC4A12F0CCE15008D3F24D662C24704CAE493E5AC04';
wwv_flow_imp.g_varchar2_table(55) := '204BD22BEBF4697F25C09987971281A90210D9F86B7F946F6634A12F2F717BC05F230C8DA8EB931180AEE35D5F9CC6BF9EE19A33448BC0BD9F7E78E370DEFDE69BC3FB3F7FB066C897C78E5FE0BC73E7F6D13FC7BBFA429D9CC063849D04D9581904A0B1';
wwv_flow_imp.g_varchar2_table(56) := 'C04E35DCE8C6DFC3637CA7627FE83A912250B28E5E9FDC28C96CFFDCD159FB9EC029D36BEB5A04A0ADBC8A8E36BAE96B06F171456F19478D50D651247F7B1E2210CFD419BF488000981197047EFDE4E1F0ECE945080DCD2004E38D27A9450464DD5ED676';
wwv_flow_imp.g_varchar2_table(57) := '04CA67D6CA1508402B49151C6754F3D70C0A8674CDA9A3EF1D4FAD40D65349C5BE2E6A57E0A55B67C3D9CBB7875BB7CE6207E86C4D1120004DC5153FD88B4F3F192E3E7BBCF8C41AC16274E1074635879B0626EFF0D8169D3022EB5102BEF2CA6B8BAEEF';
wwv_flow_imp.g_varchar2_table(58) := 'A03E0810803E725C5CC5278FFE6DD1B11AC1226C273928A239EC0FD4A37C27896EF645D6DC0A2200B37177770001E82ED279052D1580B1218C3FDFF8FCDF7957F5EA9204084049BA759D7BBC0534FE4D8947E74F160DECD5BB5F5F749C83FA204000FAC8';
wwv_flow_imp.g_varchar2_table(59) := '7171154B05E0EA057D3A5C8C3FECC0B58D60EA40643D9554D9D745E54D00CAE654FBD90940ED09151E5F8400EC86A839140EEBC0E9A31AC1DC91FBBD0E7389AD7F7D89AC09C0FA5C5A3E03016839BD80B1470AC0551118FFDBED818080AE39458966B064';
wwv_flow_imp.g_varchar2_table(60) := 'B46E052DA136EF98925913807959F4F66A02D05BA233EB2921006E0FCC0C61C6CB4B368319C378E1A544600DBDC3C79E226B02109F5B4B6724002DA55560ACA505C0ED8198D04ED10C62463A0C6E052D2779EADFEB40009667D5C39104A0871457D4704C';
wwv_flow_imp.g_varchar2_table(61) := '00767F5FFED81F91993A04F78EA7927AFEBAF11BFDE7E78F177FCBFBEAD5A6FCA19F31EFC8ACDD069A9677B4E0BDFED53BC3BBEFBC35FCE4DECF6E1C000198964FAFAF2200BD263BB1AE6302F0577FF983CB33FDEDDFFFD3F0EC3717A1CD613CAF067138';
wwv_flow_imp.g_varchar2_table(62) := 'A8A847F9C646F0CE1FFFC1F0FBAFFFDEE585FEFC2FFEE6C699B1CBFBDEDF7D189AB59C4FB3CDBF6BFCE3BF53F2260013DF283B7D1901E834D8A9654D1580ABE78B6C0EE3796D193FA71BF92970BF11ECF29B2A00BBD747662DE7DFAEA2C8ACC7B38EBB3B';
wwv_flow_imp.g_varchar2_table(63) := 'AF7FEDEEB06BFC53F3260053DF29FB7C1D01E833D7C9552D118012CD21B308443683EB1AFFD486B0DB01D89F40A3088C3F11B707B28A4064CE6316C7B2B60330F96D30ED0B0940DAE89F17BE4600AE8A405473D889C0F86FEFDBC6910D614A3398D210AE';
wwv_flow_imp.g_varchar2_table(64) := '138012596779722032E7A98D7FAAF0D901C8DD000840EEFC4304E02AC2C82DE35E7705221BC2D4C63FB5211C1380DD79EEFFF2E170FF5F1E86ED08F4287C9139CF6DFC53F32600B91B0001C89D7FB8005CFDA418B15DBC3B5F0FDBC6910D616EE39FDA10';
wwv_flow_imp.g_varchar2_table(65) := 'A60A4029E96B3DE7E8C7F896E63C356F0290BB011080DCF9171380125BC6BB1D81F12F11DEBD73BB99E4221BFFF865AF3F79E7ADC5B5CFFD12E09C0B45EEFEB4260291192FFDB47F28AB637913803933BCBFD71280FE329D5551C47700A65C30E36384A5';
wwv_flow_imp.g_varchar2_table(66) := '1EE59BC2FBBAD71C6B084B7600F6AF9549046A6DFC7600D6AC923CC712803C591FACF45402506ACB78B72B50CB1706231BC2DAEDDF259F082304A0C46DA0DA760422731E795DF718DFDAB7A763C26707602DE1B68F27006DE7B77AF45B08408906B1B508';
wwv_flow_imp.g_varchar2_table(67) := '443684128D7FEA27C24801B89AF3F8DF11DF09D9520422338EDCE6BFE94D8000AC7E8BECFA0404A0EB788F17B7A5009468103B1118FF3DC5AE40645328D9F8B7148012399FF211C2C88C4FD5F8A7E66D07E0F87B64CFAF20003DA73BA1B61A04A0C5DB03';
wwv_flow_imp.g_varchar2_table(68) := '914DE1148D7F6A4328B103B03F0D5B79843032E35337FEA9791380096F921DBF8400741CEE94D26A1380DA6F0F4436855336FEA90DE11402504AF8226E0FD4F618DF9435EC16C05A4A798F270079B3BFACBC560128B16DBCBB3DB0E431C2C8C6BFF651BE';
wwv_flow_imp.g_varchar2_table(69) := '3553F6D83DE1530B4009E15B220291F96EF569FFD0BC3896B71D8035ABA9FD630940FB19AEAAA07601D815B7D56384353ECAB726F0630D612B01D84A047A6DFC53777C08C09AD5D4FEB104A0FD0C5755D08A0094DA36DEED0A5CFDC2606453D8629B7FCD';
wwv_flow_imp.g_varchar2_table(70) := '96F0D602702A1188CC781C73A9C7F8562DEE097FFE9900AC25DCF6F104A0EDFC568FBE450128D1247622707EFE787874FE6435D7DA1AFFD44F84B50840895B40E3AD81A87C6BDAE65F237C0460F5526FFA0404A0E9F8D60FBE650128D124D612ADB5F1B7';
wwv_flow_imp.g_varchar2_table(71) := '2A00325E37238FDDF22100EBF8B67E3401683DC195E3EF41004ADE1E988AB7F6C6DFBA00ECC61FF908E1D46C77AF6B25E3AB751180B929E77A3D01C895F70BD5F62600A56E0F5C374D5A6B0AC71A426DB7006E5A9E917F73A0977CF7EB3896B71D80DC0D';
wwv_flow_imp.g_varchar2_table(72) := '8000E4CEBFFAC700D7C6333689F127E2D7D05E1DCB968FF2AD6172AC21B424002565AF35B1BB6E4E1CCB9B00AC594DED1F4B00DACF705505BDEE00EC4389788C706C0A5FFBEA9D557F8E77555801071F6B082D0A40A408F4D2F8A7DEF22100018BAAE153';
wwv_flow_imp.g_varchar2_table(73) := '108086C38B187A1601B8CA6AEED6714F4DA16701582302B53EC6B7768D1FCB9B00AC25DCF6F104A0EDFC568F3EA300CC6914DF7DEF5BC32800BDFC1C6B082DEF00EC673445F47ACB779FC1B1BC09402F2B7B591D046019B76E8ECA2C006388DFFBFE8F6F';
wwv_flow_imp.g_varchar2_table(74) := 'CCF2473FFC4E37598F851C6B083D0940C67C094057CBB5783104A038E2BA2F400008C0D5194A00EA5EAF7347774CF8EC00CC25DAD7EB09405F79CEAE8600100002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D';
wwv_flow_imp.g_varchar2_table(75) := '8F00F495E7EC6A0800012000B3974D3307108066A2DA64A0046013ECF55C940010000250CF7A8C1E09018826DAD7F908405F79CEAE8600100002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D8F00F495E7EC6A';
wwv_flow_imp.g_varchar2_table(76) := '0800012000B3974D3307108066A2DA64A0046013ECF55C940010000250CF7A8C1E09018826DAD7F908405F79CEAE8600100002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D8F00F495E7EC6A0800012000B397';
wwv_flow_imp.g_varchar2_table(77) := '4D3307108066A2DA64A0046013ECF55C940010000250CF7A8C1E09018826DAD7F908405F79CEAE8600100002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D8F00F495E7EC6A0800012000B3974D3307108066A2';
wwv_flow_imp.g_varchar2_table(78) := 'DA64A0046013ECF55C940010000250CF7A8C1E09018826DAD7F908405F79CEAE8600100002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D8F00F495E7EC6A0800012000B3974D3307108066A2DA64A0046013EC';
wwv_flow_imp.g_varchar2_table(79) := 'F55C940010000250CF7A8C1E09018826DAD7F908405F79CEAE8600100002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D8F00F495E7EC6A0800012000B3974D3307108066A2DA64A0046013ECF55C9400100002';
wwv_flow_imp.g_varchar2_table(80) := '50CF7A8C1E09018826DAD7F908405F79CEAE8600100002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D8F00F495E7EC6A0800012000B3974D3307108066A2DA64A0046013ECF55C940010000250CF7A8C1E0901';
wwv_flow_imp.g_varchar2_table(81) := '8826DAD7F908405F79CEAE8600100002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D8F00F495E7EC6A0800012000B3974D3307108066A2DA64A0046013ECF55C940010000250CF7A8C1E09018826DAD7F90840';
wwv_flow_imp.g_varchar2_table(82) := '5F79CEAE8600100002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D8F00F495E7EC6A0800012000B3974D3307108066A2DA64A0046013ECF55C940010000250CF7A8C1E09018826DAD7F908405F79CEAE860010';
wwv_flow_imp.g_varchar2_table(83) := '0002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D8F00F495E7EC6A08006D19789200000C0F49444154012000B3974D3307108066A2DA64A0046013ECF55C940010000250CF7A8C1E09018826DAD7F908405F79';
wwv_flow_imp.g_varchar2_table(84) := 'CEAE8600100002307BD9347300016826AA4D064A0036C15ECF450900012000F5ACC7E891108068A27D9D8F00F495E7EC6A0800012000B3974D3307108066A2DA64A0046013ECF55C940010000250CF7A8C1E09018826DAD7F908405F79CEAEE69800BCF7';
wwv_flow_imp.g_varchar2_table(85) := 'EDB787F7FEF4EDD9E76DE580EF7D3F8F007CFC9FE7C34FEEFDECC6687ACB3B53BEFBC14EC9FBD5BB5F6F65A91A67010204A000D4964E794C0076B5F4D6187675656810632378FF83FBC3F8EFD49F5EF2CE90EFD54CC78C3FFED5A3E1FD9F3F9814350198';
wwv_flow_imp.g_varchar2_table(86) := '84A9DB1711806EA39D56D85401B82A02E37FF7B22BD0738358D2F8F7674DEB22D073BEFB8D7FAEE48DC7138069EF93BDBE8A00F49AECC4BA7EFDE4E1F0ECE9C5C457FFF6656363E841047A6C10FFF0C1FDC99F00A706DFAA08F4986F44E3DF9D83004C5D';
wwv_flow_imp.g_varchar2_table(87) := '017DBE8E00F499EBE4AA960AC0D50BB4DA1CC61A7A6910119FF6A74C9AD6B2EE25DFFD6C46C9FBD5B8DD3FE3B6CEFE39CEBE7C7B387BF9D529B17B4DA7040840A7C14E2DEBE9D38BE1E2D3C78B76017AD82E6EBD419CAAF1B79A75EBF9467EDABF7AAE97';
wwv_flow_imp.g_varchar2_table(88) := '6E9D0D5F79E5B5A96F135ED7290102D069B073CBBAF8F493E1E2B3C7730F3BF8FA966E0FB4DA20B66AFC8744A0E65B41ADE65BAAF18FE7D5FC43DEE6BA380901E822C6B8222245E0B23154FE18616B0D22B2F18F8DE0D6ADDF0D11BF5AA5AFB57C4B37FE';
wwv_flow_imp.g_varchar2_table(89) := 'B3976F0FB76E9DC5BD613853D3040840D3F1951B7C161168A5414437FEFD461099774DD2D74ABEBB953CF731BE63EF00A3E469FAC728E5FDFF1380BCD94FAA7C6C0CE34FAFB7076A6F10918D7FCA97BE7A1381DAF3BDDAF8973CC677DD22D6F827BDBDA5';
wwv_flow_imp.g_varchar2_table(90) := '7F1101483F05A60118BF2CF8EC3717DD8940AD0D22EA51BEA58DA01711A8355F8D7FDAFB8E5795254000CAF2EDF2EC91CD61EBEF09D4D420223FED2F6DFCFB133632EB2D6E0DD494EF55B6118FF15D3DDFB8BBF3D297C6EF74B8BFDFE59B6EA1A2084021';
wwv_flow_imp.g_varchar2_table(91) := 'B0194E1BD91CB612811A1A448D8DFF900844DD0A3AA508D490AF4FFB19DE0DDBAC9100B4995B55A36EF97B025B3688161A7F6911B814BF827F6C6ACB7C35FEAADEA60CE6000102605A8412686D57608B06D162E33F3449A2B22EF908E116F96AFCA16F29';
wwv_flow_imp.g_varchar2_table(92) := '4E56900001280837F3A9A39AC38E61A96DE35336885E1A7F4BDF133865BE23178FF1657ED76BAF7602D05E664D8DB8F6DB03A76810918D7FCAA37C5B4D9048E98B12BE53E4BB6BFC1EE3DB6AE6B9EE520204602939C7CD2250EB6384251BC4D68FF2CD0A';
wwv_flow_imp.g_varchar2_table(93) := '28F0C5358940C97C35FEC049E3549B1020009B60CF7DD1C80631925CF36931BA41447EDA8F7A946FABD91699F3D28CA3F3DDB1F418DF56B3CA7523091080489ACE358B406483582A02510D42E3BF3EFAC8DB407345202A5F9FF6672D6D2F6E8400016824';
wwv_flow_imp.g_varchar2_table(94) := 'A89E8719D920762270F9EF84C7CBD636088D7FFACC8CCC79EA93036BF3D5F8A7E7EB95ED112000ED65D6F5884FBD2BB0B44168FCEBA66154CEC7446069BE1AFFBA7C1DDD060102D0464EE94619D52076E0AEDB3A9EDB2034FED8A91899F3A18C97E4FBF1';
wwv_flow_imp.g_varchar2_table(95) := 'AF1E0DEFFFFC4148A1AD7F8F23048293544B8000541B8D818D0422B78D0FDD1E98DA20FEE3E3FF1A3EF8C5BF5E3EE7BDF6A7E647F9D6D6B6F4F852223035DF48B11B1968FC4B6782E34E4980009C92B66B2D2650EA31C27B3FFDF0C631BDFBCD37433E0D';
wwv_flow_imp.g_varchar2_table(96) := '6A08D3A28F168163F97EF7BD6F0D9EDF9F968D57F5478000F49769F715453689D2B034FE65845BCA78ACD05FE35B96B3A3B6254000B6E5EFEA2B08D4DC2434FE15C15E3934FA1650CCA89E9F45C691349D6B0B0204600BEAAE194AA0A626A1298446FBFF';
wwv_flow_imp.g_varchar2_table(97) := '27937119AECE9A9B0001C89D7F77D56FB52BA0F19F6E2AC9F874AC5DA96F0204A0EF7CD35677AA26A1F16F37C54E91B17CB7CBD795CB132000E519BBC286044A6D1D7B946FC350F72E5D420434FE7AF235927204084039B6CE5C118188C70835858A023D';
wwv_flow_imp.g_varchar2_table(98) := '309408119071DD191B5D2C010210CBD3D91A2030B751680A0D847A658873F31D0FF5185F5B191B6D0C010210C3D1591A2470AC5168FC0D86BA2702E3FF79F1D9E38385C8B7ED7C8D7E3D0102B09EA133344EE0EAF704C6A670F989F0E5DBC3ADCFFFBBF1';
wwv_flow_imp.g_varchar2_table(99) := 'F2D20F5FBEE9A70000D7102000A6060208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA9211';
wwv_flow_imp.g_varchar2_table(100) := '40000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA9211400001041020';
wwv_flow_imp.g_varchar2_table(101) := '00E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E600020820';
wwv_flow_imp.g_varchar2_table(102) := '8000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E600020820800002090910';
wwv_flow_imp.g_varchar2_table(103) := '8084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901';
wwv_flow_imp.g_varchar2_table(104) := '041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102';
wwv_flow_imp.g_varchar2_table(105) := '600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E20800002';
wwv_flow_imp.g_varchar2_table(106) := '0820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E20800002082090900001';
wwv_flow_imp.g_varchar2_table(107) := '4818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140';
wwv_flow_imp.g_varchar2_table(108) := '000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000';
wwv_flow_imp.g_varchar2_table(109) := 'E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E60002082080';
wwv_flow_imp.g_varchar2_table(110) := '00020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E60002082080000209091080';
wwv_flow_imp.g_varchar2_table(111) := '84A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B190104';
wwv_flow_imp.g_varchar2_table(112) := '1040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B190104104000010260';
wwv_flow_imp.g_varchar2_table(113) := '0E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E208000020820909000014818BA921140000104102000E6000208208000020909108084A12B1901041040000102600E2080000208';
wwv_flow_imp.g_varchar2_table(114) := '20909000014818BA921140000104102000E6000208208000020909108084A12B19010410400081FF0385499C5A2C867B670000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(107682976399117410224)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(23520521170854034)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15599294868428
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681677676227409954)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15598213791956
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681678050077409955)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15598213791967
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681678351600409955)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15598213791970
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681678692057409955)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15598213791973
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681678951595409955)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15598213791974
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681679234691409956)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15598213791977
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681679584448409956)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15598213791977
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681679899459409956)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15598213791978
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681680115633409956)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15598213791984
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681680411040409956)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15598213791984
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681680732582409957)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15598213791988
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681681001322409957)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15598213791995
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(107681681339848409957)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15598213792003
);
end;
/
prompt --application/shared_components/security/authorizations/page_access
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(1430495388443018888)
,p_name=>'Page Access'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'Vadmin varchar2(1);',
'Vallow varchar2(1);',
'begin',
'select admin into Vadmin from app_users',
'where upper(userid)=upper(:APP_USER);',
'if Vadmin = ''N'' then',
'select allow_access into Vallow from xbiz_groups_detail',
'where pageID =:APP_PAGE_ID and',
'segmentType=''Page'' and',
'groupID=(select groupID from app_users where upper(userid)=upper(:APP_USER));',
'if Vallow=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'else',
'return true;',
'end if;',
'exception',
'when NO_DATA_FOUND then return false;',
'end;'))
,p_version_scn=>15599867799390
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/create
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(1431424067964736339)
,p_name=>'Create'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'Vadmin varchar2(1);',
'Vallow varchar2(1);',
'begin',
'select admin into Vadmin from app_users',
'where upper(userid)=upper(:APP_USER);',
'if Vadmin = ''N'' then',
'select allow_access into Vallow from xbiz_groups_detail',
'where pageID =:APP_PAGE_ID and',
'itemRole Like ''Create%'' and groupID=',
'(select groupID from app_users',
'where upper(userid)=upper(:APP_USER));',
'if Vallow=''Y'' then',
'return true;',
'else',
'return false;',
'end if;',
'else',
'return true;',
'end if;',
'exception',
'when NO_DATA_FOUND then return false;',
'end;'))
,p_version_scn=>15599867852109
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(107682977931079410226)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15598213797836
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/categories
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(109059427369017151142)
,p_lov_name=>'CATEGORIES'
,p_lov_query=>'.'||wwv_flow_imp.id(109059427369017151142)||'.'
,p_location=>'STATIC'
,p_version_scn=>15598723606397
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(109059427652682151143)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Men'
,p_lov_return_value=>'Men'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(109059428090018151144)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Women'
,p_lov_return_value=>'Women'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(109059428467943151144)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Kids'
,p_lov_return_value=>'Kids'
);
end;
/
prompt --application/shared_components/user_interface/lovs/customers_customer_first_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(109233610485073689881)
,p_lov_name=>'CUSTOMERS.CUSTOMER_FIRST_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CUSTOMERS'
,p_return_column_name=>'CUSTOMERID'
,p_display_column_name=>'CUSTOMER_FIRST_NAME'
,p_default_sort_column_name=>'CUSTOMER_FIRST_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15598783048631
);
end;
/
prompt --application/shared_components/user_interface/lovs/item_role
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1352189196826592248)
,p_lov_name=>'ITEM ROLE'
,p_lov_query=>'.'||wwv_flow_imp.id(1352189196826592248)||'.'
,p_location=>'STATIC'
,p_version_scn=>15599836890163
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1352189667495592331)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Create'
,p_lov_return_value=>'Create'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1352190084231592331)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Modify'
,p_lov_return_value=>'Modify'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1352190494624592332)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Delete'
,p_lov_return_value=>'Delete'
);
end;
/
prompt --application/shared_components/user_interface/lovs/new_or_existing_customer
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(109082131586791205494)
,p_lov_name=>'NEW OR EXISTING CUSTOMER'
,p_lov_query=>'.'||wwv_flow_imp.id(109082131586791205494)||'.'
,p_location=>'STATIC'
,p_version_scn=>15598734645149
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(109082131877190205495)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Existing Customer'
,p_lov_return_value=>'EXISTING'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(109082132250419205495)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'New Customer'
,p_lov_return_value=>'NEW'
);
end;
/
prompt --application/shared_components/user_interface/lovs/products_with_price
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(109079739685380182708)
,p_lov_name=>'PRODUCTS WITH PRICE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_escape.html(product_name) || ''[$'' || list_price || '']'' d,',
'product_id r',
'from product_info',
'where availability = ''Y''',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_version_scn=>15598734322678
);
end;
/
prompt --application/shared_components/user_interface/lovs/product_info_product_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(900648988098088072)
,p_lov_name=>'PRODUCT_INFO.PRODUCT_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PRODUCT_INFO'
,p_return_column_name=>'PRODUCT_ID'
,p_display_column_name=>'PRODUCT_NAME'
,p_default_sort_column_name=>'PRODUCT_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15599645194091
);
end;
/
prompt --application/shared_components/user_interface/lovs/segment_type
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1352019733193586932)
,p_lov_name=>'SEGMENT TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(1352019733193586932)||'.'
,p_location=>'STATIC'
,p_version_scn=>15599836791234
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1352020020795586934)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'App'
,p_lov_return_value=>'App'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1352020426714586935)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Menu'
,p_lov_return_value=>'Menu'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1352020883242586935)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Page'
,p_lov_return_value=>'Page'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1352021235366586935)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Item'
,p_lov_return_value=>'Item'
);
end;
/
prompt --application/shared_components/user_interface/lovs/states
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(109080931527310194702)
,p_lov_name=>'STATES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select state_name display_value, state_id return_value',
'from state order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>15598734516536
);
end;
/
prompt --application/shared_components/user_interface/lovs/suppliers_supp_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(900649196072088073)
,p_lov_name=>'SUPPLIERS.SUPP_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'SUPPLIERS'
,p_return_column_name=>'SUPP_ID'
,p_display_column_name=>'SUPP_NAME'
,p_default_sort_column_name=>'SUPP_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15599645194103
);
end;
/
prompt --application/shared_components/user_interface/lovs/xbiz_groups_master_grouptitle
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1400958620833094132)
,p_lov_name=>'XBIZ_GROUPS_MASTER.GROUPTITLE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'XBIZ_GROUPS_MASTER'
,p_return_column_name=>'GROUPID'
,p_display_column_name=>'GROUPTITLE'
,p_default_sort_column_name=>'GROUPTITLE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15599854869745
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(107682978337870410227)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(107681682267023409958)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(792524046871830443)
,p_parent_id=>wwv_flow_imp.id(108775322722520799716)
,p_short_name=>'Suppliers'
,p_link=>'f?p=&APP_ID.:118:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>118
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(799368707364644067)
,p_parent_id=>wwv_flow_imp.id(108775322722520799716)
,p_short_name=>'Purchases'
,p_link=>'f?p=&APP_ID.:110:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>110
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(799369987356644069)
,p_parent_id=>wwv_flow_imp.id(799368707364644067)
,p_short_name=>'Purchase Details'
,p_link=>'f?p=&APP_ID.:114:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>114
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1352578981227311670)
,p_parent_id=>wwv_flow_imp.id(108775322722520799716)
,p_short_name=>'Application Segments'
,p_link=>'f?p=&APP_ID.:60:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>60
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1366551679296528868)
,p_parent_id=>wwv_flow_imp.id(108775322722520799716)
,p_short_name=>'User Groups'
,p_link=>'f?p=&APP_ID.:62:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>62
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1400970022546094143)
,p_short_name=>'Application Users'
,p_link=>'f?p=&APP_ID.:63:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>63
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(1406764655717569249)
,p_short_name=>'Reset Password'
,p_link=>'f?p=&APP_ID.:65:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>65
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(108775322722520799716)
,p_short_name=>'Dashboard'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(109092940198494734500)
,p_parent_id=>wwv_flow_imp.id(108775322722520799716)
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:111:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>111
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(109130296219253924399)
,p_parent_id=>wwv_flow_imp.id(108775322722520799716)
,p_short_name=>'Products'
,p_link=>'f?p=&APP_ID.:112:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>112
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(109233624209909689893)
,p_parent_id=>wwv_flow_imp.id(108775322722520799716)
,p_short_name=>'Orders'
,p_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>5
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(109233625403351689894)
,p_parent_id=>wwv_flow_imp.id(109233624209909689893)
,p_short_name=>'Order Details'
,p_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>29
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(107682950909585410206)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(107681681601483409957)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15598213792010
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/custom_scheme
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(1412199297412682126)
,p_name=>'Custom Scheme'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'CUSTOM_AUTH'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15599862520339
);
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(107681681950677409957)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15598213792017
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#appcss.css',
'#WORKSPACE_FILES#apex.css'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(1430495388443018888)
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(108775322289118799715)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109149531900951179215)
,p_plug_name=>'Top Orders by Date'
,p_icon_css_classes=>'fa-apex'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(o.order_time, ''Month DD, YYYY'') order_day, sum(o.order_total) sales',
'from orders o',
'group by to_char(o.order_time, ''Mon DD, YYYY''), order_time',
'order by 2 desc nulls last',
'fetch first 5 rows only'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(109149532527812179221)
,p_region_id=>wwv_flow_imp.id(109149531900951179215)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(109149532685032179222)
,p_chart_id=>wwv_flow_imp.id(109149532527812179221)
,p_seq=>10
,p_name=>'New'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'ORDER_DAY'
,p_items_value_column_name=>'SALES'
,p_items_label_column_name=>'ORDER_DAY'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(109149532714518179223)
,p_chart_id=>wwv_flow_imp.id(109149532527812179221)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(109149532813462179224)
,p_chart_id=>wwv_flow_imp.id(109149532527812179221)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(109149532088842179216)
,p_name=>'Sales for This Month'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--xxlarge:t-BadgeList--circular:t-BadgeList--fixed'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_display_column=>5
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(o.order_total) total_sales,',
'    count(distinct o.order_id) total_orders,',
'    count(distinct o.customer_id) total_customers',
'from orders o',
'where order_time >= to_date(to_char(sysdate, ''YYYYMM'') || ''01'', ''YYYYMMDD'')'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2104643962563030528
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109149532965716179225)
,p_query_column_id=>1
,p_column_alias=>'TOTAL_SALES'
,p_column_display_sequence=>10
,p_column_heading=>'Total Sales'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP,rir,5:IRGTE_ORDER_DATE:&P1_THIS_MONTH.'
,p_column_linktext=>'#TOTAL_SALES#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109149533083244179226)
,p_query_column_id=>2
,p_column_alias=>'TOTAL_ORDERS'
,p_column_display_sequence=>20
,p_column_heading=>'Total Orders'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109149533130469179227)
,p_query_column_id=>3
,p_column_alias=>'TOTAL_CUSTOMERS'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109149532115859179217)
,p_plug_name=>'Sales by Product'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_display_column=>9
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.product_name ||'' [$''||p.list_price||'']'' product,',
'    sum(oi.quantity * oi.unit_price) sales',
'from order_items oi, product_info p',
'where oi.product_id = p.product_id',
'group by p.product_id, p.product_name, p.list_price',
'order by p.product_name desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(109149533352263179229)
,p_region_id=>wwv_flow_imp.id(109149532115859179217)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(109149533443379179230)
,p_chart_id=>wwv_flow_imp.id(109149533352263179229)
,p_seq=>10
,p_name=>'New'
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'SALES'
,p_items_label_column_name=>'PRODUCT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109149534216691179238)
,p_plug_name=>'Sales by Category'
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>4
,p_plug_display_column=>1
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.category Category, sum(o.order_total) Sales',
'from orders o, order_items oi, product_info p',
'where o.order_id = oi.order_id and oi.product_id = p.product_id',
'group by category',
'order by 2 desc'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(109149534362194179239)
,p_region_id=>wwv_flow_imp.id(109149534216691179238)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(109149534480995179240)
,p_chart_id=>wwv_flow_imp.id(109149534362194179239)
,p_seq=>10
,p_name=>'New'
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'SALES'
,p_items_label_column_name=>'CATEGORY'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(109149534680468179242)
,p_chart_id=>wwv_flow_imp.id(109149534362194179239)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(109149534567526179241)
,p_chart_id=>wwv_flow_imp.id(109149534362194179239)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(109216093925087400102)
,p_name=>'Top Customers'
,p_title=>'Top Customers'
,p_template=>4072358936313175081
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_display_column=>5
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.customer_last_name ||'', ''||b.customer_first_name||'' - ''||count(a.order_id)||'' Order(s)'' customer_name,',
'sum(a.order_total) order_total, b.customerid id',
'from orders a, customers b',
'where a.customer_id = b.customerid',
'group by b.customerid, b.customer_last_name||'', ''||b.customer_first_name',
'order by NVL(sum(a.order_total),0) desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_row_count_max=>6
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109216094033875400103)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Customer Name'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:P7_CUSTOMERID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109216094175493400104)
,p_query_column_id=>2
,p_column_alias=>'ORDER_TOTAL'
,p_column_display_sequence=>20
,p_column_heading=>'Order Total'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109216094222636400105)
,p_query_column_id=>3
,p_column_alias=>'ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(109216094306058400106)
,p_name=>'Top Products'
,p_title=>'Top Products'
,p_template=>4072358936313175081
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_grid_column_span=>4
,p_display_column=>9
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.product_name||'' - ''||sum(oi.quantity)||'' x''',
'        ||to_char(p.list_price,''L999G99'') ||''''product,',
'        sum(oi.quantity * oi.unit_price) sales, p.product_id',
'from order_items oi, product_info p',
'where oi.product_id = p.product_id',
'group by p.product_id, p.product_name, p.list_price',
'order by 2 desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_row_count_max=>6
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109216094797580400110)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT'
,p_column_display_sequence=>10
,p_column_heading=>'Product'
,p_column_link=>'f?p=&APP_ID.:113:&SESSION.::&DEBUG.:113:P113_PRODUCT_ID:#PRODUCT_ID#'
,p_column_linktext=>'#PRODUCT#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109216094828304400111)
,p_query_column_id=>2
,p_column_alias=>'SALES'
,p_column_display_sequence=>20
,p_column_heading=>'Sales'
,p_column_format=>'999G999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(109216094957738400112)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109216095078310400113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109149531900951179215)
,p_button_name=>'view_orders'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Orders'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5::'
,p_icon_css_classes=>'fa-materialized-view'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109216095371246400116)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109216093925087400102)
,p_button_name=>'VIEW_CUSTOMERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Customers'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109216095423305400117)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109216093925087400102)
,p_button_name=>'Add_customer'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Customer'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109216095593273400118)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109216094306058400106)
,p_button_name=>'View_products'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Products'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109216095600297400119)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109216094306058400106)
,p_button_name=>'add_product'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Product'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:113:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109216095132353400114)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(109149531900951179215)
,p_button_name=>'Add_order'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Enter New Order'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11::'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_imp.id(1431424067964736339)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109216095271493400115)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(109149532088842179216)
,p_button_name=>'View_month_orders'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Month Orders'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RIR,5:IRGTE_ORDER_DATE:&P1_THIS_MONTH.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109149533241494179228)
,p_name=>'P1_THIS_MONTH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109149532088842179216)
,p_source=>'to_char(sysdate, ''MM'') || ''01'' ||to_char(sysdate, ''YYYY'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Orders'
,p_alias=>'ORDERS'
,p_step_title=>'Orders'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109233620658770689889)
,p_plug_name=>'Orders'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lpad(to_char(o.order_id),4,''0000'') order_number, o.order_id,',
'    to_char(o.order_time, ''Month YYYY'') order_month,',
'    trunc(o.order_time) order_date,',
'    o.username sales_rep, o.order_total,',
'    c.customer_last_name||'', ''||c.customer_first_name customer_name,',
'    (select count(*) from order_items oi',
'    where oi.order_id = o.order_id and oi.quantity != 0) order_items,',
'    o.tags tags',
'from orders o, customers c',
'where o.customer_id = c.customerid'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Orders'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(109233620748104689890)
,p_name=>'Orders'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INEEDGAMESSS@GMAIL.COM'
,p_internal_uid=>109233620748104689890
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109233621409750689891)
,p_db_column_name=>'ORDER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Order ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109216095875136400121)
,p_db_column_name=>'ORDER_NUMBER'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>'Order#'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:29:P29_ORDER_ID:#ORDER_ID#'
,p_column_linktext=>'#ORDER_NUMBER#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109216095978846400122)
,p_db_column_name=>'ORDER_MONTH'
,p_display_order=>20
,p_column_identifier=>'H'
,p_column_label=>'Order Month'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109216096048526400123)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>30
,p_column_identifier=>'I'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109216096231039400125)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>40
,p_column_identifier=>'K'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109216096152094400124)
,p_db_column_name=>'SALES_REP'
,p_display_order=>50
,p_column_identifier=>'J'
,p_column_label=>'Sales Rep'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109216096390155400126)
,p_db_column_name=>'ORDER_ITEMS'
,p_display_order=>60
,p_column_identifier=>'L'
,p_column_label=>'Order Items'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109233622244066689891)
,p_db_column_name=>'ORDER_TOTAL'
,p_display_order=>70
,p_column_identifier=>'C'
,p_column_label=>'Order Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109233623457364689892)
,p_db_column_name=>'TAGS'
,p_display_order=>80
,p_column_identifier=>'F'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(109233786277790000383)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1092337863'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDER_NUMBER:ORDER_MONTH:ORDER_DATE:CUSTOMER_NAME:SALES_REP:ORDER_ITEMS:ORDER_TOTAL:TAGS:'
,p_sort_column_1=>'ORDER_NUMBER'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(109237746890735087779)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'monthly review'
,p_report_seq=>10
,p_report_alias=>'1092377469'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDER_NUMBER:ORDER_MONTH:ORDER_DATE:CUSTOMER_NAME:SALES_REP:ORDER_ITEMS:ORDER_TOTAL:TAGS:'
,p_sort_column_1=>'ORDER_NUMBER'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109233624392403689893)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109233623958541689892)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109233624392403689893)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11::'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Customer Details'
,p_alias=>'CUSTOMER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109092908005599734462)
,p_plug_name=>'Customer Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>0
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109092918258463734475)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109092918654280734475)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109092918258463734475)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109092920020867734478)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(109092918258463734475)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_CUSTOMERID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109092920441295734478)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(109092918258463734475)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_CUSTOMERID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109092920846915734478)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(109092918258463734475)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P7_CUSTOMERID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092908477440734463)
,p_name=>'P7_CUSTOMERID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Customer ID'
,p_source=>'CUSTOMERID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092908861887734463)
,p_name=>'P7_CUSTOMER_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'First Name'
,p_source=>'CUSTOMER_FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092909269328734464)
,p_name=>'P7_CUSTOMER_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'Last Name'
,p_source=>'CUSTOMER_LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092909644341734465)
,p_name=>'P7_CUSTOMER_STREET_ADDRESS1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'Street Address 1'
,p_source=>'CUSTOMER_STREET_ADDRESS1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092910011311734465)
,p_name=>'P7_CUSTOMER_STREET_ADDRESS2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'Street Address 2'
,p_source=>'CUSTOMER_STREET_ADDRESS2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092910443079734466)
,p_name=>'P7_CUSTOMER_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'City'
,p_source=>'CUSTOMER_CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092910820956734466)
,p_name=>'P7_CUSTOMER_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'State'
,p_source=>'CUSTOMER_STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092911253506734466)
,p_name=>'P7_CUSTOMER_POSTAL_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'Postal Code'
,p_source=>'CUSTOMER_POSTAL_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092911632735734467)
,p_name=>'P7_CUSTOMER_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'Email'
,p_source=>'CUSTOMER_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092912042187734467)
,p_name=>'P7_CUSTOMER_PHONE1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'Phone 1'
,p_source=>'CUSTOMER_PHONE1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092912423434734468)
,p_name=>'P7_CUSTOMER_PHONE2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'Phone 2'
,p_source=>'CUSTOMER_PHONE2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092912835334734468)
,p_name=>'P7_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'URL'
,p_source=>'URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092913289238734469)
,p_name=>'P7_CREDIT_LIMIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'Credit Limit'
,p_source=>'CREDIT_LIMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109092913675520734469)
,p_name=>'P7_TAGS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_item_source_plug_id=>wwv_flow_imp.id(109092908005599734462)
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(107713913835782689435)
,p_validation_name=>'Check Credit Limit'
,p_validation_sequence=>10
,p_validation=>':P7_CREDIT_LIMIT<=10000'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Customer''s  Credit Limit must be less than or equal to $10,000'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(107713913909897689436)
,p_validation_name=>'Can''t delete customers with orders'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (select ''x'' from orders',
'    where CUSTOMER_ID =',
'    :P7_CUSTOMERID) LOOP',
'    return false;',
'    end loop;',
'    return true;',
'    end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Can''t delete customer with existing orders'
,p_when_button_pressed=>wwv_flow_imp.id(109092920020867734478)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109092918712706734475)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(109092918654280734475)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109092919568610734476)
,p_event_id=>wwv_flow_imp.id(109092918712706734475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109092921685100734479)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(109092908005599734462)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Customer Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>109092921685100734479
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109092922037382734480)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>109092922037382734480
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109092921285827734479)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(109092908005599734462)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Customer Details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>109092921285827734479
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Stocks'
,p_alias=>'STOCKS'
,p_step_title=>'Stocks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(994204366485691769)
,p_plug_name=>'Stocks'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'STOCKS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Stocks'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(994204463221691769)
,p_name=>'Stocks'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'INEEDGAMESSS@GMAIL.COM'
,p_internal_uid=>994204463221691769
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(994206184026691843)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(900648988098088072)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(994206538674691844)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(994206941288691844)
,p_db_column_name=>'CATEGORY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(994207324716691844)
,p_db_column_name=>'SUPP_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Supp'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_imp.id(900649196072088073)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(994207788177691845)
,p_db_column_name=>'PRODUCT_QTY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Product Qty'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(994065987036387605)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9940660'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_ID:PRODUCT_NAME:CATEGORY:SUPP_ID:PRODUCT_QTY'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Identify Customer'
,p_alias=>'IDENTIFY-CUSTOMER'
,p_page_mode=>'MODAL'
,p_step_title=>'Identify Customer'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'500'
,p_dialog_width=>'700'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95665184124371704)
,p_plug_name=>'Order Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(109058787736265811981)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95665280833371705)
,p_plug_name=>'Identify Customer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95665490551371707)
,p_plug_name=>'Existing Customer'
,p_parent_plug_id=>wwv_flow_imp.id(95665280833371705)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109202255868894325337)
,p_plug_name=>'Customer Details'
,p_title=>'New Customer Details'
,p_parent_plug_id=>wwv_flow_imp.id(95665280833371705)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>0
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'CUSTOMERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109202266121758325350)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109358068543590897)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109202266121758325350)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(95665613116371709)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109202266121758325350)
,p_button_name=>'Next'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-chevron_right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(95666381054371716)
,p_branch_name=>'Go to page 12'
,p_branch_action=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(95665613116371709)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95665334709371706)
,p_name=>'P11_CUSTOMER_OPTIONS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95665280833371705)
,p_item_default=>'EXISTING'
,p_prompt=>'<b>Create order for:</b>'
,p_source=>'EXISTING'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'NEW OR EXISTING CUSTOMER'
,p_lov=>'.'||wwv_flow_imp.id(109082131586791205494)||'.'
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(95665570690371708)
,p_name=>'P11_CUSTOMER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(95665490551371707)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customer_last_name || '', '' || customer_first_name d, customerid r',
'from customers',
'order by customer_last_name'))
,p_cSize=>70
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202256965666325345)
,p_name=>'P11_CUSTOMER_ID_XYZ'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'New'
,p_source=>'CUSTOMERID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202257350113325345)
,p_name=>'P11_CUSTOMER_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'First Name'
,p_source=>'CUSTOMER_FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202257757554325346)
,p_name=>'P11_CUSTOMER_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'Last Name'
,p_source=>'CUSTOMER_LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202258132567325347)
,p_name=>'P11_CUSTOMER_STREET_ADDRESS1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'Street Address 1'
,p_source=>'CUSTOMER_STREET_ADDRESS1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202258499537325347)
,p_name=>'P11_CUSTOMER_STREET_ADDRESS2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'Street Address 2'
,p_source=>'CUSTOMER_STREET_ADDRESS2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202258931305325348)
,p_name=>'P11_CUSTOMER_CITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'City'
,p_source=>'CUSTOMER_CITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202259309182325348)
,p_name=>'P11_CUSTOMER_STATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'State'
,p_source=>'CUSTOMER_STATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202259741732325348)
,p_name=>'P11_CUSTOMER_POSTAL_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'Postal Code'
,p_source=>'CUSTOMER_POSTAL_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202260120961325349)
,p_name=>'P11_CUSTOMER_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'Email'
,p_source=>'CUSTOMER_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202260530413325349)
,p_name=>'P11_CUSTOMER_PHONE1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'Phone 1'
,p_source=>'CUSTOMER_PHONE1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202260911660325350)
,p_name=>'P11_CUSTOMER_PHONE2'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'Phone 2'
,p_source=>'CUSTOMER_PHONE2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202261323560325350)
,p_name=>'P11_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'URL'
,p_source=>'URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202261777464325351)
,p_name=>'P11_CREDIT_LIMIT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'Credit Limit'
,p_source=>'CREDIT_LIMIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109202262163746325351)
,p_name=>'P11_TAGS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_item_source_plug_id=>wwv_flow_imp.id(109202255868894325337)
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(109359973848590904)
,p_validation_name=>'Check Credit Limit'
,p_validation_sequence=>10
,p_validation=>':P11_CREDIT_LIMIT<=10000'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Customer''s  Credit Limit must be less than or equal to $10,000'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109361021819590905)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(109358068543590897)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109361537867590907)
,p_event_id=>wwv_flow_imp.id(109361021819590905)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(95665810710371711)
,p_name=>'Hide/show customer'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P11_CUSTOMER_OPTIONS'
,p_condition_element=>'P11_CUSTOMER_OPTIONS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'EXISTING'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95665934400371712)
,p_event_id=>wwv_flow_imp.id(95665810710371711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95665490551371707)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95666201509371715)
,p_event_id=>wwv_flow_imp.id(95665810710371711)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109202255868894325337)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95666091219371713)
,p_event_id=>wwv_flow_imp.id(95665810710371711)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109202255868894325337)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(95666181751371714)
,p_event_id=>wwv_flow_imp.id(95665810710371711)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(95665490551371707)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109360613656590904)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>109360613656590904
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(95665791987371710)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Order Collection'
,p_process_sql_clob=>'apex_collection.create_or_truncate_collection (p_collection_name => ''ORDER'');'
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>95665791987371710
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_imp_page.create_page(
 p_id=>12
,p_name=>'Order items'
,p_alias=>'ORDER-ITEMS'
,p_page_mode=>'MODAL'
,p_step_title=>'Order items'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'div.CustomerInfo{margin: 10px 10px 0;}',
'div.CustomerInfo strong{font:bold 12px/16px Arial,sans-serif;display:block;width:120px;}',
'div.CustomerInfo p{display:block;margin:0; font: normal 12px/16px Arial, sans-serif;}',
'div.Products{clear:both;margin:16px 0 0 0;padding:0 8px 0 0;}',
'div.Products table{border:1px solid #CCC;border-bottom:none;}',
'div.Products table th{background-color:#DDD;color:#000;font:bold 12px/16px Arial,sans-serif;padding:4px 10px;text-align:right;border-bottom:1px solid #CCC;}',
'div.Products table td{border-bottom:1px solid #CCC;font:normal 12px/16px Arial,sans-serif; padding:4px 10px;text-align:right;}',
'div.Products table td a{color:#000;}',
'div.Products .left{text-align:left;}',
'div.CartItem{padding:8px 8px 0 8px;font:normal 11px/14px Arial,sans-serif;} ',
'div.CartItem a{color:#000;} ',
'div.CartItem span{display:block;text-align:right;padding:8px 0 0 0;} ',
'div.CartItem span.subtotal{font-weight:bold;} ',
'div.CartTotal{margin-top:8px;padding:8px;border-top:1px dotted #AAA;} ',
'div.CartTotal span{display:block;text-align:right;font:normal 11px/14px Arial,sans-serif;padding:0 0 4px 0;} ',
'div.CartTotal p{padding:0;margin:0;font:normal 11px/14px Arial,sans-serif;position:relative;} ',
'div.CartTotal p.CartTotal{font:bold 12px/14px Arial,sans-serif;padding:8px 0 0 0;} ',
'div.CartTotal p.CartTotal span{font:bold 12px/14px Arial,sans-serif;padding:8px 0 0 0;} ',
'div.CartTotal p span{padding:0;position:absolute;right:0;top:0;} ',
''))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'500'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(561521405214098001)
,p_plug_name=>'Order progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(109058787736265811981)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(561521673281098003)
,p_plug_name=>'Select items'
,p_parent_plug_id=>wwv_flow_imp.id(561521405214098001)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_customer_id varchar2(30) := :P11_CUSTOMER_ID;',
'begin',
'--',
'-- display customer information',
'--',
'sys.htp.p(''<div class="CustomerInfo">'');',
'if :P11_CUSTOMER_OPTIONS = ''EXISTING'' then',
'  for x in (select * from customers where customerid = l_customer_id) loop',
'    sys.htp.p(''<div class="CustomerInfo">'');',
'    sys.htp.p(''<strong>Customer:</strong>'');  ',
'    sys.htp.p(''<p>'');',
'    sys.htp.p(sys.htf.escape_sc(x.customer_first_name) || '' '' ||',
'    sys.htf.escape_sc(x.customer_last_name) || ''<br />'');',
'    sys.htp.p(sys.htf.escape_sc(x.customer_street_address1) || ''<br />'');',
'    if x.customer_street_address2 is not null then',
'      sys.htp.p(sys.htf.escape_sc(x.customer_street_address2) || ''<br />'');        ',
'    end if;',
'    sys.htp.p(sys.htf.escape_sc(x.customer_city) || '', '' ||',
'    sys.htf.escape_sc(x.customer_state) || ''  '' ||',
'    sys.htf.escape_sc(x.customer_postal_code));',
'    sys.htp.p(''</p>'');',
'  end loop;',
'else',
'  sys.htp.p(''<strong>Customer:</strong>'');  ',
'  sys.htp.p(''<p>'');',
'  sys.htp.p(sys.htf.escape_sc(:P11_CUSTomer_FIRST_NAME) || '' '' ||',
'                sys.htf.escape_sc(:P11_CUSTomer_LAST_NAME) || ''<br />'');',
'  sys.htp.p(sys.htf.escape_sc(:P11_CUSTomer_STREET_ADDRESS1) || ''<br />'');',
'  if :P11_CUSTomer_STREET_ADDRESS2 is not null then',
'    sys.htp.p(sys.htf.escape_sc(:P11_CUSTomer_STREET_ADDRESS2) || ''<br />'');    ',
'  end if;',
'  sys.htp.p(sys.htf.escape_sc(:P11_CUSTomer_CITY) || '', '' ||',
'  sys.htf.escape_sc(:P11_CUSTomer_STATE) || ''  '' ||',
'  sys.htf.escape_sc(:P11_CUSTomer_POSTAL_CODE));',
'  sys.htp.p(''</p>'');',
'end if;',
'sys.htp.p(''</div>'');',
'',
'-- display products',
'--',
'sys.htp.p(''<div class="Products" >'');',
'sys.htp.p(''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<thead>',
'<tr><th class="left">Product</th><th>Price</th><th></th></tr>',
'</thead>',
'<tbody>'');',
'for c1 in (select product_id, product_name,  list_price, ''Add to Cart'' add_to_order',
'from product_info',
'where availability = ''Y''',
'order by product_name) loop',
'sys.htp.p(''<tr><td class="left">''||sys.htf.escape_sc(c1.product_name)||''</td>',
'<td>''||trim(to_char(c1.list_price,''999G999G990D00'')) || ''</td>',
'<td><a href="''||apex_util.prepare_url(''f?p=&APP_ID.:12:''||:app_session||'':ADD:::P12_PRODUCT_ID:''|| c1.product_id)||''" class="t-Button t-Button--simple t-Button--hot"><span>Add<i class="iR"></i></span></a></td>',
'</tr>'');',
'end loop;',
'sys.htp.p(''</tbody></table>'');',
'sys.htp.p(''</div>'');',
'',
'--',
'-- display current order',
'--',
'sys.htp.p(''<div class="Products" >'');',
'sys.htp.p(''<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<thead>',
'<tr><th class="left">Current Order</th></tr>',
'</thead>',
'</table>',
'<table width="100%" cellspacing="0" cellpadding="0" border="0">',
'<tbody>'');',
'declare',
'    c number := 0; t number := 0;',
'begin',
'-- loop over cart values',
'for c1 in (select c001 pid, c002 i, to_number(c003) p, count(c002) q, sum(c003) ep,  ''Remove'' remove',
'from apex_collections',
'where collection_name = ''ORDER''',
'group by c001, c002, c003',
'order by c002)',
'loop',
'sys.htp.p(''<div class="CartItem">',
'<a href="''||apex_util.prepare_url(''f?p=&APP_ID.:12:&SESSION.:REMOVE:::P12_PRODUCT_ID:''||sys.htf.escape_sc(c1.pid))||''"><img src="#IMAGE_PREFIX#delete.gif" alt="Remove from cart" title="Remove from cart" /></a>&nbsp;&nbsp;',
'''||sys.htf.escape_sc(c1.i)||''',
'<span>''||trim(to_char(c1.p,''$999G999G999D00''))||''</span>',
'<span>Quantity: ''||c1.q||''</span>',
'<span class="subtotal">Subtotal: ''||trim(to_char(c1.ep,''$999G999G999D00''))||''</span>',
'</div>'');',
'c := c + 1;',
't := t + c1.ep;',
'end loop;',
'sys.htp.p(''</tbody></table>'');',
'if c > 0 then',
'    sys.htp.p(''<div class="CartTotal">',
'    <p>Items: <span>''||c||''</span></p>',
'    <p class="CartTotal">Total: <span>''||trim(to_char(t,''$999G999G999D00''))||''</span></p>',
'    </div>'');',
'else',
'   sys.htp.p(''<div class="alertMessage info" style="margin-top: 8px;">'');',
'     sys.htp.p(''<img src="#IMAGE_PREFIX#f_spacer.gif">'');',
'     sys.htp.p(''<div class="innerMessage">'');',
'       sys.htp.p(''<h3>Note</h3>'');',
'       sys.htp.p(''<p>You have no items in your current order.</p>'');',
'     sys.htp.p(''</div>'');',
'   sys.htp.p(''</div>'');',
'end if;',
'end;',
'sys.htp.p(''</div>'');',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(561521859118098005)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(561521986139098006)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(561521859118098005)
,p_button_name=>'cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(561522164565098008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(561521859118098005)
,p_button_name=>'Next'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Place order'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(561522082919098007)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(561521859118098005)
,p_button_name=>'previous'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(561522536604098012)
,p_branch_name=>'go to page 14'
,p_branch_action=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(561522164565098008)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(561522673193098013)
,p_branch_name=>'go to page 5'
,p_branch_action=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(561521986139098006)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(561522705636098014)
,p_branch_name=>'go to page 11'
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(561522082919098007)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(561521774712098004)
,p_name=>'P12_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(561521673281098003)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(561522460786098011)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place order'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_order_id    number;',
'    l_customer_id varchar2(30) := :P11_CUSTOMER_ID;',
'begin',
'-- Create New Customer',
'    if :P11_CUSTOMER_OPTIONS = ''NEW'' then',
'        insert into CUSTOMERS (',
'            CUSTomer_FIRST_NAME, CUSTomer_LAST_NAME, CUSTomer_STREET_ADDRESS1,',
'            CUSTomer_STREET_ADDRESS2, CUSTomer_CITY, CUSTomer_STATE, CUSTomer_POSTAL_CODE,',
'            CUSTomer_EMAIL, customer_PHONE1, customer_PHONE2, URL, CREDIT_LIMIT, TAGS)',
'        values (',
'            :P11_CUSTomer_FIRST_NAME, :P11_CUSTomer_LAST_NAME, :P11_CUSTomer_STREET_ADDRESS1,',
'            :P11_CUSTomer_STREET_ADDRESS2, :P11_CUSTomer_CITY, :P11_CUSTomer_STATE,',
'            :P11_CUSTomer_POSTAL_CODE, :P11_CUSTomer_EMAIL, :P11_customer_PHONE1,',
'            :P11_customer_PHONE2, :P11_URL, :P11_CREDIT_LIMIT, :P11_TAGS)',
'        returning customerid into l_customer_id;',
'        :P11_CUSTOMER_ID := l_customer_id;',
'    end if;',
'-- Insert a row into the Order Header table',
'    insert into orders(customer_id, order_total, order_time, username) ',
'    values  (l_customer_id, null, systimestamp, upper(:APP_USER)) ',
'    returning order_id into l_order_id;',
'    commit;',
'-- Loop through the ORDER collection and insert rows into the Order Line Item table',
'    for x in (select c001, c003, sum(c004) c004 from apex_collections ',
'               where collection_name = ''ORDER'' group by c001, c003) loop',
'       insert into order_items(order_item_id, order_id, product_id, unit_price, quantity)',
'       values (null, l_order_id, to_number(x.c001), to_number(x.c003),to_number(x.c004));',
'    end loop;',
'    commit;',
'-- Set the item P14_ORDER_ID to the order which was just placed',
'    :P14_ORDER_ID := l_order_id;',
'-- Truncate the collection after the order has been placed',
'    apex_collection.truncate_collection(p_collection_name => ''ORDER'');',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(561522164565098008)
,p_internal_uid=>561522460786098011
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(561522256157098009)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add product to the order collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_count number := 0;',
'begin',
'for x in (select p.rowid, p.* from product_info p where product_id = :P12_PRODUCT_ID)',
'loop',
'  select count(*) ',
'  into l_count',
'  from wwv_flow_collections',
'  where collection_name = ''ORDER''',
'  and c001 =  x.product_id;',
'  if l_count >= 10 then',
'    exit;',
'  end if;',
'  apex_collection.add_member(p_collection_name => ''ORDER'', ',
'    p_c001 => x.product_id, ',
'    p_c002 => x.product_name,',
'    p_c003 => x.list_price,',
'    p_c004 => 1,',
'    p_c010 => x.rowid);',
'end loop;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'ADD'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>561522256157098009
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(561522376478098010)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove product from the order collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for x in ',
'  (select seq_id, c001 from apex_collections ',
'    where collection_name = ''ORDER'' and c001 = :P12_PRODUCT_ID)',
'loop',
'apex_collection.delete_member(p_collection_name => ''ORDER'', p_seq => x.seq_id);',
'end loop;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'REMOVE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>561522376478098010
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Order Summary'
,p_alias=>'ORDER-SUMMARY'
,p_page_mode=>'MODAL'
,p_step_title=>'Order Summary'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(561522868294098015)
,p_plug_name=>'Order Progress'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(109058787736265811981)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(561522901916098016)
,p_plug_name=>'Order Header'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'for x in (select c.customer_first_name, c.customer_last_name, customer_street_address1, customer_street_address2, customer_city, customer_state, customer_postal_code from customers c, orders o',
'where c.customerid = o.customer_id and o.order_id = :P14_ORDER_ID)',
'loop',
'    htp.p(''<span style="font-size:16px;font-weight:bold;">ORDER #'' || sys.htf.escape_sc(:P14_ORDER_ID) || ''</span><br />'');',
'    htp.p(sys.htf.escape_sc(x.customer_first_name) || '' '' || sys.htf.escape_sc(x.customer_last_name) ||''<br />'');',
'    htp.p(sys.htf.escape_sc(x.customer_street_address1) || ''<br />'');',
'    if x.customer_street_address2 is not null then',
'        htp.p(sys.htf.escape_sc(x.customer_street_address2) || ''<br />'');',
'    end if;',
'    htp.p(sys.htf.escape_sc(x.customer_city) || '', '' || sys.htf.escape_sc(x.customer_state) || ''  '' || sys.htf.escape_sc(x.customer_postal_code) || ''<br /><br />'');',
'end loop;',
'end;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(561523073047098017)
,p_name=>'order lines'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.product_name, oi.unit_price, oi.quantity, (oi.unit_price * oi.quantity) extended_price   ',
'from order_items oi, product_info p',
'where oi.product_id = p.product_id and oi.order_id = :P14_ORDER_ID',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(561523100969098018)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(561523269280098019)
,p_query_column_id=>2
,p_column_alias=>'UNIT_PRICE'
,p_column_display_sequence=>20
,p_column_heading=>'Unit Price'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(561523369554098020)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>30
,p_column_heading=>'Quantity'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(561523410103098021)
,p_query_column_id=>4
,p_column_alias=>'EXTENDED_PRICE'
,p_column_display_sequence=>40
,p_column_heading=>'Extended Price'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(561523611978098023)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(561523771709098024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(561523611978098023)
,p_button_name=>'back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to the orders'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(561523557165098022)
,p_name=>'P14_ORDER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(561523073047098017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_imp_page.create_page(
 p_id=>26
,p_name=>'Reports'
,p_alias=>'REPORTS'
,p_step_title=>'Reports'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(778366989379687501)
,p_plug_name=>'Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--iconsRounded:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_list_id=>wwv_flow_imp.id(109057820607979085467)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Order Details'
,p_alias=>'ORDER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Order Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'900'
,p_dialog_max_width=>'1200'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(95665079077371703)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109233608746081689879)
,p_plug_name=>'Order #&P29_ORDER_ID'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ORDERS'
,p_query_order_by=>'ORDER_ID'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109233624979154689893)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109233630786902692340)
,p_plug_name=>'Items for order #&P29_ORDER_ID'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select oi.order_item_id, oi.order_id, oi.product_id, oi.unit_price, oi.quantity,',
'    (oi.unit_price * oi.quantity) extended_price',
'from ORDER_ITEMS oi, product_info pi',
'where oi.order_id = :P29_ORDER_ID',
'and oi.product_id = pi.product_id'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P29_ORDER_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P29_ORDER_ID'
,p_prn_page_header=>'Order Details'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(95664814517371701)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109233631906495692342)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109233632461191692343)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109233633442038692344)
,p_name=>'ORDER_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109233634482809692345)
,p_name=>'ORDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P29_ORDER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109233635495997692345)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Product Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(109079739685380182708)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109233636472512692346)
,p_name=>'UNIT_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unit Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109233637432159692346)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(109233631146890692341)
,p_internal_uid=>109233631146890692341
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(109233631546571692342)
,p_interactive_grid_id=>wwv_flow_imp.id(109233631146890692341)
,p_static_id=>'1092336316'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(109233631754340692342)
,p_report_id=>wwv_flow_imp.id(109233631546571692342)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(98673238330440742)
,p_view_id=>wwv_flow_imp.id(109233631754340692342)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(95664814517371701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109233632801480692343)
,p_view_id=>wwv_flow_imp.id(109233631754340692342)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(109233632461191692343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109233633814118692344)
,p_view_id=>wwv_flow_imp.id(109233631754340692342)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(109233633442038692344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109233634890388692345)
,p_view_id=>wwv_flow_imp.id(109233631754340692342)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(109233634482809692345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109233635870324692346)
,p_view_id=>wwv_flow_imp.id(109233631754340692342)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(109233635495997692345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109233636862780692346)
,p_view_id=>wwv_flow_imp.id(109233631754340692342)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(109233636472512692346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109233637846856692347)
,p_view_id=>wwv_flow_imp.id(109233631754340692342)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(109233637432159692346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109233615858665689886)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(95665079077371703)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109233617249360689887)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(95665079077371703)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P29_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109233616480272689886)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(95665079077371703)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P29_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109233616892060689886)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(95665079077371703)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P29_ORDER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109233617504693689887)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_button_name=>'GET_PREVIOUS_ORDER_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_condition=>'P29_ORDER_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109233617637847689887)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_button_name=>'GET_NEXT_ORDER_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_condition=>'P29_ORDER_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(109233618412573689888)
,p_branch_action=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.::P29_ORDER_ID:&P29_ORDER_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(109233617637847689887)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(109233618830714689888)
,p_branch_action=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.::P29_ORDER_ID:&P29_ORDER_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(109233617504693689887)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(109233619101080689888)
,p_branch_action=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109216096465125400127)
,p_name=>'P29_CUSTOMER_INFO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_prompt=>'Customer'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_escape.html(customer_first_name) || '' '' || apex_escape.html(customer_last_name) || ''<br/>'' || apex_escape.html(customer_street_address1) || decode(customer_street_address2, null, null, ''<br/>'' || apex_escape.html(customer_street_address2)'
||'||''</br>'' || apex_escape.html(customer_city) || '', '' || apex_escape.html(customer_state) || '' ''|| apex_escape.html(customer_postal_code)) customer',
'from customers',
'where customerid = :P29_CUSTOMER_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109233609173853689879)
,p_name=>'P29_ORDER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_item_source_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_source=>'ORDER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109233609539541689880)
,p_name=>'P29_ORDER_ID_PREV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109233609911649689880)
,p_name=>'P29_ORDER_ID_NEXT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109233610380202689881)
,p_name=>'P29_CUSTOMER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_item_source_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_prompt=>'Customer Id'
,p_source=>'CUSTOMER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CUSTOMERS.CUSTOMER_FIRST_NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109233611021316689881)
,p_name=>'P29_ORDER_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_item_source_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_prompt=>'Order Total'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'ORDER_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109233611405920689882)
,p_name=>'P29_ORDER_TIME'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_item_source_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_prompt=>'Order Date'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_source=>'ORDER_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109233612276655689883)
,p_name=>'P29_USERNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_item_source_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_prompt=>'Sales REP'
,p_source=>'USERNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct username d, username r from orders',
'union',
'select upper(:APP_USER) d, upper(:APP_USER) r from dual',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose Sales REP'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109233612669249689883)
,p_name=>'P29_TAGS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_item_source_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_prompt=>'Tags'
,p_source=>'TAGS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>1000
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109233615506964689885)
,p_name=>'P29_ORDER_ID_COUNT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(109233608746081689879)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(109233611957887689882)
,p_validation_name=>'P29_ORDER_TIME must be timestamp'
,p_validation_sequence=>30
,p_validation=>'P29_ORDER_TIME'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(109233611405920689882)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109233620084241689889)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(109233608746081689879)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on ORDERS'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>109233620084241689889
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109233638478132692347)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(109233630786902692340)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Order Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>109233638478132692347
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109233619691189689889)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(109233608746081689879)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on ORDERS'
,p_attribute_01=>'P29_ORDER_ID_NEXT'
,p_attribute_02=>'P29_ORDER_ID_PREV'
,p_attribute_03=>'P29_ORDER_ID_COUNT'
,p_internal_uid=>109233619691189689889
);
end;
/
prompt --application/pages/page_00060
begin
wwv_flow_imp_page.create_page(
 p_id=>60
,p_name=>'Application Segments'
,p_alias=>'APPLICATION-SEGMENTS'
,p_step_title=>'Application Segments'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'20'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1292202063282547337)
,p_plug_name=>'Application Segments'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf= 1 then 0 when level = 1 then 1 else -1 end',
'as status, level, segmenttitle as title, NULL as icon, segmentid as value, ''View'' as',
'tooltip,',
'apex_util.prepare_url(''f?p=''||:APP_ID||'':61:''||:APP_SESSION||''::NO::P61_SEGMENTID:''||segmentid) As link',
'from xbiz_app_segments',
'start with segmentparent = 0',
'connect by prior segmentid = segmentparent',
'order siblings by segmentid'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'default_icon_css_class', 'icon-tree-folder',
  'hierarchy_level_column', 'LEVEL',
  'icon_css_class_column', 'ICON',
  'icon_type_css_class', 'a-Icon',
  'link_column', 'LINK',
  'node_label_column', 'TITLE',
  'node_status_column', 'STATUS',
  'node_value_column', 'VALUE',
  'tree_hierarchy', 'LEVEL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1352579032744311670)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1352577712873311669)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1352579032744311670)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New Segment'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&APP_SESSION.::&DEBUG.:61::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1352578061046311670)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1292202063282547337)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1292202196070547338)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1352579032744311670)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1292202249042547339)
,p_event_id=>wwv_flow_imp.id(1292202196070547338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1292202063282547337)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00061
begin
wwv_flow_imp_page.create_page(
 p_id=>61
,p_name=>'Application Segments entry form'
,p_alias=>'APPLICATION-SEGMENTS-ENTRY-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Application Segments entry form'
,p_autocomplete_on_off=>'OFF'
,p_css_file_urls=>'#WORKSPACE_FILES#apex.css'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1352565506897311658)
,p_plug_name=>'Application Segments entry form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'XBIZ_APP_SEGMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1352570042630311663)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1352570492129311663)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1352570042630311663)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1352571835205311664)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1352570042630311663)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P61_SEGMENTID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1352572238229311664)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1352570042630311663)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P61_SEGMENTID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1352572629138311665)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1352570042630311663)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P61_SEGMENTID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352565847600311659)
,p_name=>'P61_SEGMENTID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_item_source_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Segmentid'
,p_source=>'SEGMENTID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352566200259311660)
,p_name=>'P61_SEGMENTTITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_item_source_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_prompt=>'Segment title'
,p_source=>'SEGMENTTITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352566662799311660)
,p_name=>'P61_SEGMENTPARENT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_item_source_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_item_default=>'0'
,p_prompt=>'Segment parent'
,p_source=>'SEGMENTPARENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT segmentTitle| |'' ('' | |segmentType| |'')'' d, segmentID r',
'FROM xbiz_app_segments',
'WHERE segmentType != ''Item''',
'ORDER BY pageID, segmentID, segmentParent'))
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352567005006311660)
,p_name=>'P61_SEGMENTTYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_item_source_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_prompt=>'Segment type'
,p_source=>'SEGMENTTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SEGMENT TYPE'
,p_lov=>'.'||wwv_flow_imp.id(1352019733193586932)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_value=>'Choose Segment Type'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352567420122311661)
,p_name=>'P61_PAGEID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_item_source_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_prompt=>'Page'
,p_source=>'PAGEID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1352567854704311661)
,p_name=>'P61_ITEMROLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_item_source_plug_id=>wwv_flow_imp.id(1352565506897311658)
,p_prompt=>'Item role'
,p_source=>'ITEMROLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ITEM ROLE'
,p_lov=>'.'||wwv_flow_imp.id(1352189196826592248)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose Item Role'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1352570599960311663)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1352570492129311663)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1352571375369311664)
,p_event_id=>wwv_flow_imp.id(1352570599960311663)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1352573413767311665)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1352565506897311658)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Application Segments entry form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1352573413767311665
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1352573855362311666)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>1352573855362311666
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1352573064478311665)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1352565506897311658)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Application Segments entry form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1352573064478311665
);
end;
/
prompt --application/pages/page_00062
begin
wwv_flow_imp_page.create_page(
 p_id=>62
,p_name=>'User Groups'
,p_alias=>'USER-GROUPS'
,p_step_title=>'User Groups'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function pageItemName(selectedNode)',
'{',
'    $s(''P62_SELECTED_NODE'', selectedNode);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1292202372847547340)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1366551124764528867)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1377119067818990101)
,p_plug_name=>'Group''s Privileges'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P62_EXISTINGNEW'
,p_plug_display_when_cond2=>'EXISTING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1377119168513990102)
,p_plug_name=>'Group: &62_GROUPTITLE1.'
,p_parent_plug_id=>wwv_flow_imp.id(1377119067818990101)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0 when level = 1 then 1 else -1 end as status,',
'level,',
'segmenttitle as title,',
'NULL as icon,',
'segmentid as value,',
'''View Right'' as tooltip,',
'''javascript: pageItemName(''||apex_escape.js_literal(segmentid)||'')'' as link',
'from xbiz_app_segments',
'start with segmentparent = 0',
'connect by prior segmentid = segmentparent',
'order siblings by segmentid'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'default_icon_css_class', 'icon-tree-folder',
  'hierarchy_level_column', 'LEVEL',
  'icon_css_class_column', 'ICON',
  'icon_type_css_class', 'a-Icon',
  'link_column', 'LINK',
  'node_label_column', 'TITLE',
  'node_status_column', 'STATUS',
  'node_value_column', 'VALUE',
  'selected_node_page_item', 'P62_SELECTED_NODE',
  'tree_hierarchy', 'LEVEL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1377119243441990103)
,p_name=>'Selected Segments'
,p_parent_plug_id=>wwv_flow_imp.id(1377119067818990101)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT s.segmentTitle,g.allow_access',
'FROM xbiz_app_segments s, xbiz_groups_detail g',
'WHERE s.segmentID =:P62_SELECTED_NODE AND s.segmentID=g.segmentID AND g.groupID =:P62_GROUPID1'))
,p_display_when_condition=>'P62_EXISTINGNEW'
,p_display_when_cond2=>'EXISTING'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P62_SELECTED_NODE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1377119469166990105)
,p_query_column_id=>1
,p_column_alias=>'SEGMENTTITLE'
,p_column_display_sequence=>10
,p_column_heading=>'Segmenttitle'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1377119519490990106)
,p_query_column_id=>2
,p_column_alias=>'ALLOW_ACCESS'
,p_column_display_sequence=>20
,p_column_heading=>'Allow Access'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1292202908129547346)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(1292202372847547340)
,p_button_name=>'ALLOW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Group - Allow All'
,p_button_position=>'CREATE'
,p_button_condition=>'P62_EXISTINGNEW'
,p_button_condition2=>'NEW'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1292203064110547347)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(1292202372847547340)
,p_button_name=>'DISALLOW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Grouo - Disallow All'
,p_button_position=>'CREATE'
,p_button_condition=>'P62_EXISTINGNEW'
,p_button_condition2=>'NEW'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1292203117979547348)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(1292202372847547340)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete Group'
,p_button_position=>'CREATE'
,p_button_condition=>'P62_EXISTINGNEW'
,p_button_condition2=>'EXISTING'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1377119687016990107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1377119243441990103)
,p_button_name=>'ALLOW_REVOKE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Allow / Revoke'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1292202451118547341)
,p_name=>'P62_EXISTINGNEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1292202372847547340)
,p_item_default=>'EXISTING'
,p_prompt=>'Action:'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:New;NEW,Existing;EXISTING'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'number_of_columns', '2',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1292202561019547342)
,p_name=>'P62_GROUPID1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1292202372847547340)
,p_prompt=>'Group:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct XBIZ_GROUPS_MASTER.GROUPTITLE as D,',
'    XBIZ_GROUPS_MASTER.GROUPID as R ',
' from XBIZ_GROUPS_MASTER XBIZ_GROUPS_MASTER',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose Group'
,p_cHeight=>1
,p_display_when=>'P62_EXISTINGNEW'
,p_display_when2=>'EXISTING'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1292202604286547343)
,p_name=>'P62_GROUPTITLE1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1292202372847547340)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT groupTitle',
'FROM xbiz_groups_master',
'WHERE groupID =:P62_GROUPID1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1292202751147547344)
,p_name=>'P62_GROUPID2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1292202372847547340)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Group ID:'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(groupid)+1',
'from xbiz_groups_master'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P62_EXISTINGNEW'
,p_display_when2=>'NEW'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1292202884082547345)
,p_name=>'P62_GROUPTITLE2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1292202372847547340)
,p_prompt=>'Title:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_display_when=>'P62_EXISTINGNEW'
,p_display_when2=>'NEW'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1377119300193990104)
,p_name=>'P62_SELECTED_NODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1377119168513990102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1377119838051990109)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P62_SELECTED_NODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1377119988595990110)
,p_event_id=>wwv_flow_imp.id(1377119838051990109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1377119243441990103)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1292203371604547350)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Group'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from xbiz_groups_detail where groupid=:P62_GROUPID1;',
'delete from xbiz_groups_master where groupid=:P62_GROUPID1;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to Delete'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1292203117979547348)
,p_process_when=>'P62_GROUPID1'
,p_process_when_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_process_success_message=>'Deleted Successfully'
,p_internal_uid=>1292203371604547350
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1377119792562990108)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Allow Access'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    vrecordexist number :=0;',
'    vallow varchar2(1);',
'    vsegmenttype varchar2(4);',
'    vpageid number;',
'    vitemrole varchar2(10);',
'begin',
'    select count(*) into vrecordexist from xbiz_groups_detail',
'    where groupid=:P62_GROUPID1 and',
'        segmentid=:P62_SELECTED_NODE;',
'    if vrecordexist = 1 then',
'    select allow_access into vallow from xbiz_groups_detail',
'    where groupid=:P62_GROUPID1 and',
'    segmentid=:P62_SELECTED_NODE;',
'    if vallow=''Y'' then',
'    vallow:=''N'';',
'    else',
'    vallow:=''Y'';',
'    end if;',
'    update xbiz_groups_detail set allow_access=vallow',
'    where groupid=:P62_GROUPID1 and',
'    segmentid=:P62_SELECTED_NODE;',
'    commit;',
'    else',
'    select segmenttype,pageid,itemrole',
'    into vsegmenttype, vpageid, vitemrole',
'    from xbiz_app_segments',
'    where segmentid=:P62_SELECTED_NODE;',
'    insert into xbiz_groups_detail values',
'    (:P62_GROUPID1,:P62_SELECTED_NODE,null,vsegmenttype, vpageid, vitemrole,''N'');',
'    commit;',
'    end if;',
'    end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1377119687016990107)
,p_internal_uid=>1377119792562990108
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1292203231127547349)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create New Group'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'vsegmentid number := 0;',
'vsegmentparent number;',
'vsegmenttype varchar2(4);',
'vpageid number := 0;',
'vitemrole varchar2(10);',
'vallow varchar2(1);',
'vmasterrow number :=0;',
'cursor segments_cur is',
'select * from xbiz_app_segments order by segmentid;',
'',
'segments_rec segments_cur%rowtype;',
'begin',
'    if :request = ''ALLOW'' then',
'        vallow := ''Y'';',
'    else ',
'        vallow := ''N'';',
'    end if;',
'    for segments_rec in segments_cur loop ',
'        vsegmentid := segments_rec.segmentid;',
'        vsegmentparent := segments_rec.segmentparent;',
'        vsegmenttype := segments_rec.segmenttype;',
'        vpageid := segments_rec.pageid;',
'        vitemrole := segments_rec.itemrole;',
'        if vmasterrow = 0 then ',
'        insert into xbiz_groups_master values (:P62_GROUPID2, :P62_GROUPTITLE2);',
'        commit;',
'        vmasterrow :=1;',
'        end if;',
'        insert into xbiz_groups_detail values(:P62_GROUPID2, vsegmentid, vsegmentparent, vsegmenttype,vpageid,vitemrole,vallow);',
'        commit;',
'        end loop;',
'        end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to Create Group'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'ALLOW, DISALLOW'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Created Group'
,p_internal_uid=>1292203231127547349
);
end;
/
prompt --application/pages/page_00063
begin
wwv_flow_imp_page.create_page(
 p_id=>63
,p_name=>'Application Users'
,p_alias=>'APPLICATION-USERS'
,p_step_title=>'Application Users'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1400965942847094139)
,p_plug_name=>'Application Users'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "U"."RECID", "U"."USERID", "G"."GROUPTITLE",',
'"U". "PASSWORD", "U". "ADMIN"',
'from "APP_USERS" "U", "XBIZ_GROUPS_MASTER" "G"',
'where "U"."GROUPID"="G"."GROUPID"'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Application Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1400966047539094139)
,p_name=>'Application Users'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,:P64_RECID,P64_USERID2:\#RECID#\,#USERID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'INEEDGAMESSS@GMAIL.COM'
,p_internal_uid=>1400966047539094139
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1400966790239094140)
,p_db_column_name=>'RECID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Recid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1400967125503094141)
,p_db_column_name=>'USERID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Userid'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1400967935145094141)
,p_db_column_name=>'PASSWORD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Password'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1400968314502094141)
,p_db_column_name=>'ADMIN'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Admin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1377120178919990112)
,p_db_column_name=>'GROUPTITLE'
,p_display_order=>15
,p_column_identifier=>'F'
,p_column_label=>'Grouptitle'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1400716739274400547)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'14007168'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'RECID:USERID:PASSWORD:ADMIN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1400970155426094143)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1400968889146094142)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1400965942847094139)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create New User'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&APP_SESSION.::&DEBUG.:64::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1400969146248094142)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1400965942847094139)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1400969602012094142)
,p_event_id=>wwv_flow_imp.id(1400969146248094142)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1400965942847094139)
);
end;
/
prompt --application/pages/page_00064
begin
wwv_flow_imp_page.create_page(
 p_id=>64
,p_name=>'User Form'
,p_alias=>'USER-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'User Form'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'300'
,p_dialog_width=>'800'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1400957466473094130)
,p_plug_name=>'User Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'APP_USERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1400961538833094135)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1400961924014094136)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1400961538833094135)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1400963369309094137)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1400961538833094135)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P64_RECID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1400963725414094137)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1400961538833094135)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P64_RECID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1400964161050094138)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1400961538833094135)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P64_RECID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1377120270523990113)
,p_name=>'P64_USERID2'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>User ID</b>'
,p_source=>'USERID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P64_RECID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1400957714100094130)
,p_name=>'P64_RECID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_item_source_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Recid'
,p_source=>'RECID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1400958173051094131)
,p_name=>'P64_USERID'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_item_source_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_prompt=>'<b>User ID</b>'
,p_placeholder=>'ENTER in UPPERCASE'
,p_source=>'USERID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_display_when=>'P64_RECID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1400958537847094132)
,p_name=>'P64_GROUPID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_item_source_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_prompt=>'<b>Group:</b>'
,p_source=>'GROUPID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'XBIZ_GROUPS_MASTER.GROUPTITLE'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose Group'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1400959211537094133)
,p_name=>'P64_PASSWORD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_item_source_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_source=>'PASSWORD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1400959660459094133)
,p_name=>'P64_ADMIN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_item_source_plug_id=>wwv_flow_imp.id(1400957466473094130)
,p_item_default=>'N'
,p_prompt=>'<b>Admin</b>'
,p_source=>'ADMIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1400962066402094136)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1400961924014094136)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1400962849156094137)
,p_event_id=>wwv_flow_imp.id(1400962066402094136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1400964935082094138)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1400957466473094130)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form User Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1400964935082094138
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1400965320138094138)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>1400965320138094138
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1400964598885094138)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1400957466473094130)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form User Form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>1400964598885094138
);
end;
/
prompt --application/pages/page_00065
begin
wwv_flow_imp_page.create_page(
 p_id=>65
,p_name=>'Reset Password'
,p_alias=>'RESET-PASSWORD1'
,p_step_title=>'Reset Password'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1377120346199990114)
,p_plug_name=>'Reset Password'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1406764124061569248)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1377120817132990119)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(1377120346199990114)
,p_button_name=>'RESET_PW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Password'
,p_button_position=>'CHANGE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1377120437194990115)
,p_name=>'P65_USERID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1377120346199990114)
,p_prompt=>'User ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select userid d, userid r from app_users'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose User'
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from app_users ',
'where upper(userid) = upper(:APP_USER)',
'AND admin = ''Y'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1377120599240990116)
,p_name=>'P65_USERID2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1377120346199990114)
,p_item_default=>'&APP_USER.'
,p_prompt=>'User ID'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from app_users',
'where upper(userid) = upper(:APP_USER)',
'AND admin != ''Y'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1377120689685990117)
,p_name=>'P65_PASSWORD1'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1377120346199990114)
,p_prompt=>'New Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1377120707852990118)
,p_name=>'P65_PASSWORD2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1377120346199990114)
,p_prompt=>'Confirm Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1377120936026990120)
,p_validation_name=>'Check user id'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    verrortext varchar2(200);',
'begin',
'    if :P65_USERID is null and :P65_USERID2 is null then',
'        verrortext :=''No user selected for the reset password process'';',
'    end if;',
'    return rtrim(verrortext);',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(1377120817132990119)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1377121069400990121)
,p_validation_name=>'Match Password'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'if :P65_PASSWORD1 = :P65_PASSWORD2 then',
'return true;',
'else',
'return false;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Password does''nt match'
,p_when_button_pressed=>wwv_flow_imp.id(1377120817132990119)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1377121219742990123)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Password'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P65_USERID is not null then',
'update app_users set password = hash_password(:P65_USERID,',
':P65_PASSWORD1) where upper(userID) = upper(:P65_USERID);',
'else',
'update app_users set password = hash_password(:P65_USERID2,',
':P65_PASSWORD1) where upper(userID) = upper(:P65_USERID2);',
'end if;',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Could''nt change the password'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1377120817132990119)
,p_process_success_message=>'Password Reset Successful'
,p_internal_uid=>1377121219742990123
);
end;
/
prompt --application/pages/page_00110
begin
wwv_flow_imp_page.create_page(
 p_id=>110
,p_name=>'Purchases'
,p_alias=>'PURCHASES'
,p_step_title=>'Purchases'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(1430495388443018888)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(799364349500644063)
,p_plug_name=>'Purchases'
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lpad(to_char(po.pur_ord_id),4,''0000'') purchase_number, po.pur_ord_id,',
'        po.invoice_id,',
'       to_char(po.pur_ord_date,''Month YYYY'') purchase_month,',
'       trunc(po.pur_ord_date) order_date,',
'       po.purchase_total,',
'       s.supp_name supplier_name,',
'       (select count(*) from purchase_items pi',
'        where pi.pur_ord_id = po.pur_ord_id and pi.item_qty != 0) purchase_items',
'from  purchase_order po,  suppliers s',
'where po.supp_id = s.supp_id',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Purchases'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(799364451446644063)
,p_name=>'Purchases'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'PUR_ORD_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:114:&APP_SESSION.::&DEBUG.:RP:P114_PUR_ORD_ID:\#PUR_ORD_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'INEEDGAMESSS@GMAIL.COM'
,p_internal_uid=>799364451446644063
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(778367920424687511)
,p_db_column_name=>'ORDER_DATE'
,p_display_order=>40
,p_column_identifier=>'L'
,p_column_label=>'Order Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(778368501388687517)
,p_db_column_name=>'PURCHASE_NUMBER'
,p_display_order=>50
,p_column_identifier=>'R'
,p_column_label=>'Purchase#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(778368626817687518)
,p_db_column_name=>'PUR_ORD_ID'
,p_display_order=>60
,p_column_identifier=>'S'
,p_column_label=>'Pur Ord Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(778368716541687519)
,p_db_column_name=>'INVOICE_ID'
,p_display_order=>70
,p_column_identifier=>'T'
,p_column_label=>'Invoice#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(778368863531687520)
,p_db_column_name=>'PURCHASE_MONTH'
,p_display_order=>80
,p_column_identifier=>'U'
,p_column_label=>'Purchase Month'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(778368946079687521)
,p_db_column_name=>'PURCHASE_TOTAL'
,p_display_order=>90
,p_column_identifier=>'V'
,p_column_label=>'Purchase Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(778369037999687522)
,p_db_column_name=>'SUPPLIER_NAME'
,p_display_order=>100
,p_column_identifier=>'W'
,p_column_label=>'Supplier Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(778369173057687523)
,p_db_column_name=>'PURCHASE_ITEMS'
,p_display_order=>110
,p_column_identifier=>'X'
,p_column_label=>'Purchase Items'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(800253487677953724)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'8002535'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PURCHASE_NUMBER:INVOICE_ID:PURCHASE_MONTH:ORDER_DATE:PURCHASE_ITEMS:SUPPLIER_NAME:PURCHASE_TOTAL:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(799368847046644067)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(799368408439644067)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(799364349500644063)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:222::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(851485794640478731)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(799364349500644063)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(851485813899478732)
,p_event_id=>wwv_flow_imp.id(851485794640478731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(799364349500644063)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00111
begin
wwv_flow_imp_page.create_page(
 p_id=>111
,p_name=>'Customers'
,p_alias=>'CUSTOMERS'
,p_step_title=>'Customers'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109092922653430734481)
,p_plug_name=>'Customers'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select customerid, ',
'        customer_last_name || '', '' || customer_first_name customer_name, ',
'        customer_street_address1 || decode(customer_street_address2, null, null, '', '' || customer_street_address2) customer_address,',
'        customer_city, customer_state, customer_postal_code',
'from customers'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Customers'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(107713913457986689431)
,p_name=>'CUSTOMER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>402
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(107713913532784689432)
,p_name=>'CUSTOMER_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1602
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109092923971000734483)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP,7:P7_CUSTOMERID:\&CUSTOMERID.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109092924987243734484)
,p_name=>'CUSTOMERID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMERID'
,p_data_type=>'NUMBER'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Customer ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109092929921273734490)
,p_name=>'CUSTOMER_CITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_CITY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'City'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109092930996549734491)
,p_name=>'CUSTOMER_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_STATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'State'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(109092931921572734492)
,p_name=>'CUSTOMER_POSTAL_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CUSTOMER_POSTAL_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Postal Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(109092923161231734481)
,p_internal_uid=>109092923161231734481
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(109092923500984734482)
,p_interactive_grid_id=>wwv_flow_imp.id(109092923161231734481)
,p_static_id=>'1090929236'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(109092923746697734482)
,p_report_id=>wwv_flow_imp.id(109092923500984734482)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109092924379601734483)
,p_view_id=>wwv_flow_imp.id(109092923746697734482)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(109092923971000734483)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109092925323031734485)
,p_view_id=>wwv_flow_imp.id(109092923746697734482)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(109092924987243734484)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109092930301908734490)
,p_view_id=>wwv_flow_imp.id(109092923746697734482)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(109092929921273734490)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109092931330899734491)
,p_view_id=>wwv_flow_imp.id(109092923746697734482)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(109092930996549734491)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109092932329317734492)
,p_view_id=>wwv_flow_imp.id(109092923746697734482)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(109092931921572734492)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109095356751338446940)
,p_view_id=>wwv_flow_imp.id(109092923746697734482)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(107713913457986689431)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(109095357676146446944)
,p_view_id=>wwv_flow_imp.id(109092923746697734482)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(107713913532784689432)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109092940215365734500)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109092938911559734499)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109092940215365734500)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109092939252429734499)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(109092922653430734481)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109092939780325734500)
,p_event_id=>wwv_flow_imp.id(109092939252429734499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109092922653430734481)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(107713913688706689433)
,p_name=>'Edit Report - Dialog Closed_1'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(109092940215365734500)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(107713913730131689434)
,p_event_id=>wwv_flow_imp.id(107713913688706689433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109092922653430734481)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00112
begin
wwv_flow_imp_page.create_page(
 p_id=>112
,p_name=>'Products'
,p_alias=>'PRODUCTS'
,p_step_title=>'Products'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109130290269992924394)
,p_plug_name=>'Products'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p.product_id, ',
'    p.product_name, ',
'    p.product_info, ',
'    p.category,',
'    DECODE(p.availability, ''Y'', ''Yes'', ''N'', ''No'') AS availability, ',
'    p.list_price,',
'    (SELECT SUM(quantity) ',
'     FROM order_items ',
'     WHERE product_id = p.product_id) AS units,',
'    (SELECT SUM(quantity * p.list_price) ',
'     FROM order_items ',
'     WHERE product_id = p.product_id) AS sales,',
'    (SELECT COUNT(o.customer_id) ',
'     FROM orders o, order_items t',
'     WHERE o.order_id = t.order_id ',
'       AND t.product_id = p.product_id ',
'     GROUP BY p.product_id) AS customers,',
'    (SELECT MAX(o.order_time) ',
'     FROM orders o, order_items i ',
'     WHERE o.order_id = i.order_id ',
'       AND i.product_id = p.product_id) AS last_date_sold, ',
'    p.product_id AS img,',
'    apex_util.prepare_url(',
'        p_url => ''f?p='' || :app_id || '':6:'' || :app_session || ''::::P6_PRODUCT_ID:'' || p.product_id',
'    ) AS icon_link,',
'    DECODE(',
'        NVL(dbms_lob.getlength(p.product_image), 0), ',
'        0, NULL,',
'        ''<img alt="'' || p.product_name || ',
'        ''" title="'' || p.product_name || ',
'        ''" style="border: 4px solid #CCC; -moz-border-radius: 4px; -webkit-border-radius: 4px;" '' || ',
'        ''src="'' || apex_util.get_blob_file_src(''P6_PRODUCT_IMAGE'', p.product_id) || ',
'        ''" height="75" width="75" />''',
'    ) AS detail_img,',
'    DECODE(',
'        NVL(dbms_lob.getlength(p.product_image), 0), ',
'        0, NULL,',
'        apex_util.get_blob_file_src(''P6_PRODUCT_IMAGE'', p.product_id)',
'    ) AS detail_img_no_style',
'FROM product_info p;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Products'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(109130290333122924394)
,p_name=>'Products'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:113:&APP_SESSION.::&DEBUG.:RP:P113_PRODUCT_ID:\#PRODUCT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'INEEDGAMESSS@GMAIL.COM'
,p_internal_uid=>109130290333122924394
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109130291048963924395)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Product ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109130291498781924396)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109130291819833924396)
,p_db_column_name=>'PRODUCT_INFO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109130292273338924396)
,p_db_column_name=>'CATEGORY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109130292663256924397)
,p_db_column_name=>'AVAILABILITY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Availability'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(109130293029747924397)
,p_db_column_name=>'LIST_PRICE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107713914012420689437)
,p_db_column_name=>'UNITS'
,p_display_order=>16
,p_column_identifier=>'K'
,p_column_label=>'Units'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107713914174149689438)
,p_db_column_name=>'SALES'
,p_display_order=>26
,p_column_identifier=>'L'
,p_column_label=>'Sales'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107713914279455689439)
,p_db_column_name=>'CUSTOMERS'
,p_display_order=>36
,p_column_identifier=>'M'
,p_column_label=>'Customers'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107713914373805689440)
,p_db_column_name=>'LAST_DATE_SOLD'
,p_display_order=>46
,p_column_identifier=>'N'
,p_column_label=>'Last Sold'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107713914476357689441)
,p_db_column_name=>'IMG'
,p_display_order=>56
,p_column_identifier=>'O'
,p_column_label=>'Img'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107713914589687689442)
,p_db_column_name=>'ICON_LINK'
,p_display_order=>66
,p_column_identifier=>'P'
,p_column_label=>'Icon Link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107713914648280689443)
,p_db_column_name=>'DETAIL_IMG'
,p_display_order=>76
,p_column_identifier=>'Q'
,p_column_label=>'Detail Img'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(107713914746408689444)
,p_db_column_name=>'DETAIL_IMG_NO_STYLE'
,p_display_order=>86
,p_column_identifier=>'R'
,p_column_label=>'Detail Img No Style'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(109130310243375925359)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1091303103'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_ID:PRODUCT_NAME:CATEGORY:AVAILABILITY:LIST_PRICE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109130296340216924399)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109130295144952924398)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109130290269992924394)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:113:&APP_SESSION.::&DEBUG.:113::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109130295464864924399)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(109130290269992924394)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109130295919744924399)
,p_event_id=>wwv_flow_imp.id(109130295464864924399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(109130290269992924394)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00113
begin
wwv_flow_imp_page.create_page(
 p_id=>113
,p_name=>'Products Details'
,p_alias=>'PRODUCTS-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Products Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109130278048442924384)
,p_plug_name=>'Products Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PRODUCT_INFO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(109130285829758924391)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109130286238718924391)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(109130285829758924391)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109130287623623924392)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(109130285829758924391)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P113_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109130288090787924393)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(109130285829758924391)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P113_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(109130288468562924393)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(109130285829758924391)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P113_PRODUCT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109130278472365924385)
,p_name=>'P113_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_item_source_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Id'
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109130278858188924386)
,p_name=>'P113_PRODUCT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_item_source_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109130279258897924386)
,p_name=>'P113_PRODUCT_INFO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_item_source_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Info'
,p_source=>'PRODUCT_INFO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>2000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109130279680486924386)
,p_name=>'P113_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_item_source_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109130280086612924387)
,p_name=>'P113_AVAILABILITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_item_source_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Availability'
,p_source=>'AVAILABILITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>2
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109130280419159924387)
,p_name=>'P113_LIST_PRICE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_item_source_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'List Price'
,p_source=>'LIST_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109130280809505924387)
,p_name=>'P113_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_item_source_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mimetype'
,p_source=>'MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109130281216238924388)
,p_name=>'P113_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_item_source_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Filename'
,p_source=>'FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>400
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109130281628705924388)
,p_name=>'P113_IMAGE_LAST_UPDATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_item_source_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Last Update'
,p_source=>'IMAGE_LAST_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(109130282488620924389)
,p_name=>'P113_PRODUCT_IMAGE'
,p_source_data_type=>'BLOB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_item_source_plug_id=>wwv_flow_imp.id(109130278048442924384)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Image'
,p_source=>'PRODUCT_IMAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'purge_file_at', 'SESSION',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(109130282101346924388)
,p_validation_name=>'P113_IMAGE_LAST_UPDATE must be timestamp'
,p_validation_sequence=>80
,p_validation=>'P113_IMAGE_LAST_UPDATE'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(109130281628705924388)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(109130286327516924391)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(109130286238718924391)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(109130287188187924392)
,p_event_id=>wwv_flow_imp.id(109130286327516924391)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109130289221381924393)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(109130278048442924384)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Products Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>109130289221381924393
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109130289682284924394)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>109130289682284924394
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(109130288837191924393)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(109130278048442924384)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Products Details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>109130288837191924393
);
end;
/
prompt --application/pages/page_00114
begin
wwv_flow_imp_page.create_page(
 p_id=>114
,p_name=>'Purchase Details'
,p_alias=>'PURCHASE-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Purchase Details'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'800'
,p_dialog_max_width=>'1000'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(778369693121687528)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(799351450976644051)
,p_plug_name=>'Purchase #&P114_PUR_ORD_ID.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PURCHASE_ORDER'
,p_query_order_by=>'PUR_ORD_ID'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(799369409718644068)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(800706388749646691)
,p_plug_name=>'Items for purchase #&P114_PUR_ORD_ID.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pi.PUR_ITEM_ID,',
'       pi.PUR_ORD_ID,',
'       pi.PRODUCT_ID,',
'       pi.PRODUCT_NAME,',
'       pi.PRICE MRP,',
'       (pi.price*pi.COMMISSION/100)commission,',
'       (pi.price-(pi.price*pi.commission/100))purchase_price,',
'       pi.item_qty,',
'       pi.item_qty*(pi.price-(pi.price*pi.commission/100))extended_price',
'  from PURCHASE_ITEMS pi',
' where pi.PUR_ORD_ID = :P114_PUR_ORD_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P114_PUR_ORD_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P114_PUR_ORD_ID'
,p_prn_page_header=>'Purchase Details'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(778369325726687525)
,p_name=>'MRP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MRP'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mrp'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(778369444128687526)
,p_name=>'PURCHASE_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Purchase Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(778369552052687527)
,p_name=>'EXTENDED_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXTENDED_PRICE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Extended Price'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(800707556422646693)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(800708081904646694)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(800709084303646695)
,p_name=>'PUR_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUR_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(800710017057646696)
,p_name=>'PUR_ORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUR_ORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P114_PUR_ORD_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(800711085479646696)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Product Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(800712063720646697)
,p_name=>'PRODUCT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(800714093465646699)
,p_name=>'COMMISSION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMMISSION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Commission'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(800714995687646699)
,p_name=>'ITEM_QTY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_QTY'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Item Qty'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(800706701342646692)
,p_internal_uid=>800706701342646692
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(800707196850646692)
,p_interactive_grid_id=>wwv_flow_imp.id(800706701342646692)
,p_static_id=>'8007072'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(800707370085646693)
,p_report_id=>wwv_flow_imp.id(800707196850646692)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(800708466634646694)
,p_view_id=>wwv_flow_imp.id(800707370085646693)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(800708081904646694)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(800709474401646695)
,p_view_id=>wwv_flow_imp.id(800707370085646693)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(800709084303646695)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(800710409682646696)
,p_view_id=>wwv_flow_imp.id(800707370085646693)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(800710017057646696)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(800711471582646697)
,p_view_id=>wwv_flow_imp.id(800707370085646693)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(800711085479646696)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(800712499321646697)
,p_view_id=>wwv_flow_imp.id(800707370085646693)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(800712063720646697)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(800714498379646699)
,p_view_id=>wwv_flow_imp.id(800707370085646693)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(800714093465646699)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(800715360923646700)
,p_view_id=>wwv_flow_imp.id(800707370085646693)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(800714995687646699)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(816850075963202731)
,p_view_id=>wwv_flow_imp.id(800707370085646693)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(778369325726687525)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(816850976085202733)
,p_view_id=>wwv_flow_imp.id(800707370085646693)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(778369444128687526)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(816851808480202735)
,p_view_id=>wwv_flow_imp.id(800707370085646693)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(778369552052687527)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(799359578401644059)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(778369693121687528)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:110:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(799360908357644060)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(778369693121687528)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P114_PUR_ORD_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(799360102256644059)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(778369693121687528)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P114_PUR_ORD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(799360513755644059)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(778369693121687528)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P114_PUR_ORD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(799361253912644060)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_button_name=>'GET_PREVIOUS_PUR_ORD_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_condition=>'P114_PUR_ORD_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(799361300955644060)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_button_name=>'GET_NEXT_PUR_ORD_ID'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_condition=>'P114_PUR_ORD_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(799362109688644061)
,p_branch_action=>'f?p=&APP_ID.:114:&APP_SESSION.::&DEBUG.::P114_PUR_ORD_ID:&P114_PUR_ORD_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(799361300955644060)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(799362590533644061)
,p_branch_action=>'f?p=&APP_ID.:114:&APP_SESSION.::&DEBUG.::P114_PUR_ORD_ID:&P114_PUR_ORD_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(799361253912644060)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(799362885224644061)
,p_branch_action=>'f?p=&APP_ID.:110:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(778369288639687524)
,p_name=>'P114_SUPPLIER_INFO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Supplier Info'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_escape.html(supp_name) || ''<br />'' || apex_escape.html(supp_address) ||''<br />''',
'|| apex_escape.html(contact_person) || ''<br />''',
'|| apex_escape.html(supp_phone) || ''<br />''',
'|| apex_escape.html(supp_email) supplier',
'from suppliers',
'where supp_id = :P114_SUPP_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799352121740644052)
,p_name=>'P114_PUR_ORD_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_item_source_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_source=>'PUR_ORD_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799352564806644052)
,p_name=>'P114_PUR_ORD_ID_PREV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799352981717644053)
,p_name=>'P114_PUR_ORD_ID_NEXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799353396520644053)
,p_name=>'P114_INVOICE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_item_source_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_prompt=>'Invoice'
,p_source=>'INVOICE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799353705157644053)
,p_name=>'P114_PUR_ORD_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_item_source_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_prompt=>'Pur Ord Date'
,p_source=>'PUR_ORD_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799354109992644054)
,p_name=>'P114_SUPP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_item_source_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_prompt=>'Supplier'
,p_source=>'SUPP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select distinct supp_name d, supp_id r from suppliers'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'Use this list to change supplier associated purchase'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799354527639644054)
,p_name=>'P114_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_item_source_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_prompt=>'Total'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799354976478644055)
,p_name=>'P114_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_item_source_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_prompt=>'Discount'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799355329143644055)
,p_name=>'P114_VAT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_item_source_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_prompt=>'Vat'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_source=>'VAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799355761128644055)
,p_name=>'P114_PURCHASE_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_item_source_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_prompt=>'Purchase Total'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'PURCHASE_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(799359210730644058)
,p_name=>'P114_PUR_ORD_ID_COUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(799351450976644051)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(799363743760644062)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(799351450976644051)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on PURCHASE_ORDER'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>799363743760644062
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(800715981259646700)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(800706388749646691)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Purchase Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>800715981259646700
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(799363329918644062)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(799351450976644051)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on PURCHASE_ORDER'
,p_attribute_01=>'P114_PUR_ORD_ID_NEXT'
,p_attribute_02=>'P114_PUR_ORD_ID_PREV'
,p_attribute_03=>'P114_PUR_ORD_ID_COUNT'
,p_internal_uid=>799363329918644062
);
end;
/
prompt --application/pages/page_00118
begin
wwv_flow_imp_page.create_page(
 p_id=>118
,p_name=>'Suppliers'
,p_alias=>'SUPPLIERS'
,p_step_title=>'Suppliers'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792510593372830432)
,p_plug_name=>'Suppliers'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'SUPPLIERS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Suppliers'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792511836596830433)
,p_name=>'APEX$LINK'
,p_source_type=>'NONE'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>10
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:119:&APP_SESSION.::&DEBUG.:RP,119:P119_SUPP_ID:\&SUPP_ID.\'
,p_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792512882985830434)
,p_name=>'SUPP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792513825890830435)
,p_name=>'SUPP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supp Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792514812699830436)
,p_name=>'SUPP_PHONE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPP_PHONE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supp Phone'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792515830537830436)
,p_name=>'SUPP_EMAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPP_EMAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supp Email'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792516896579830437)
,p_name=>'SUPP_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPP_ADDRESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supp Address'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792517867111830438)
,p_name=>'CONTACT_PERSON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTACT_PERSON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Contact Person'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792518862460830439)
,p_name=>'SUPP_CON_PHONE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPP_CON_PHONE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Supp Con Phone'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792519876098830439)
,p_name=>'TOTAL_PURCHASE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_PURCHASE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Purchase'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792520843356830440)
,p_name=>'TOTAL_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Total Paid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(792521887228830441)
,p_name=>'SUPP_DUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUPP_DUE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Supp Due'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(792511013392830432)
,p_internal_uid=>792511013392830432
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(792511428535830433)
,p_interactive_grid_id=>wwv_flow_imp.id(792511013392830432)
,p_static_id=>'7925115'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(792511667697830433)
,p_report_id=>wwv_flow_imp.id(792511428535830433)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792512298361830434)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(792511836596830433)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792513205954830435)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(792512882985830434)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792514298212830435)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(792513825890830435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792515244848830436)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(792514812699830436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792516244138830437)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(792515830537830436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792517267097830437)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(792516896579830437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792518211751830438)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(792517867111830438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792519287084830439)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(792518862460830439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792520264773830440)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(792519876098830439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792521251338830441)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(792520843356830440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(792522288030830441)
,p_view_id=>wwv_flow_imp.id(792511667697830433)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(792521887228830441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792524131026830443)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(107681682267023409958)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(792522882502830442)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(792510593372830432)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:119:&APP_SESSION.::&DEBUG.:119::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(792523109700830442)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(792510593372830432)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792523635482830442)
,p_event_id=>wwv_flow_imp.id(792523109700830442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(792510593372830432)
);
end;
/
prompt --application/pages/page_00119
begin
wwv_flow_imp_page.create_page(
 p_id=>119
,p_name=>'Supplier Details'
,p_alias=>'SUPPLIER-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Supplier Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792498832997830421)
,p_plug_name=>'Supplier Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'SUPPLIERS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(792506122271830428)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(792506526318830428)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(792506122271830428)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(792507962223830429)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(792506122271830428)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P119_SUPP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(792508323071830430)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(792506122271830428)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P119_SUPP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(792508794401830430)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(792506122271830428)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P119_SUPP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792499101453830422)
,p_name=>'P119_SUPP_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_item_source_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Supp Id'
,p_source=>'SUPP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792499517415830422)
,p_name=>'P119_SUPP_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_item_source_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_prompt=>'Supp Name'
,p_source=>'SUPP_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792499985452830423)
,p_name=>'P119_SUPP_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_item_source_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_prompt=>'Supp Phone'
,p_source=>'SUPP_PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792500328986830423)
,p_name=>'P119_SUPP_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_item_source_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_prompt=>'Supp Email'
,p_source=>'SUPP_EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792500754597830423)
,p_name=>'P119_SUPP_ADDRESS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_item_source_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_prompt=>'Supp Address'
,p_source=>'SUPP_ADDRESS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792501180099830424)
,p_name=>'P119_CONTACT_PERSON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_item_source_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_prompt=>'Contact Person'
,p_source=>'CONTACT_PERSON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792501560822830424)
,p_name=>'P119_SUPP_CON_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_item_source_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_prompt=>'Supp Con Phone'
,p_source=>'SUPP_CON_PHONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792501933584830424)
,p_name=>'P119_TOTAL_PURCHASE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_item_source_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_prompt=>'Total Purchase'
,p_source=>'TOTAL_PURCHASE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P119_SUPP_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792502314286830425)
,p_name=>'P119_TOTAL_PAID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_item_source_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_prompt=>'Total Paid'
,p_source=>'TOTAL_PAID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P119_SUPP_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(792502741414830425)
,p_name=>'P119_SUPP_DUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_item_source_plug_id=>wwv_flow_imp.id(792498832997830421)
,p_prompt=>'Supp Due'
,p_source=>'SUPP_DUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P119_SUPP_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(792506642583830428)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(792506526318830428)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(792507457134830429)
,p_event_id=>wwv_flow_imp.id(792506642583830428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(792509567513830430)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(792498832997830421)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Supplier Details'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>792509567513830430
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(792509944944830431)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>792509944944830431
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(792509123131830430)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(792498832997830421)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Supplier Details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>792509123131830430
);
end;
/
prompt --application/pages/page_00222
begin
wwv_flow_imp_page.create_page(
 p_id=>222
,p_name=>'Purchase Entry Form'
,p_alias=>'PURCHASE-ENTRY-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Purchase Entry Form'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'900'
,p_dialog_max_width=>'1200'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(851098175728779841)
,p_plug_name=>'Purchase Entry Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>5
,p_query_type=>'TABLE'
,p_query_table=>'PURCHASE_ORDER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(851104073482779848)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(851482735808478701)
,p_plug_name=>'Select Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(851482858169478702)
,p_plug_name=>'Accounts'
,p_parent_plug_id=>wwv_flow_imp.id(851482735808478701)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(851482961223478703)
,p_name=>'Purchased items'
,p_parent_plug_id=>wwv_flow_imp.id(851482735808478701)
,p_template=>4072358936313175081
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq_id sl, c001 product_id, c002 product_name, c003 price, c004 commission,',
'    c003-(c003*c004) purchase_price, c005 item_qty, (c003-(c003*c004))*c005 item_total',
'from apex_collections',
'where collection_name = ''PURCHASE'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_report_total_text_format=>'Total:'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(851483817461478712)
,p_query_column_id=>1
,p_column_alias=>'SL'
,p_column_display_sequence=>10
,p_column_heading=>'Sl'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(851483969937478713)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>20
,p_column_heading=>'Product Id'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(851484041403478714)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(851484107696478715)
,p_query_column_id=>4
,p_column_alias=>'PRICE'
,p_column_display_sequence=>40
,p_column_heading=>'Price'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(851484294933478716)
,p_query_column_id=>5
,p_column_alias=>'COMMISSION'
,p_column_display_sequence=>50
,p_column_heading=>'Commission'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(851484376972478717)
,p_query_column_id=>6
,p_column_alias=>'PURCHASE_PRICE'
,p_column_display_sequence=>60
,p_column_heading=>'Purchase Price'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(851484427390478718)
,p_query_column_id=>7
,p_column_alias=>'ITEM_QTY'
,p_column_display_sequence=>70
,p_column_heading=>'Item Qty'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(851484508942478719)
,p_query_column_id=>8
,p_column_alias=>'ITEM_TOTAL'
,p_column_display_sequence=>80
,p_column_heading=>'Item Total'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(851104463851779849)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(851104073482779848)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(851105884951779850)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(851104073482779848)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P222_PUR_ORD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(851106255623779850)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(851104073482779848)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P222_PUR_ORD_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(851106617389779851)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(851104073482779848)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P222_PUR_ORD_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851098468740779842)
,p_name=>'P222_PUR_ORD_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_item_source_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pur Ord Id'
,p_source=>'PUR_ORD_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851098881476779843)
,p_name=>'P222_INVOICE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_item_source_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_prompt=>'Purchase Invoice'
,p_source=>'INVOICE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851099201844779843)
,p_name=>'P222_PUR_ORD_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_item_source_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_item_default=>'current_date'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'PUR_ORD_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851099640493779844)
,p_name=>'P222_SUPP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_item_source_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_prompt=>'Supplier'
,p_source=>'SUPP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select distinct supp_name d, supp_id r from suppliers'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose Supplier'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'Use this list to select supplier'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851100094979779844)
,p_name=>'P222_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(851482858169478702)
,p_item_source_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_prompt=>'Total(tk):'
,p_source=>'TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum((c003-(c003*c004/100))*c005) D, sum((c003-(c003*c004/100))*c005) R',
'from apex_collections',
'where collection_name = ''PURCHASE'''))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:margin-left-sm:margin-right-sm'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851100478815779845)
,p_name=>'P222_DISCOUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(851482858169478702)
,p_item_source_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_prompt=>'Discount:'
,p_source=>'DISCOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851100808055779845)
,p_name=>'P222_VAT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(851482858169478702)
,p_item_source_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_prompt=>'Vat(%):'
,p_source=>'VAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851101215081779846)
,p_name=>'P222_PURCHASE_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(851482858169478702)
,p_item_source_plug_id=>wwv_flow_imp.id(851098175728779841)
,p_prompt=>'Purchase Total:'
,p_source=>'PURCHASE_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851483060216478704)
,p_name=>'P222_PRODUCT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(851482735808478701)
,p_prompt=>'Product ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_escape.html(product_info.product_name) || ''[$'' || product_info.list_price || '']'' d, product_id r',
'from product_info'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Choose Product'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851483177467478705)
,p_name=>'P222_PRODUCT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(851482735808478701)
,p_prompt=>'Product Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select product_name d, product_name r',
'from product_info',
'where product_id = :P222_PRODUCT_ID'))
,p_lov_cascade_parent_items=>'P222_PRODUCT_ID'
,p_ajax_items_to_submit=>'P222_PRODUCT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851483216927478706)
,p_name=>'P222_PRICE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(851482735808478701)
,p_prompt=>'Price'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select list_price d, list_price r',
'from product_info',
'where product_id = :P222_PRODUCT_ID'))
,p_lov_cascade_parent_items=>'P222_PRODUCT_ID'
,p_ajax_items_to_submit=>'P222_PRODUCT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851483376000478707)
,p_name=>'P222_COMMISSION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(851482735808478701)
,p_item_default=>'.2'
,p_prompt=>'Commission'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(851483426248478708)
,p_name=>'P222_ITEM_QTY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(851482735808478701)
,p_item_default=>'0'
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(851104558176779849)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(851104463851779849)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(851105310947779850)
,p_event_id=>wwv_flow_imp.id(851104558176779849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(851483530165478709)
,p_name=>'Item Posting'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P222_ITEM_QTY'
,p_condition_element=>'P222_ITEM_QTY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(851483664017478710)
,p_event_id=>wwv_flow_imp.id(851483530165478709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if not apex_collection.collection_exists(''PURCHASE'') then',
'        apex_collection.create_collection(''PURCHASE'');',
'    end if;',
'',
'apex_collection.add_member(',
'    p_collection_name => ''PURCHASE'',',
'    p_c001 => :P222_PRODUCT_ID,',
'    p_c002 => :P222_PRODUCT_NAME,',
'    p_c003 => :P222_PRICE,',
'    p_c004 => :P222_COMMISSION,',
'    p_c005 => :P222_ITEM_QTY);',
'    end;'))
,p_attribute_02=>'P222_PRODUCT_ID,P222_PRODUCT_NAME,P222_PRICE,P222_COMMISSION,P222_ITEM_QTY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(851483731036478711)
,p_event_id=>wwv_flow_imp.id(851483530165478709)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_PRODUCT_ID,P222_PRODUCT_NAME,P222_PRICE,P222_COMMISSION,P222_ITEM_QTY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(851485171778478725)
,p_event_id=>wwv_flow_imp.id(851483530165478709)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_PRODUCT_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(851485212409478726)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P222_DISCOUNT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(851485378762478727)
,p_event_id=>wwv_flow_imp.id(851485212409478726)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_PURCHASE_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:P222_TOTAL,0)-nvl(:P222_DISCOUNT,0)+((nvl(:P222_TOTAL,0)-nvl(:P222_DISCOUNT,0))*nvl(:P222_VAT,0)/100)'
,p_attribute_07=>'P222_TOTAL,P222_DISCOUNT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(851485428871478728)
,p_name=>'New_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P222_VAT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(851485538622478729)
,p_event_id=>wwv_flow_imp.id(851485428871478728)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_PURCHASE_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:P222_TOTAL,0)-nvl(:P222_DISCOUNT,0)+((nvl(:P222_TOTAL,0)-nvl(:P222_DISCOUNT,0))*nvl(:P222_VAT,0)/100)'
,p_attribute_07=>'P222_TOTAL,P222_DISCOUNT,P222_VAT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(851486341125478737)
,p_name=>'Refresh'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P222_ITEM_QTY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(851486474690478738)
,p_event_id=>wwv_flow_imp.id(851486341125478737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_TOTAL'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(851486550946478739)
,p_event_id=>wwv_flow_imp.id(851486341125478737)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(851482961223478703)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(851486640682478740)
,p_name=>'Set total price'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P222_TOTAL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(851486757739478741)
,p_event_id=>wwv_flow_imp.id(851486640682478740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_PURCHASE_TOTAL'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'nvl(:P222_TOTAL,0)-nvl(:P222_DISCOUNT,0)+((nvl(:P222_TOTAL,0)-nvl(:P222_DISCOUNT,0))*nvl(:P222_VAT,0)/100)'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(851107481094779851)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(851098175728779841)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Purchase Entry Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>851107481094779851
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(851485660671478730)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Place Purchase'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into  purchase_items (pur_item_id, pur_ord_id, product_id, product_name, price, commission, item_qty)',
'select pur_item_seq.nextval, :P222_PUR_ORD_ID, c001, c002, c003, c004, c005',
'from apex_collections',
'where collection_name = ''PURCHASE'';',
'commit;',
'apex_collection.truncate_collection(p_collection_name=>''PURCHASE'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(851106617389779851)
,p_internal_uid=>851485660671478730
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(851107829320779852)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>851107829320779852
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(851107094170779851)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(851098175728779841)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Purchase Entry Form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>851107094170779851
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'INVENTORY MANAGEMENT SYSTEM - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(107682979126037410230)
,p_plug_name=>'INVENTORY MANAGEMENT SYSTEM'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(107682980866447410232)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(107682979126037410230)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107682979613182410231)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(107682979126037410230)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107682980071981410232)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(107682979126037410230)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107682980496913410232)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(107682979126037410230)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(107682983074294410235)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>107682983074294410235
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(107682983526169410235)
,p_page_process_id=>wwv_flow_imp.id(107682983074294410235)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(107682984071298410235)
,p_page_process_id=>wwv_flow_imp.id(107682983074294410235)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(107682981110956410233)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>107682981110956410233
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(107682981659818410233)
,p_page_process_id=>wwv_flow_imp.id(107682981110956410233)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(107682982198481410234)
,p_page_process_id=>wwv_flow_imp.id(107682981110956410233)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(107682982682648410234)
,p_page_process_id=>wwv_flow_imp.id(107682981110956410233)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(107682984969599410236)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>107682984969599410236
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(107682984569327410236)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>107682984569327410236
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(900786062359096924)
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
