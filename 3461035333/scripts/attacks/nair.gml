set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);//4

//Startup
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);//7
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6);

//Active
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);//4
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

//Endlag
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 14);//17
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);//30
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 40);//123
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 57);//28
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 7);//6
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);//55
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);//7
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .7);//.7
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);//7
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .6);//.7
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 0.9); //1

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);//30
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 130);//123
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 20);//28
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 7);//6
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 60);//55
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);//7
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .7);//.7
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);//7
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .6);//.7
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 0.9); //1

// set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
// set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
// set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
// set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 40);//30
// set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -25);
// set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 60);//90
// set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 25);
// set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
// set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
// set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
// set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);//40
// set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .7);//.6
// set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .6);
// set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
// set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
// set_hitbox_value(AT_NAIR, 1, HG_IGNORES_PROJECTILES, 0);

// set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
// set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
// set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
// set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
// set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -40);
// set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -25);
// set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
