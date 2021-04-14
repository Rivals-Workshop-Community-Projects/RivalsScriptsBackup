set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
//set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, asset_get("goat_nspecial_cloud"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
//set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, asset_get("goat_nspecial_cloud"));
//set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, asset_get("bird_nspecial_hurt"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 1);



var temp_attack = AT_FSPECIAL_AIR;
var temp_num = 1;

set_num_hitboxes(temp_attack, 2);


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 18);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, 0);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 80);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 80);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 4);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 12);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 157);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 10);
set_hitbox_value(temp_attack, temp_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(temp_attack, temp_num, HG_FINAL_BASE_KNOCKBACK, 6);



set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("goat_cloud_pop"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("goat_cloud_pop_mask"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(temp_attack, temp_num, 41, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 18);


temp_num+=100;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 18);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, 0);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 80);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 80);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 4);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 4);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 22);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, 0);



set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("goat_cloud_pop"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("goat_cloud_pop_mask"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(temp_attack, temp_num, 41, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 18);
