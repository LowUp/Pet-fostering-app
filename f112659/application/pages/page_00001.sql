prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>41592241009218758396
,p_default_application_id=>112659
,p_default_id_offset=>0
,p_default_owner=>'SUANWORKSPACE'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(15025661776907616811)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Green Pastures Fostering Database Website'
,p_footer_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>Created by: Blue Team</h3>',
'<p>Jose Suan, Asim Rai, Chinduji Emereole, Thomas Harrie-Thompson </p> ',
'',
''))
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'J.E.SUAN1210@CANTERBURY.AC.UK'
,p_last_upd_yyyymmddhh24miss=>'20201212155306'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15025677311952616846)
,p_plug_name=>'Green Pastures Fostering Database Website'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15025566681027616736)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15025732014951617722)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--iconsRounded:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(15025547863516616722)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(15025731354889617722)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(15025616239029616773)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.component_end;
end;
/
