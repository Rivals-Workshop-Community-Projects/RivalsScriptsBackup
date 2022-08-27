set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, hurtbox_spr);

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("sfx_swish_weak"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_TAUNT, 3, AG_WINDOW_GOTO, 10);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 20);

set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 26);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_TAUNT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_SFX, asset_get("sfx_blow_medium2"));
set_window_value(AT_TAUNT, 7, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_TAUNT, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 27);

set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 28);


set_num_hitboxes(AT_TAUNT, 0);
