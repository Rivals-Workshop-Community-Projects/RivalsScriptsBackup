set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//Startup
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sfx_star_allies_friend_join);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 1);

//Starts to vacuum
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 15);

//Endlag
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_DSPECIAL_2, 1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 26);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PLASMA_SAFE, true);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 26);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 145);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, 27);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, sfx_star_allies_clean_vac_throw);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_PLASMA_SAFE, true);

set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_X, 27);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 35);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 145);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EFFECT, 9);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, sfx_star_allies_clean_vac_throw);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_PLASMA_SAFE, true);