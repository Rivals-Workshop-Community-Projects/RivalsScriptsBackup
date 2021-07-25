set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 200); // hmm
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("owen_hurtbox"));
set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_EXCLUDE, 1);

// mew
set_window_value(AT_TAUNT, 1, AG_WINDOW_INVINCIBILITY, 0); // :trollpensive:
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("owen_mew"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);

// put the name tag back
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);