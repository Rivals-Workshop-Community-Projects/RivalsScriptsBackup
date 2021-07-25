set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox_idle"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 16);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 34);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 13);
