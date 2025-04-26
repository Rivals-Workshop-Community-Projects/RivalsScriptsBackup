set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("head_off"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("dashbox"));
set_attack_value(AT_TAUNT, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 9);

//start, head jiggle
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("head_jiggle"));

//head off
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("head_off"));

//head off hold
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);

//smear holding head
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//holding head (loop)
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);

//return smear 1
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//head hold 2
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 1);

//return smear 2
set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_SFX, sound_get("head_off"));

//return to idle
set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAMES, 2);

//MunoPhone
set_attack_value(AT_TAUNT, AG_MUNO_ATTACK_EXCLUDE, 1);
