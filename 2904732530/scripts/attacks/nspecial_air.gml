//NSPECIAL JUNK

set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_NSPECIAL_AIR, 4);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("nspec_junk1"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_GRAVITY, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("nspec_junk2"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_GRAVITY, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("nspec_junk3"));
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_VSPEED, -6.5);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_GRAVITY, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_SPRITE, sprite_get("nspec_junk4"));
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_GRAVITY, .6);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_GROUP, -1);





