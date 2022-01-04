set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
//set_attack_value(AT_EXTRA_2, AG_SPRITE, asset_get("cat_fspecial_star"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 0);
//set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, asset_get("cat_fspecial_star_air"));
set_attack_value(AT_EXTRA_2, 14, 0);
set_attack_value(AT_EXTRA_2, 15, 0);
//set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, asset_get("cat_fspecial_star_hurt"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 6);


set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .6);


var temp_attack = AT_EXTRA_2;
var temp_num = 1;

set_num_hitboxes(temp_attack, 1);


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 45);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 25);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -25);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 60);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 60);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 1);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 60);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 111);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, .6);



//set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("cat_fspecial_star_proj"));
//set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("cat_fspecial_star_proj"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_UNBASHABLE, 25);
set_hitbox_value(temp_attack, temp_num, 41, -25);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_LIFESPAN, 45);


temp_num += 1;



set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 0);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, 0);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 100);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 100);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 2);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 50);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 112);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_ori_seinhit_weak"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(temp_attack, temp_num, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, 0);



//set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("cat_fspecial_star_proj_big"));
//set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("cat_fspecial_star_proj_big"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(temp_attack, temp_num, 41, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
