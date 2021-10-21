set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("kick"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("kick_hurt"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);

//startup
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 5);

//active
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 7);

//recovery 1
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 8);

//recovery 2
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_FTHROW, 1);

//throw hitbox
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 66);
//set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, sound_get("mediumsoku"));