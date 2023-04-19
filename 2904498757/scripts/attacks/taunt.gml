set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 22);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 18);
