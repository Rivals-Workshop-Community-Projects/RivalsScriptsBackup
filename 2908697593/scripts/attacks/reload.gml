set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("nspecial_reload"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("nspecial_reloadair"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("nspecial_reload_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 102);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 28);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("isaac_plasmacutter_reload"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 1);