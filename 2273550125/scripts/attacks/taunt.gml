set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("idle_hurt"));
set_attack_value(AT_TAUNT, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 80);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 120);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("dog_ohyes"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 1);