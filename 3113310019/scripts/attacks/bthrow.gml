set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("bthrow"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("bthrow_hurt"));
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("bthrow_air"));
set_attack_value(AT_NTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("bthrow_air_hurt"));

// startup
set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 20);

// throw
set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 7);

// endlag
set_window_value(AT_NTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 1);