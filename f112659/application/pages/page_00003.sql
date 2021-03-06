prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(15025661776907616811)
,p_name=>'Animal Register Form'
,p_alias=>'ANIMAL-REGISTER-FORM'
,p_step_title=>'Animal Register Form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15025666062732616821)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'TOM_RICE'
,p_last_upd_yyyymmddhh24miss=>'20201211133332'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15025712315348616996)
,p_plug_name=>'Complete form to register new animal'
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(15025576284514616743)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ANIMAL'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17309009613733368723)
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
 p_id=>wwv_flow_api.id(15025720035915617704)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15025639073833616792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3_ANIMALID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15025718829773617703)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15025639073833616792)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15025720460837617705)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(15025639073833616792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P3_ANIMALID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43035591709598895736)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17309009613733368723)
,p_button_name=>'BackButton'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--simple:t-Button--hoverIconPush:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(15025638319655616792)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'javascript:history.go(-1)'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17309007444545368701)
,p_branch_name=>'REDIRECT TO HOME PAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15025712608921616996)
,p_name=>'P3_ANIMALID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_item_source_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_source=>'ANIMALID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15025713666046617171)
,p_name=>'P3_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_item_source_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>8
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15025714446912617260)
,p_name=>'P3_TYPEFK'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_item_source_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_prompt=>'Type of Animal'
,p_source=>'TYPEFK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ANIMALTYPE.TYPE'
,p_cHeight=>1
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15025714888483617347)
,p_name=>'P3_BREEDFK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_item_source_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_prompt=>'Type of Breed'
,p_source=>'BREEDFK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
'    ',
'    RETURN ''SELECT DISTINCT BREEDNAME, BREEDID FROM BREED WHERE BREED.ANIMALTYPEFK = :P3_TYPEFK'';',
'',
'END;',
''))
,p_lov_cascade_parent_items=>'P3_TYPEFK'
,p_ajax_items_to_submit=>'P3_TYPEFK'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>6
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
 p_id=>wwv_flow_api.id(15025715231080617435)
,p_name=>'P3_DATEOFBIRTH'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_item_source_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_prompt=>'Date of Birth'
,p_source=>'DATEOFBIRTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'+0d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
,p_attribute_08=>'1920:+0d'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15025715564430617522)
,p_name=>'P3_SEX'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_item_source_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_prompt=>'Sex'
,p_source=>'SEX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Male;M,Female;F'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15025715891161617610)
,p_name=>'P3_ADMITTANCEDATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_item_source_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_item_default=>'SELECT CURRENT_DATE FROM DUAL;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Admittance date'
,p_source=>'ADMITTANCEDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>6
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'+7d'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15025716183344617700)
,p_name=>'P3_AVAILABLETOFOSTER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_item_source_plug_id=>wwv_flow_api.id(15025712315348616996)
,p_prompt=>'Foster Availability '
,p_source=>'AVAILABLETOFOSTER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:No;N,Yes;Y'
,p_cHeight=>1
,p_colspan=>4
,p_grid_column=>2
,p_field_template=>wwv_flow_api.id(15025638263543616792)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16161269928520538232)
,p_name=>'TPYEFK CHANGE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_TYPEFK'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16308170307712250724)
,p_event_id=>wwv_flow_api.id(16161269928520538232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P3_BREEDFK'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15025721234759617706)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(15025712315348616996)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Animal Register Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16154599200267506434)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Updates Animal Availability'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :P14_APPLICATIONAPPROVED = ''Y'' THEN',
'        UPDATE ANIMAL SET ANIMAL.AVAILABLETOFOSTER = ''N'' WHERE V(''P14_ANIMALFK'') = ANIMAL.ANIMALID;',
'',
'    ELSE      ',
'      ',
'      UPDATE ANIMAL SET ANIMAL.AVAILABLETOFOSTER = ''Y'' WHERE V(''P14_ANIMALFK'') = ANIMAL.ANIMALID;',
'',
'    END IF;',
'    ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15025720837104617705)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(15025712315348616996)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Animal Register Form'
);
wwv_flow_api.component_end;
end;
/
