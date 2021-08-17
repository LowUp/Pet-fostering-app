prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 112659
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>41592241009218758396
,p_default_application_id=>112659
,p_default_id_offset=>0
,p_default_owner=>'SUANWORKSPACE'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(15025642099866616796)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(15025540164787616716)
,p_default_dialog_template=>wwv_flow_api.id(15025535861248616712)
,p_error_template=>wwv_flow_api.id(15025527937013616705)
,p_printer_friendly_template=>wwv_flow_api.id(15025540164787616716)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(15025527937013616705)
,p_default_button_template=>wwv_flow_api.id(15025639073833616792)
,p_default_region_template=>wwv_flow_api.id(15025576284514616743)
,p_default_chart_template=>wwv_flow_api.id(15025576284514616743)
,p_default_form_template=>wwv_flow_api.id(15025576284514616743)
,p_default_reportr_template=>wwv_flow_api.id(15025576284514616743)
,p_default_tabform_template=>wwv_flow_api.id(15025576284514616743)
,p_default_wizard_template=>wwv_flow_api.id(15025576284514616743)
,p_default_menur_template=>wwv_flow_api.id(15025585678780616749)
,p_default_listr_template=>wwv_flow_api.id(15025576284514616743)
,p_default_irr_template=>wwv_flow_api.id(15025574324749616742)
,p_default_report_template=>wwv_flow_api.id(15025605455748616764)
,p_default_label_template=>wwv_flow_api.id(15025637937558616791)
,p_default_menu_template=>wwv_flow_api.id(15025640488608616793)
,p_default_calendar_template=>wwv_flow_api.id(15025640512644616794)
,p_default_list_template=>wwv_flow_api.id(15025621895303616777)
,p_default_nav_list_template=>wwv_flow_api.id(15025633629849616788)
,p_default_top_nav_list_temp=>wwv_flow_api.id(15025633629849616788)
,p_default_side_nav_list_temp=>wwv_flow_api.id(15025628221709616783)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(15025548817015616723)
,p_default_dialogr_template=>wwv_flow_api.id(15025547863516616722)
,p_default_option_label=>wwv_flow_api.id(15025637937558616791)
,p_default_required_label=>wwv_flow_api.id(15025638263543616792)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(15025627869277616783)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.6/')
,p_files_version=>84
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
