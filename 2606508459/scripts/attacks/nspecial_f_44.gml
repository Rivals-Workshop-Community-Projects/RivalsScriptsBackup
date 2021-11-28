set_attack_value(44, AG_CATEGORY, 2);
set_attack_value(44, AG_NUM_WINDOWS, 3);
set_attack_value(44, AG_SPRITE, sprite_get("fail"));
set_attack_value(44, AG_HURTBOX_SPRITE, sprite_get("fail_hurt"));

var ig = 1;

//Explode like the beesh you are
set_window_value(44, ig, AG_WINDOW_TYPE, 1);
set_window_value(44, ig, AG_WINDOW_LENGTH, 9);
set_window_value(44, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(44, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(44, ig, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release"));

ig++;

set_window_value(44, ig, AG_WINDOW_TYPE, 1);
set_window_value(44, ig, AG_WINDOW_LENGTH, 16);
set_window_value(44, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(44, ig, AG_WINDOW_ANIM_FRAME_START, 3);

ig++;

//Stay exploded
set_window_value(44, ig, AG_WINDOW_TYPE, 9);
set_window_value(44, ig, AG_WINDOW_LENGTH, 32);
set_window_value(44, ig, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(44, ig, AG_WINDOW_ANIM_FRAME_START, 7);

//END