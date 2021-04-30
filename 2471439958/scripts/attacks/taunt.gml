set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("idle"));
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 0);