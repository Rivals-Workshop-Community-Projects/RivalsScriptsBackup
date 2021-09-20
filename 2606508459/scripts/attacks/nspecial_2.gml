set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_2_air"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_2_air_hurt"));

set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);

var ig = 1;

//Startup 1
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 4);

ig++;

//Startup 2
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_cancel"));

ig++;

//Call
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_instant"));

ig++;

//Keep
/*
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAME_START, 9);

ig++;
*/

//End
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAME_START, 12);

//END