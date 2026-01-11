var atk = AT_TAUNT;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));

var win_num = 1; //lock
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_clipin"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 14);

win_num++; //load
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 4);

win_num++; //ready
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 21);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, sound_get("glock_slideandrelease"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 20);

win_num++; //rack
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 8);

win_num++; //pause
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 9);

win_num++; //raise
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 18);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, win_num, AG_WINDOW_SFX, asset_get("sfx_shop_close"));
set_window_value(atk, win_num, AG_WINDOW_SFX_FRAME, 5);

win_num++; //aim
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 40);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 13);

win_num++; //lower
set_window_value(atk, win_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, win_num, AG_WINDOW_ANIM_FRAME_START, 17);

set_attack_value(atk, AG_NUM_WINDOWS, win_num);

set_num_hitboxes(atk, 0);