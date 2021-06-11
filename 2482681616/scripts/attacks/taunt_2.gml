//pull my regi trigger
set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt2"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("hurt_box"));

set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);

//Looping
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 4);

//While Slow Start is active
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_TAUNT_2, 0);
