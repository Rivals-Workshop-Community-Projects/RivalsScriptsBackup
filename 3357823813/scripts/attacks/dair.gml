set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);
//set_attack_value(AT_DAIR, AG_WINDOW_CUSTOM_GRAVITY , 1);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//Startup
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -12);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_USES_CUSTOM_GRAVITY, .05);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("sfx_shockwave_jump"));

//Hang
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_USES_CUSTOM_GRAVITY, .2);

//Active (Dive/Early Hit)
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 19);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_USES_CUSTOM_GRAVITY, 2);

//Active (Dive/Late Hit)
set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, 17);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 4, AG_USES_CUSTOM_GRAVITY, 2);

//land
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_HITPAUSE_FRAME, 5);
set_window_value(AT_DAIR, 5, AG_USES_CUSTOM_GRAVITY, gravity_speed);

//land 
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_USES_CUSTOM_GRAVITY, gravity_speed);

//Endlag
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 7, AG_USES_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 4);

//Falling Hitbox (Early Hit)
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 95);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

//Falling Hitbox (Late Hit)
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);

//Landing Hitbox
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 6);
//set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 85);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 72);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);

//shockwave
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 64);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 64);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DAIR, 4, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DAIR, 4, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("dair_proj"));
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_AIR_FRICTION, 12);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_GROUND_FRICTION, .03);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_ANIM_SPEED, .35);