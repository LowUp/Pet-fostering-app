prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(15025661776907616811)
,p_name=>'Foster Application Form'
,p_alias=>'FOSTER-APPLICATION-FORM'
,p_step_title=>'Foster Application Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'J.E.SUAN1210@CANTERBURY.AC.UK'
,p_last_upd_yyyymmddhh24miss=>'20201212223918'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16071579337922995010)
,p_plug_name=>'Foster Application Form'
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(15025576284514616743)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'FOSTERAPPLICATION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17309009818022368725)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16071585443867995568)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15025639073833616792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P14_APPLICATIONID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16071584245319995567)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15025639073833616792)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16071585875367995568)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(15025639073833616792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_execute_validations=>'N'
,p_button_condition=>'P14_APPLICATIONID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43035591869276895737)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17309009818022368725)
,p_button_name=>'BackButton'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_api.id(15025638319655616792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:history.go(-1)'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16071586183733995568)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(16071585875367995568)
,p_branch_sequence=>1
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'V(''P14_APPLICATIONAPPROVED'') = ''D'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16161268301976538216)
,p_branch_name=>'GoToPage8'
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(16071585875367995568)
,p_branch_sequence=>11
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>'V(''P14_APPLICATIONAPPROVED'') != ''D'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16071579617667995010)
,p_name=>'P14_APPLICATIONID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_item_source_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_source=>'APPLICATIONID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16071580004623995189)
,p_name=>'P14_APPLICANTFK'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_item_source_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_prompt=>'Applicant''s Name'
,p_source=>'APPLICANTFK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'APPLICANT_LIST'
,p_cSize=>50
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16071580518806995277)
,p_name=>'P14_ANIMALFK'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_item_source_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_prompt=>'Animal''s Name'
,p_source=>'ANIMALFK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ANIMALLIST_AVAILABLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ANIMALID, NAME, SEX, AVAILABLETOFOSTER',
'',
'FROM ANIMAL',
'',
'WHERE AVAILABLETOFOSTER = ''Y'';'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16071581456015995371)
,p_name=>'P14_DATEOFAPPLICATION'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_item_source_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_item_default=>'SELECT CURRENT_DATE FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Date of application'
,p_source=>'DATEOFAPPLICATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16071581822686995469)
,p_name=>'P14_REASONOFAPPLICATION'
,p_source_data_type=>'CLOB'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_item_source_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_prompt=>'Reason of application'
,p_source=>'REASONOFAPPLICATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16071582121068995565)
,p_name=>'P14_APPLICATIONAPPROVED'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_item_source_plug_id=>wwv_flow_api.id(16071579337922995010)
,p_prompt=>'Application Status'
,p_source=>'APPLICATIONAPPROVED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Approved;Y,Pending;P,Declined;D'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Select decision'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16043551022081179742)
,p_validation_name=>'IF NULL'
,p_validation_sequence=>10
,p_validation=>'P14_APPLICATIONAPPROVED'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Choose a decision for this application.'
,p_when_button_pressed=>wwv_flow_api.id(16071585875367995568)
,p_associated_item=>wwv_flow_api.id(16071582121068995565)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16071587077220995569)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(16071579337922995010)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Foster Application Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16154599106638506433)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Updates Animal availability'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P14_APPLICATIONAPPROVED = ''Y'' THEN',
'        UPDATE ANIMAL SET ANIMAL.AVAILABLETOFOSTER = ''N'' WHERE V(''P14_ANIMALFK'') = ANIMAL.ANIMALID;',
'',
'    ELSE      ',
'      ',
'       UPDATE ANIMAL SET ANIMAL.AVAILABLETOFOSTER = ''Y'' WHERE V(''P14_ANIMALFK'') = ANIMAL.ANIMALID;',
'',
'    END IF;',
'    ',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'error'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Animal Availability Updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16071586675458995569)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(16071579337922995010)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Foster Application Form'
);
wwv_flow_api.component_end;
end;
/
