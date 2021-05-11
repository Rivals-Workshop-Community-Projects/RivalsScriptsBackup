set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("yawn"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 8);