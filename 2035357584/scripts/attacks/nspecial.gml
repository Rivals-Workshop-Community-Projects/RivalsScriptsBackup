set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialair"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecialair_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 7);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 27);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 37);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 12);