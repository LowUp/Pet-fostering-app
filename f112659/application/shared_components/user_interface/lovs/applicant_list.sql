prompt --application/shared_components/user_interface/lovs/applicant_list
begin
--   Manifest
--     APPLICANT_LIST
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>41592241009218758396
,p_default_application_id=>112659
,p_default_id_offset=>0
,p_default_owner=>'SUANWORKSPACE'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(16081929731680355618)
,p_lov_name=>'APPLICANT_LIST'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'APPLICANT'
,p_return_column_name=>'APPLICANTID'
,p_display_column_name=>'FIRSTNAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'APPLICANTID'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(16095673674799196794)
,p_query_column_name=>'APPLICANTID'
,p_heading=>'ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(16095674071882196796)
,p_query_column_name=>'FIRSTNAME'
,p_heading=>'First Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(16095674420499196796)
,p_query_column_name=>'LASTNAME'
,p_heading=>'Last Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(16099634388991906305)
,p_query_column_name=>'DATEOFBIRTH'
,p_heading=>'Date of Birth'
,p_display_sequence=>40
,p_data_type=>'DATE'
);
wwv_flow_api.component_end;
end;
/
