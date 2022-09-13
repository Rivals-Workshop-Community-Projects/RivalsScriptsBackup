set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
//set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 10);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
//Shoryu
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
// set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
// set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 4);
// set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -9);
// set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_CANCEL_TYPE, 2);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_CANCEL_FRAME, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Legdrop Rekka
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 10);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, 8);
//set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

/*water fist
//Rekka (need help making this work on special press)
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);
*/
set_num_hitboxes(AT_USPECIAL, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);//early hit uspecial
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 21);//19
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -42);//65
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 52);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 83);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);//80
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_HITPAUSE, 5);	
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 161 );//161
//set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
//set_hitbox_value(AT_USPECIAL, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);//late hit uspecial
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 17);//19
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 44);//50
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 59);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);//80
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 150);
//set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
//set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 10);

//set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 21);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -17);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 39);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, small);
//set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1.0);

//set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 63);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, small);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1.0);

//set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 21);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -17);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 39);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, small);
//set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1.0);

set_hitbox_value(AT_USPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_PARTICLE_NUM, 1);
/*
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);// Moving projectile
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 150);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_USPECIAL, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GRAVITY, .1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, splashfx);//6
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, splashfx);