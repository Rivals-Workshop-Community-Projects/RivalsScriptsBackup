// Awakening Instakill counter

set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("tech"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("idle_hitbox"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("counter_awakening"));

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 99999999);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 99999999);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// Fake "GAME!"

set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 99999999);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

// Fake win screen to lure the opponent's creator into a false sense of security BWAHAHAHAHAHAHAHAHAHA

set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 99999999);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_TAUNT_2, 0);