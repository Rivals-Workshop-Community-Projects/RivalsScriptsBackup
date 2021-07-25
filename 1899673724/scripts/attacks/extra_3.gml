set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("taunt_flip"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox_ground"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);//startup
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 2);//flip
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 2);//land
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 3);//gamer
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 36);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 11);
