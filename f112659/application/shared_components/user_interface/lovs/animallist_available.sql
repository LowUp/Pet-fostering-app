prompt --application/shared_components/user_interface/lovs/animallist_available
begin
--   Manifest
--     ANIMALLIST_AVAILABLE
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
 p_id=>wwv_flow_api.id(16297044336947766954)
,p_lov_name=>'ANIMALLIST_AVAILABLE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ANIMALID, NAME, SEX, AVAILABLETOFOSTER',
'',
'FROM ANIMAL',
'',
'WHERE AVAILABLETOFOSTER = ''Y'';'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ANIMALID'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ANIMALID'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(16297413959895782160)
,p_query_column_name=>'ANIMALID'
,p_heading=>'Id'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(16297414329940782160)
,p_query_column_name=>'NAME'
,p_heading=>'Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(16297414724284782161)
,p_query_column_name=>'SEX'
,p_heading=>'Sex'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(16297415105962782162)
,p_query_column_name=>'AVAILABLETOFOSTER'
,p_heading=>'Availabletofoster'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
