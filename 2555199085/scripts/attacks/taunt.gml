set_attack_value(AT_TAUNT, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 77);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("crazydavecrazy"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_TAUNT, 0);
