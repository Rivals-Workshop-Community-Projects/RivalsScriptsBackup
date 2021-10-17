set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("intro"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, 4);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("ex_guy_hurt_box"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("snap1"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 59);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);