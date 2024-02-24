var at = AT_FSPECIAL;

set_attack_value(at, AG_CATEGORY, 2);
set_attack_value(at, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(at, AG_HURTBOX_SPRITE, asset_get("fspecial_hurt"));
set_attack_value(at, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(at, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 24);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(at, num, AG_WINDOW_GOTO, 6);

//1 startup
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 28);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 8);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_attack_value(at, AG_NUM_WINDOWS, num);