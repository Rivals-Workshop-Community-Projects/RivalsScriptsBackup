set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("dugato"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("utilt_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 70);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("dugato"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 20);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 1);

