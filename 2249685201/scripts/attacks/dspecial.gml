set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
//set_attack_value(AT_DSPECIAL, AG_SPRITE, asset_get("goat_dsmash"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_LANDING_LAG, 30);
//set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, asset_get("goat_dsmash"));
//set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, asset_get("goat_dspecial_hurt"));


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 9999);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);



set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_blow_weak2"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 0);



var temp_attack = AT_DSPECIAL;
var temp_num = 1;

set_num_hitboxes(temp_attack, 1);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 4);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 104);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, 0);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 0);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 0);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 8);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 11);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 90);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 22);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_LOCKOUT, 6);
set_hitbox_value(temp_attack, temp_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, 0.9);



set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("goat_dsmash_chain"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("goat_dsmash_mask"));
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
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 105);
