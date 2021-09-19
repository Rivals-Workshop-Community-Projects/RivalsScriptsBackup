set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 17); //start up
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 37); //throw and recovery
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));

set_num_hitboxes(AT_USPECIAL_2, 0);

set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("upspecial_proj")); //projectile
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, rockeggpowfx);

set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 2); //regular pow
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 180);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 2); //totem pow
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 180);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 150);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE_FLIPPER, 6);