set_attack_value(AT_TAUNT, AG_SPRITE, taunt_spr);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 45);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, taunt_sfx);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 2);
