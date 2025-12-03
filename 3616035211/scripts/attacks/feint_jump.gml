var atk = AT_EXTRA_1;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("quickjump"));
set_attack_value(atk, AG_HURTBOX_SPRITE, air_hurtbox_spr);
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_OFF_LEDGE, 1);

//jump
set_window_value(atk, num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, num, AG_WINDOW_VSPEED, -jump_speed);
set_window_value(atk, num, AG_WINDOW_HSPEED, -6);
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_oly_fspecial_dash"));

set_attack_value(atk, AG_NUM_WINDOWS, num);