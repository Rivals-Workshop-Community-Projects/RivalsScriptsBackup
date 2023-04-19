set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 9);

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 18);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_GOTO, 9);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_USPECIAL, 7);

//Initial Fall
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 38);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 106);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.9);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 11);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 295);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Falling
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Grounded
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -17);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 78);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 34);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 6);

//Rising
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 56);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -24);
