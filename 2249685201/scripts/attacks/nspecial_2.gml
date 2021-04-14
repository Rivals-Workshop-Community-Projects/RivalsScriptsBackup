set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
//set_attack_value(AT_NSPECIAL_2, AG_SPRITE, asset_get("goat_dspecial_grnd"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
//set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, asset_get("goat_dspecial_air"));
set_attack_value(AT_NSPECIAL_2, 14, 1);
set_attack_value(AT_NSPECIAL_2, 15, 30);
//set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, asset_get("goat_NSPECIAL_2_hurt"));
//set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_AIR_SPRITE, asset_get("goat_NSPECIAL_2_air_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NSPECIAL_2, 2, 22, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);



set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);



var temp_attack = AT_NSPECIAL_2;
var temp_num = 1;

set_num_hitboxes(temp_attack, 1);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 17);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 15);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 36);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -40);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 0);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 0);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
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


set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("goat_dspecial_chain"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
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
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 24);
