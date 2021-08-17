prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
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
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(15025661776907616811)
,p_name=>'View Page'
,p_alias=>'VIEW-PAGE'
,p_step_title=>'View Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'CHINDU_RICE'
,p_last_upd_yyyymmddhh24miss=>'20201210222542'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17309009982469368726)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(15025576284514616743)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_06'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17312419515650597608)
,p_plug_name=>'View Records'
,p_icon_css_classes=>'fa-folder-open'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--featured t-HeroRegion--centered:t-HeroRegion--iconsCircle:t-Form--xlarge'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15025566681027616736)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(17455893126035154546)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(15025621895303616777)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17312419792572597610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17309009982469368726)
,p_button_name=>'backbutton'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--hoverIconPush:t-Button--pillStart:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(15025638319655616792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'backbutton'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.component_end;
end;
/
