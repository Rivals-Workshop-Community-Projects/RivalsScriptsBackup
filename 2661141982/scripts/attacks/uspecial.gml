set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
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
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

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
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_USPECIAL, 3);
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
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
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
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 17);//19
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 44);//50
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 59);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);//80
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 150);
//set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
//set_hitbox_value(AT_USPECIAL, 2, HG_HIT_LOCKOUT, 10);

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
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, splashfx);//150
//set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);

//set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_COLLISION_SPRITE, 0);
//set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
//set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
/*
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);// stationary projectile
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 18);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 300);
//set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .3);
//set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_HSPEED, 18);
*/

