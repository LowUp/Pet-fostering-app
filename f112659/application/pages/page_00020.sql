prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(15025661776907616811)
,p_name=>'Update Fostering List'
,p_alias=>'UPDATE-FOSTERING-LIST'
,p_step_title=>'Update Fostering List'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'CHINDU_RICE'
,p_last_upd_yyyymmddhh24miss=>'20201210231033'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7595138188755790943)
,p_plug_name=>'Approved Foster Applications'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15025574324749616742)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.APPLICATIONID AS  "ID",',
'       b.FIRSTNAME ||'' ''|| b.LASTNAME AS "Applicants Name",',
'       c.NAME AS "Animals Name",',
'       a.DATEOFAPPLICATION AS "APPLICATION DATE",',
'       a.REASONOFAPPLICATION AS "Reason of Application",',
'       a.APPLICATIONAPPROVED AS "Application Status"',
'',
'FROM FOSTERAPPLICATION a',
'',
'INNER JOIN APPLICANT b',
'ON a.APPLICANTFK = b.APPLICANTID',
'',
'INNER JOIN ANIMAL c',
'ON a.ANIMALFK = c.ANIMALID',
'',
'WHERE APPLICATIONAPPROVED = ''Y''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'ALWAYS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Approved Foster Applications'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17147369034401759725)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_owner=>'J.E.SUAN1210@CANTERBURY.AC.UK'
,p_internal_uid=>17147369034401759725
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147369192024759726)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147369289859759727)
,p_db_column_name=>'Applicants Name'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Applicants Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147369316065759728)
,p_db_column_name=>'Animals Name'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Animals Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147369447216759729)
,p_db_column_name=>'APPLICATION DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Application Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147369539249759730)
,p_db_column_name=>'Reason of Application'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Reason Of Application'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147369632465759731)
,p_db_column_name=>'Application Status'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Application Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17149738537470842681)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'171497386'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:Applicants Name:Animals Name:APPLICATION DATE:Reason of Application:Application Status'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16308169336824250714)
,p_plug_name=>'Pending Foster Applications'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(15025574324749616742)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a.APPLICATIONID AS  "ID",',
'       b.FIRSTNAME ||'' ''|| b.LASTNAME AS "Applicants Name",',
'       c.NAME AS "Animals Name",',
'       a.DATEOFAPPLICATION AS "APPLICATION DATE",',
'       a.REASONOFAPPLICATION AS "Reason of Application",',
'       a.APPLICATIONAPPROVED AS "Application Status"',
'',
'FROM FOSTERAPPLICATION a',
'',
'INNER JOIN APPLICANT b',
'ON a.APPLICANTFK = b.APPLICANTID',
'',
'INNER JOIN ANIMAL c',
'ON a.ANIMALFK = c.ANIMALID',
'',
'WHERE APPLICATIONAPPROVED = ''P'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pending Foster Applications'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17147369722569759732)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_owner=>'J.E.SUAN1210@CANTERBURY.AC.UK'
,p_internal_uid=>17147369722569759732
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147369839867759733)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147369945536759734)
,p_db_column_name=>'Applicants Name'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Applicants Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147370086458759735)
,p_db_column_name=>'Animals Name'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Animals Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147370194107759736)
,p_db_column_name=>'APPLICATION DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Application Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147370247725759737)
,p_db_column_name=>'Reason of Application'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Reason Of Application'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17147370304969759738)
,p_db_column_name=>'Application Status'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Application Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17153005796476267836)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'171530058'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:Applicants Name:Animals Name:APPLICATION DATE:Reason of Application:Application Status'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17309010527208368732)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(15025576284514616743)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43035592451135895743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17309010527208368732)
,p_button_name=>'BackButton'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--hoverIconPush:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(15025638319655616792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:history.go(-1)'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17312420406305597617)
,p_name=>'P20_NEW_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16308169336824250714)
,p_prompt=>'Pending Foster Applications'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15025637937558616791)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17312420690275597619)
,p_name=>'P20_NEW_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7595138188755790943)
,p_prompt=>'Approved Foster Applications'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(15025637937558616791)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
