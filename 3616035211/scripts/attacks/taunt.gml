var atk = AT_TAUNT;
var num = 1;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, hurtbox_spr);

//startup
set_window_value(atk, num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);

num++;
set_window_value(atk, num, AG_WINDOW_TYPE, 9);
set_window_value(atk, num, AG_WINDOW_LENGTH, 36);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 4);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, num, AG_WINDOW_SFX, asset_get("sfx_birdclap"));
set_window_value(atk, num, AG_WINDOW_SFX_FRAME, 4);
set_window_value(atk, num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, num, AG_WINDOW_GOTO, 2);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, num, AG_WINDOW_GOTO, 20);

num++;
set_window_value(atk, num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, num, AG_WINDOW_ANIM_FRAME_START, 16);

set_attack_value(atk, AG_NUM_WINDOWS, num);