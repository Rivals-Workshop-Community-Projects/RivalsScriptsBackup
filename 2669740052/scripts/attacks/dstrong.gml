set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//Buildup To Charge
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

//Charge
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//Buildup To Hitbox
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//Hitbox
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 10);

//Impact
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//Recovery
set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);

//Hitboxes
set_num_hitboxes(AT_DSTRONG,9);

var _anim_spd = 0.25;
var _anim_lifetime_small = 54;
var _anim_lifetime_mid = 56;
var _anim_lifetime_large = 64;

//Inner Right
set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, _anim_lifetime_small);//14
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 122);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("rock11_proj"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("rock11_proj"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("rock11_proj"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, _anim_spd);//0.5
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

//Inner Left
set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, _anim_lifetime_small);//14
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 122);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 135);//225
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("rock11left_proj"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_MASK, sprite_get("rock11left_proj"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("rock11left_proj"));
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ANIM_SPEED, _anim_spd);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

//Middle Right
set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, _anim_lifetime_mid);//14
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 122);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("rock12_proj"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_MASK, sprite_get("rock12_proj"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("rock12_proj"));
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ANIM_SPEED, _anim_spd);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

//Middle Left
set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, _anim_lifetime_mid);//14
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 122);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("rock12left_proj"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_MASK, sprite_get("rock12left_proj"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("rock12left_proj"));
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ANIM_SPEED, _anim_spd);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

//Far Right
set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, _anim_lifetime_large);//14
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 122);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 45+15);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("rock13_proj"));
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_MASK, sprite_get("rock13_proj"));
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("rock13_proj"));
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_ANIM_SPEED, _anim_spd);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 304);

//Far Left
set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, _anim_lifetime_large);//14
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 122);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 20);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 135-15);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_SPRITE, sprite_get("rock13left_proj"));
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_MASK, sprite_get("rock13left_proj"));
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("rock13left_proj"));
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_ANIM_SPEED, _anim_spd);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 304);

//Stomp Middle
set_hitbox_value(AT_DSTRONG, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 8);//14
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 36);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 69);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 15);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 12);//15
set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 304);

//Stomp Right
set_hitbox_value(AT_DSTRONG, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 8);//14
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, 31);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -23);
set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 41);
set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, 0);

//Stomp Left
set_hitbox_value(AT_DSTRONG, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 9, HG_LIFETIME, 8);//14
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_X, -30);
set_hitbox_value(AT_DSTRONG, 9, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSTRONG, 9, HG_WIDTH, 43);
set_hitbox_value(AT_DSTRONG, 9, HG_HEIGHT, 51);
set_hitbox_value(AT_DSTRONG, 9, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 9, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, 9, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 9, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 9, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 9, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 9, HG_HITPAUSE_SCALING, 0);


/*
set_num_hitboxes(AT_DSTRONG,1);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 160);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);