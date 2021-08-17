prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(15025661776907616811)
,p_name=>'Applicant''s Record'
,p_alias=>'APPLICANT-S-RECORD'
,p_step_title=>'Applicant''s Record'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ASIM_RICE'
,p_last_upd_yyyymmddhh24miss=>'20201205225810'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16151756874327990311)
,p_plug_name=>'Applicant''s Record'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15025551095700616724)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'APPLICANT'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'SCROLL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_card(
 p_id=>wwv_flow_api.id(16151757236541990313)
,p_region_id=>wwv_flow_api.id(16151756874327990311)
,p_layout_type=>'FLOAT'
,p_title_adv_formatting=>false
,p_title_column_name=>'FIRSTNAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'ADDRESS'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'APPLICANTID'
,p_badge_column_name=>'LASTNAME'
,p_media_adv_formatting=>false
);
wwv_flow_api.component_end;
end;
/
