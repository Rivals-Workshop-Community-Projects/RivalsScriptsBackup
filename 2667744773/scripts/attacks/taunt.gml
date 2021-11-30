set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("baka"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
