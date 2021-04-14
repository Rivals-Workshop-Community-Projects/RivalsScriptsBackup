set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
//set_attack_value(AT_FSPECIAL, AG_SPRITE, asset_get("goat_fspecial_grnd"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
//set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, asset_get("goat_fspecial_air"));
set_attack_value(AT_FSPECIAL, 14, 1);
set_attack_value(AT_FSPECIAL, 15, 24);
//set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, asset_get("goat_fspecial_hurt"));


set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_send"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);


set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 45);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);



set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);



var temp_attack = AT_FSPECIAL;
var temp_num = 1;

set_num_hitboxes(temp_attack, 1);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 62);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 10*2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -17*2);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 90);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 60);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 5);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 361);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 20);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, .6);



set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, asset_get("goat_cloud_move"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(temp_attack, temp_num, 41, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 62);
