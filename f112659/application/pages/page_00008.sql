prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(15025661776907616811)
,p_name=>'Branch Foster Form '
,p_alias=>'BRANCH-FOSTER-FORM'
,p_step_title=>'Branch Foster Form '
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'J.E.SUAN1210@CANTERBURY.AC.UK'
,p_last_upd_yyyymmddhh24miss=>'20201215131727'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32394875199387371746)
,p_plug_name=>'Foster Form'
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(15025576284514616743)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'FOSTER'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16323296425656376739)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15025639073833616792)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16323297608982376741)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(15025639073833616792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P8_FOSTERID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16323298092260376741)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_button_name=>'BackButton'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15025638319655616792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:history.go(-1)'
,p_icon_css_classes=>'fa-arrow-circle-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16324005239017376753)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16161268951568538222)
,p_name=>'P8_FOSTERID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_item_source_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_source=>'FOSTERID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16161269074135538223)
,p_name=>'P8_APPLICATIONFK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_item_source_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_source=>'APPLICATIONFK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16161269115273538224)
,p_name=>'P8_STARTDATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_item_source_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_item_default=>'CURRENT_DATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_source=>'STARTDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(15025638070408616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_02=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'+0y: +20y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16161269268323538225)
,p_name=>'P8_ENDDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_item_source_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_prompt=>'Pre-agreed end date'
,p_source=>'ENDDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_display_when=>'P8_ENDDATE'
,p_display_when_type=>'ITEM_IS_NULL_OR_ZERO'
,p_field_template=>wwv_flow_api.id(15025638070408616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_02=>'+1d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'+0y:+20y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16324000847853376746)
,p_name=>'P8_OVERVIEWEDBY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_item_source_plug_id=>wwv_flow_api.id(32394875199387371746)
,p_prompt=>'Overviewed by'
,p_source=>'OVERVIEWEDBY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STAFF_LIST'
,p_cHeight=>1
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(15025638070408616792)
,p_item_template_options=>'#DEFAULT#:margin-right-lg'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16161269408842538227)
,p_name=>'Get Application ID'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16161269566011538228)
,p_event_id=>wwv_flow_api.id(16161269408842538227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_APPLICATIONFK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT APPLICATIONID FROM FOSTERAPPLICATION WHERE APPLICATIONID = (SELECT MAX(APPLICATIONID) FROM FOSTERAPPLICATION)'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17312422687682597639)
,p_name=>'CheckEndDate'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_ENDDATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17312422741640597640)
,p_event_id=>wwv_flow_api.id(17312422687682597639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'startDate = new Date($x("P8_STARTDATE").value);',
'endDate = new Date($x("P8_ENDDATE").value);',
'',
'//$x is the syntax to get the value of an item',
'',
'',
'if(endDate <= startDate)',
'{',
'    apex.message.alert("The pre-agreed end date must be after startdate");',
'    //Setting endate to nothing to avoid entering invalid dates',
'    $s("P8_ENDDATE","");',
'}',
'',
'',
'',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17312423002359597643)
,p_name=>'CheckStartDate'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_STARTDATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17312423172818597644)
,p_event_id=>wwv_flow_api.id(17312423002359597643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'todayDate = new Date();',
'startDate = new Date($x("P8_STARTDATE").value);',
'endDate = new Date($x("P8_ENDDATE").value);',
'',
'//$x is the syntax to get the value of an item',
'',
'',
'if(startDate >= endDate)',
'{',
'    apex.message.alert("The start date must be before end date. \n Start date has set to current date");',
'    //Setting endate to nothing to avoid entering invalid dates',
'    $s("P8_STARTDATE",todayDate.getMonth()+1 + "/" + todayDate.getDate() + "/"+ todayDate.getFullYear());',
'}',
'',
'',
'',
'',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16324003434313376750)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(32394875199387371746)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Foster Application Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16324003081100376750)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(32394875199387371746)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Foster Application Form'
);
wwv_flow_api.component_end;
end;
/
