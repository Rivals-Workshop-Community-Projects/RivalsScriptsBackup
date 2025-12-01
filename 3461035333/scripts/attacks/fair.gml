set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);//6
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 6);

var custom_friction = air_friction + 0;

//Startup 
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 7);//6
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, custom_friction);

//Kick 1
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, custom_friction);

//Kick 2
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, custom_friction);

//Pre-kick 3
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 5);//6
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, custom_friction);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 4);

//Kick 3
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, custom_friction);

//Endlag
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 12);//13
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, custom_friction);

set_num_hitboxes(AT_FAIR, 3);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 34);//40
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 55);//70
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 35);//45
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 10);//10
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);//7
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.1);//0
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);//4
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0);//0
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 0.7);//0.8
set_hitbox_value(AT_FAIR, 1, HG_SDI_MULTIPLIER, 1);// 1.1

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 45);//40
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 75);//70
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 40);//30
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 8);//5
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 40);//361
set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 0);//10
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 8);//9
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.6);//0.55
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 9);//9
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.5);//0.5
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 3);