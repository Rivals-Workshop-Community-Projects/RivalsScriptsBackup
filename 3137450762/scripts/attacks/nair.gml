//La Reina nair.gml
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//Startup
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

//Swipe out
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HITPAUSE_FRAME, 2);

//Hold + loop
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//Recovery
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//Pre-kick hold
set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);

//Kick attack
set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 6);

//Kick hold
set_window_value(AT_NAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 7);

//Recovery
set_window_value(AT_NAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 4);


//Initial hit top
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 98);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Initial hit bottom
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 63);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Stale hit bottom
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 17);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 63);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//Stale hit top
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 98);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 54);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

//Old dropkick
/* set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 43);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 104);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 41);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 7);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 45);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 99);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1")); */
