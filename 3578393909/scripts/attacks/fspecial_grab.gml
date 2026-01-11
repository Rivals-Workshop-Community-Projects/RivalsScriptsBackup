var atk = AT_FSPECIAL_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, 1);

var win_num = 1; //grab
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 4);

win_num++; //hold
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(atk, win_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, win_num, AG_WINDOW_VSPEED_TYPE, 1);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);