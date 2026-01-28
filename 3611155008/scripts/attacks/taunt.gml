var atk = AT_TAUNT;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(atk, num, AG_WINDOW_LENGTH, 80);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 0);
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 1);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 16);

set_attack_value(atk, AG_NUM_WINDOWS, num);