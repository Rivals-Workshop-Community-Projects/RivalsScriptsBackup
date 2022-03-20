set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 30);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_ashton_SUS"));

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 35);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 31);