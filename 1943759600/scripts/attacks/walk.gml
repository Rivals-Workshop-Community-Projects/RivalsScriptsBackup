var atk = AT_EXTRA_2;
var wnd = 1;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("walk"));
set_attack_value(atk, AG_NUM_WINDOWS, 1);
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(atk,wnd,AG_WINDOW_TYPE,9);
set_window_value(atk,wnd,AG_WINDOW_LENGTH,28);
set_window_value(atk,wnd,AG_WINDOW_ANIM_FRAMES,8);

set_window_value(atk,wnd,AG_WINDOW_HSPEED_TYPE,0);

set_window_value(atk,wnd,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
set_window_value(atk,wnd,AG_WINDOW_CUSTOM_GROUND_FRICTION,0);
//set_window_value(atk,wnd,AG_WINDOW_HSPEED,12);
