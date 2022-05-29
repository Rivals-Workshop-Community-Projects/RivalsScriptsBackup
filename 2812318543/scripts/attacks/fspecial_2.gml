set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);

set_num_hitboxes(AT_FSPECIAL_2, 3);

//fspec base proj, spawns others
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 94);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, 0);
//set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("pandy_fproj"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pandy_fproj"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1); //has one through code don't worry
//multihit
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 94);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pandy_fproj"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
//finisher
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 94);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 120);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pandy_fproj"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);




//set_hitbox_value(AT_FSPECIAL_2, 1, , );