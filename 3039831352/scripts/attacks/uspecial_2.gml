atk = AT_USPECIAL_2; //rainbow ring jump

set_attack_value(atk, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 8);

window_num = 1; //spin jump
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);

window_num ++; //end spin
//set_window_value(atk, window_num, AG_WINDOW_TYPE, 7);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

set_num_hitboxes(atk, 0);