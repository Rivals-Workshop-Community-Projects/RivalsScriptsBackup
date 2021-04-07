set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 13);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_FAIR, 9);

//Upper ice
set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 57);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 75);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -75);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 20);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 1);




//Middle ice
set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 48);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 35);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 72);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 30);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 5, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 35);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 95);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 20);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 6, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 35);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, 1);





//Bottom ice
set_hitbox_value(AT_FAIR, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 45);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FAIR, 7, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 7, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 7, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE, 350);
set_hitbox_value(AT_FAIR, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 7, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 7, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 67);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 27);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 8, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE, 350);
set_hitbox_value(AT_FAIR, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 8, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 8, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 9, HG_PARENT_HITBOX, 9);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 9, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_X, 90);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_Y, 15);
set_hitbox_value(AT_FAIR, 9, HG_WIDTH, 20);
set_hitbox_value(AT_FAIR, 9, HG_HEIGHT, 20);
set_hitbox_value(AT_FAIR, 9, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 9, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 9, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 9, HG_ANGLE, 350);
set_hitbox_value(AT_FAIR, 9, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 9, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 9, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FAIR, 9, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 9, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FAIR, 9, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 9, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 9, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FAIR, 9, HG_HITBOX_GROUP, 1);



