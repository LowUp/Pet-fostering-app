prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 112659
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>41592241009218758396
,p_default_application_id=>112659
,p_default_id_offset=>0
,p_default_owner=>'SUANWORKSPACE'
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15025640803830616795)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_IMAGES#css/Redwood-Light#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15025641029014616795)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>false
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15025641219422616795)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15025641495758616795)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15025641635279616795)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15025641868217616795)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(15904804049280811460)
,p_theme_id=>42
,p_name=>'Green Header'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"rgba(107, 204, 75, 1)","@g_Accent-OG":"rgba(62, 62, 66, 1)","@g_Link-Base":"rgba(236, 240, 235, 1)","@g_Focus":"rgba(255, 255, 255, 1)","@g_Header-FG":"rgba(250, 250, 250, 1)","@g_Header-BG":"rgba(75, 145, 52, '
||'1)","@g_Body-BG":"rgba(36, 36, 41, 1)","@g_Container-BorderRadius":"22px","@g_Form-Item-BG":"rgba(21, 21, 23, 1)","@g_Form-BorderRadius":"6px","@irrBg":"rgba(40, 40, 46, 1)","@Head-Height":"60px","@g_Body-Content-Max-Width":"100%","@l_Left-Col-BG":"r'
||'gba(46, 46, 56, 1)","@g_NavBarMenu-BG":"rgba(41, 48, 45, 1)","@g_Nav-Accent-BG":"rgba(118, 201, 91, 1)","@Nav-Exp":"220px","@g_Body-Title-BG":"rgba(54, 54, 66, 1)","@g_Nav-Active-BG":"rgba(51, 49, 51, 1)","@g_Nav-Accent-FG":"rgba(54, 44, 54, 1)","@g_'
||'NavBarMenu-Active-FG":"rgba(59, 56, 59, 1)","@g_Region-Header-BG":"rgba(55, 55, 71, 1)","@l_Button-Simple-Text":"rgba(41, 36, 41, 1)","@g_Button-BG":"rgba(44, 44, 48, 1)","@g_Button-BorderRadius":"16px","@g_Form-Label":"rgba(255, 250, 255, 1)","@g_Ac'
||'tions-Col-BG":"rgba(84, 84, 94, 1)","@g_Region-Header-FG":"rgba(232, 220, 232, 1)","@g_Region-FG":"rgba(247, 237, 247, 1)","@g_Button-Text":"rgba(228, 228, 240, 1)","@l_Button-Hot-BG":"rgba(66, 128, 47, 1)","@l_Button-Primary-Text":"rgba(239, 245, 23'
||'7, 1)","@g_Nav-BG":"rgba(59, 74, 59, 1)","@g_Nav-Badge-FG":"rgba(59, 56, 59, 1)","@g_Region-BG":"rgba(46, 46, 48, 1)","@l_Button-Primary-BG":"rgba(30, 61, 20, 1)","@l_Button-Danger-Text":"rgba(94, 84, 94, 1)","@l_Button-Hot-Text":"rgba(237, 225, 237,'
||' 1)"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#15904804049280811460.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.component_end;
end;
/
