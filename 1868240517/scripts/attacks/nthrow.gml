set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("intro"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("intro"));
set_attack_value(AT_NTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("empty_sprite"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NTHROW, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 9);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED, 10);
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED, 10);

set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("rocket_long"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 10);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 11);