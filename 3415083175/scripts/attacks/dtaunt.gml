set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("dtaunt"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2)

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 72);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("pencil"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 0);