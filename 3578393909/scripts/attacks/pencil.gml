var atk = AT_TAUNT_2;

set_attack_value(atk, AG_SPRITE, sprite_get("pencil"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("pencil_hurt"));

var win_num = 1;
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_shop_open"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 9);

win_num++;
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 3);

win_num++;
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 7);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);