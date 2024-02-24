var at = AT_NSPECIAL;

set_attack_value(at, AG_CATEGORY, 2);
set_attack_value(at, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(at, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(at, AG_HURTBOX_SPRITE, asset_get("nspecial_hurt"));
set_attack_value(at, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 24);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(at, num, AG_WINDOW_SFX, sfx_hit_med);

//1 startup
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 200);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 6);

//1 startup
num++;
set_window_value(at, num, AG_WINDOW_LENGTH, 16);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(at, num, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, sfx_swipe_med);

set_attack_value(at, AG_NUM_WINDOWS, num);