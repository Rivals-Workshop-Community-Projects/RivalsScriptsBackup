set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("limit_charge"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("limit_start_sfx"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 200);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, limit_loop);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, sound_get("limit_end_sfx"));
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX_FRAME, 2);