set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

//Active and launch backwards and in the air
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, -4);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Airborne endlag
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_UTILT, 3, AG_WINDOW_VSPEED, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

/*

//Landing (IASA)
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

//End lag
set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 5);
*/
set_num_hitboxes(AT_UTILT, 5);

/*
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 85);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 120);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 12);
//set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, .8);
//set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
*/

//Top
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 72);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, .8);
//set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));

//Bottom Front
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 94);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, .8);
//set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));

//Late top
set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 46);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 60);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 111 );
//set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));

//Late bottom
set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -20);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 66);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, -30);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 4, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 111 );
//set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));

//Late Bottom tip
set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -32);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 20);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, -90);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UTILT, 5, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 5, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 112 ); //305
//set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));


//jab 1 projectile
set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 18);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT, 6, HG_SHAPE, 0 );
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT, 6, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_UTILT, 6, HG_SDI_MULTIPLIER, .1);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_UTILT, 6, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_UTILT, 6, HG_IGNORES_PROJECTILES, 0 );
set_hitbox_value(AT_UTILT, 6, HG_TECHABLE, 0 );
set_hitbox_value(AT_UTILT, 6, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_UTILT, 6, HG_THROWS_ROCK, 0 );
set_hitbox_value(AT_UTILT, 6, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_SPRITE, sprite_get("abyss_projectile_up"));
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_MASK, -1); // was yarnball_cmask
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_VSPEED, -13);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0 );
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_PLASMA_SAFE, 1 );
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_DESTROY_EFFECT, 112); // was 109
set_hitbox_value(AT_UTILT, 6, HG_EFFECT, 99); //this effect is used for knowing if it's a rune projectile

/*
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -39);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 76);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 4);
*/