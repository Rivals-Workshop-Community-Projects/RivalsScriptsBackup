set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_grounded"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
//set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
//set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("bowser_screech"));

// flight
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);


set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


// set_num_hitboxes(AT_USPECIAL, 7);

// set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
// set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
// set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 4);
// set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -34);
// set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 119);
// set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 64);
// set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
// set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
// set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
// set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
// set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
// set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
// set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 10);
// set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .2);
// set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
// set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
// set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 4);


// set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
// set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
// set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
// set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
// set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 4);
// set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -34);
// set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);
// set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 9);


// set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
// set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
// set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
// set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
// set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 4);
// set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -34);
// set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);
// set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 9);

// set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
// set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4);
// set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 4);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -34);
// set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);
// set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 9);

// set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 3);
// set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 4);
// set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 2);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 4);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -34);
// set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);
// set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 9);


// set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 6);
// set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
// set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 4);
// set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 10);
// set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 4);
// set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -34);
// set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 119);
// set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 64);
// set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 0);
// set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);
// set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 2);
// set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 90);
// set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, .9);
// set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 10);
// set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, .6);
// set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 304);
// set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
// set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 6);


set_num_hitboxes(AT_USPECIAL, 7);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 110);//119
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, .5);


set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);


set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 115);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 7, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE_FLIPPER, 6);
