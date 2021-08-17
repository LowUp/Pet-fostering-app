prompt --application/shared_components/user_interface/lovs/sorted_typebreed
begin
--   Manifest
--     SORTED_TYPEBREED
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
 p_id=>wwv_flow_api.id(16972625625029309294)
,p_lov_name=>'SORTED_TYPEBREED'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'BREED'
,p_return_column_name=>'BREEDID'
,p_display_column_name=>'BREEDNAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
