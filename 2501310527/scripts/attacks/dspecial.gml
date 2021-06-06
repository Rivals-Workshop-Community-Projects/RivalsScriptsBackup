set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//Startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 23);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("grab_smw"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);

//Aiming
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);

//Shooting the Mini Bill
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, -4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(AT_DSPECIAL, 10);

//Mini Bill Forward
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("sniper_bullet"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, blaster_smoke_tiny);

//Mini Bill Diagonally Up 1
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("sniper_bullet"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, blaster_smoke_tiny);

//Mini Bill Diagonally Down 1
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("sniper_bullet"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, blaster_smoke_tiny);

//Mini Bill Diagonally Up2
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("sniper_bullet"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, blaster_smoke_tiny);

//Mini Bill Diagonally Down2
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("sniper_bullet"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, blaster_smoke_tiny);

//Mini Bill Diagonally Up3
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("sniper_bullet"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, blaster_smoke_tiny);

//Mini Bill Diagonally Down3
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("sniper_bullet"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, blaster_smoke_tiny);

//Blaster Mini Bill Forward
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 120);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_MASK, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 8, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
set_hitbox_value(AT_DSPECIAL, 8, HG_PROJECTILE_DESTROY_EFFECT, blaster_smoke_tiny);

//Blaster Mini Bill Diagonally Up
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 120);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_MASK, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_ell_dspecial_hit"));
set_hitbox_value(AT_DSPECIAL, 9, HG_PROJECTILE_DESTROY_EFFECT, blaster_smoke_tiny);

//Blaster Mini Bill Diagonally Down
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 120);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_SPRITE, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_MASK, sprite_get("sniper_bullet_strong"));
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(AT_DSPECIAL, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 10, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 10, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_ell_dspecial_hit"));
set_hitbox_value(AT_DSPECIAL, 10, HG_PROJECTILE_DESTROY_EFFECT, blaster_smoke_tiny);