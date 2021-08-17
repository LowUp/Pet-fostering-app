prompt --application/create_application
begin
--   Manifest
--     FLOW: 112659
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>41592241009218758396
,p_default_application_id=>112659
,p_default_id_offset=>0
,p_default_owner=>'SUANWORKSPACE'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'SUANWORKSPACE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Green Pastures Fostering Database Website')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'GREEN-PASTURES-FOSTERING-DATABASE-WEBSITE')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'8A68FFE47D35352E8C64698C37ED4666A4A47CDBFD5C6AA878891FB9E8F3995D'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2020.12.02.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(15025520991945616699)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Green Pastures Fostering Database Website'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_security_scheme=>wwv_flow_api.id(15025665905268616821)
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_error_handling_function=>'create or replace function apex_error_handling_example (     p_error in apex_error.t_error )     return apex_error.t_error_result is     l_result          apex_error.t_error_result;     l_reference_id    number;     l_constraint_name varchar2(255); b'
||'egin '
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Green Pastures Fostering Database Website'
,p_last_updated_by=>'ASIM_RICE'
,p_last_upd_yyyymmddhh24miss=>'20201218180304'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
);
wwv_flow_api.component_end;
end;
/
