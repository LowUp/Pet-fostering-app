prompt --application/shared_components/user_interface/lovs/staff_list
begin
--   Manifest
--     STAFF_LIST
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
 p_id=>wwv_flow_api.id(16158640458735392810)
,p_lov_name=>'STAFF_LIST'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'STAFF'
,p_return_column_name=>'STAFFID'
,p_display_column_name=>'FIRSTNAME'
,p_default_sort_column_name=>'FIRSTNAME'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
