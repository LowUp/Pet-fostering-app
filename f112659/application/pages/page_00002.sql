prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(15025661776907616811)
,p_name=>'Administration Page'
,p_alias=>'ADMINISTRATION-PAGE'
,p_page_mode=>'MODAL'
,p_step_title=>'Administration Page'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(15025667744167616824)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(15025665878480616821)
,p_help_text=>'This page is for admin.'
,p_last_updated_by=>'J.E.SUAN1210@CANTERBURY.AC.UK'
,p_last_upd_yyyymmddhh24miss=>'20201202160832'
);
wwv_flow_api.component_end;
end;
/
