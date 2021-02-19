// Airdash state

set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("airdash"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 1);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_CATEGORY, 1);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("idle_hitbox"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED, 0)
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, sound_get("airdash"));

set_num_hitboxes(AT_FTHROW, 0);