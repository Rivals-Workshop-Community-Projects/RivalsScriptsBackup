set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//Window 1
set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

//Window 2
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 0);

//Window 3
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_UTILT,1);

// Hitbox 1
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 13);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 33);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8); // 1
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 85); // 2
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6); // 3
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .5); // 4
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2); // 5
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6); // 6
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35); // 7
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 0); // 8
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
