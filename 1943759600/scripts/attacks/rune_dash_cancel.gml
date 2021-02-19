//RUNE A: Dash Cancels
var atk = AT_DASHCANCEL;
var wnd = 1;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_SPRITE, sprite_get("walk"));
set_attack_value(atk, AG_NUM_WINDOWS, 1);
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(atk,wnd,AG_WINDOW_TYPE,1);
set_window_value(atk,wnd,AG_WINDOW_LENGTH,16);
set_window_value(atk,wnd,AG_WINDOW_ANIM_FRAMES,8);

//set_window_value(atk,wnd,AG_WINDOW_HSPEED_TYPE,2);
//set_window_value(atk,wnd,AG_WINDOW_HSPEED,12);