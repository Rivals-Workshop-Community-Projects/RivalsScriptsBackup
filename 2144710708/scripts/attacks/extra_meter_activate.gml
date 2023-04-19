// used for activating hype (abyss rune)

set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("hype_activate"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 200); // hmm
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("owen_hurtbox"));

// dab
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_INVINCIBILITY, 1); // Lol!
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 0);