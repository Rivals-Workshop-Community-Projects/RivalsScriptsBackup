set_attack_value(AT_EXTRA_3, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("cover"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("hurtbox_box"));

//------------------------------------------------------------------------------
// Cover Windows
//------------------------------------------------------------------------------

set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);

// Startup
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("sfx_cover_start"));
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 2);

// Idle
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);     // 0 = normal, 9 = loop
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);

// Knock
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, sound_get("sfx_cover_knock"));
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 4);

// Aim to Idle
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 5);

// Exit
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 0);