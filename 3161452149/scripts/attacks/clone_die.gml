var at = AT_EXTRA_2;

set_attack_value(at, AG_CATEGORY, 2);
set_attack_value(at, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(at, AG_HURTBOX_SPRITE, asset_get("empty_sprite"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 24);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(at, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(at, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(at, num, AG_WINDOW_HSPEED, 0);
set_window_value(at, num, AG_WINDOW_VSPEED, 0);
set_window_value(at, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(at, num, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));

set_attack_value(at, AG_NUM_WINDOWS, num);