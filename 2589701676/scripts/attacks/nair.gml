set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//startup
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

//first hit
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_ice_chain"));

//space
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//second hit
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_ice_chain"));

//recovery
set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


//hitboxes
set_num_hitboxes(AT_NAIR, 6);

//body 1
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_DRIFT_MULTIPLIER, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//top 1
set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -35);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 20);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_DRIFT_MULTIPLIER, 0.5);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 330);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//bottom 1
set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, 5);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 20);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_DRIFT_MULTIPLIER, 0.5);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 110);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//body 2
set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//top 2
set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -65);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 35);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 20);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//bottom 2
set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, 5);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, -35);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 20);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 30);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
