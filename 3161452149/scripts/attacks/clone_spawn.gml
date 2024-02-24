var at = AT_EXTRA_1;

set_attack_value(at, AG_CATEGORY, 2);
set_attack_value(at, AG_SPRITE, sprite_get("clonespawn"));
set_attack_value(at, AG_AIR_SPRITE, sprite_get("clonespawn_air"));
set_attack_value(at, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//1 startup
var num = 1;
set_window_value(at, num, AG_WINDOW_LENGTH, 24);
set_window_value(at, num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(at, num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(at, num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(at, num, AG_WINDOW_HSPEED, 0);
set_window_value(at, num, AG_WINDOW_VSPEED, 0);

set_attack_value(at, AG_NUM_WINDOWS, num);