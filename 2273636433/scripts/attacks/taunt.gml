set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 42);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES,14);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("pillthrow"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 35);

set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_MISC_ADD, "Cooldown: 20f (ONLY after the pattern resets)
Hold Parry to not swap your megavitamin");