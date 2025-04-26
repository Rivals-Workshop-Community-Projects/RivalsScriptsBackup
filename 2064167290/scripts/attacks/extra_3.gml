// Fspecial landing
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);

set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);



set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 4);
/*
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("bounce"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);