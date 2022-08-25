//this is the lyre taunt
atk = AT_TAUNT_2;

set_attack_value(atk, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(atk, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(atk, AG_NUM_WINDOWS, 4);
set_attack_value(atk, AG_OFF_LEDGE, 1);

window_num = 1; //starting up
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("lyre_spawn"));

window_num ++; //waiting for input
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //playing the lyre
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 36);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num ++; //getting out of playing the lyre
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 30);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("lyre_despawn"));


set_num_hitboxes(atk, 0);