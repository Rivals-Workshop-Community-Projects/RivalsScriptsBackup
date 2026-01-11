set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 34);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 9);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("vfx_sb_taunt_laugh_1"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 18);
