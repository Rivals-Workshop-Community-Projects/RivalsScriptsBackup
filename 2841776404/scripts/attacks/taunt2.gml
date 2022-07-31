// press shield during taunt's startup!




set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("suit_taunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("suit_hurt"));


set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 6);


set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, sound_get("sfx_susie_laugh"));
//set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 87);


set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 26);