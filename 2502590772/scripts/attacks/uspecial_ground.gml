//uthrow.gml
//move used when plusle or minun are dragged along by their teammate using uspecial

if (is_master_player) exit; //efficiency: don't load attacks on master player

set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get_pm("doublejump"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("pm_hurtbox_air"));
//set_attack_value(AT_USPECIAL_GROUND, AG_USES_CUSTOM_GRAVITY, 1);

//being dragged
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 9); //infinite loop
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 8);
//set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_placepop"));

//endlag
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_WHIFFLAG, 1); //can_hit equals true when the teammate's uspecial hits
//set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_placepop"));

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);