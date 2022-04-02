//this is the lyre taunt
atk = AT_TAUNT_2;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt2_wip"));
set_attack_value(atk, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);
set_attack_value(atk, AG_OFF_LEDGE, 1);

window_num = 1; //starting up
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);

window_num ++; //playing the lyre
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //getting out of playing the lyre
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 14);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(atk, 0);