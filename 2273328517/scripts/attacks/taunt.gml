set_attack_value(AT_TAUNT, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_attack_value(AT_TAUNT, AG_LANDING_LAG, 4);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 120);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 18);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("baby"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);
/*
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("snap1"));
*/