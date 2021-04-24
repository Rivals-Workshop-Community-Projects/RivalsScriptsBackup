// no-projectiles jab to transition to when running out of magic mid-jab combo
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 8);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("jab"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, -1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("s1019_whip"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, sound_get("s1019_whip"));
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CANCEL_FRAME, 10);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_SFX, sound_get("s1019_whip"));
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_1, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_CANCEL_FRAME, 1);

set_window_value(AT_EXTRA_1, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_SFX, sound_get("s1019_whip"));
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_1, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 8, AG_WINDOW_ANIM_FRAME_START, 23);
//set_window_value(AT_EXTRA_1, 8, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_EXTRA_1, 6, AG_WINDOW_CANCEL_FRAME, 1);

set_num_hitboxes(AT_EXTRA_1, 0);