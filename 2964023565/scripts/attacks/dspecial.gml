set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12); //Reelin' back
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3); //Spit 1
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, 1);
//set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_spit"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_GOTO, 4);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 3); //Spit 2
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_spit"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_GOTO, 4);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_spit"));

set_num_hitboxes(AT_DSPECIAL, 3);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2); //Gloop 1
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.05);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_frog_dspecial_hit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 265);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_DSPECIAL, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_proj"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_proj_mask"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, false);
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 5);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2); //Gloop 2
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_frog_dspecial_hit"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 265);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 1);
//set_hitbox_value(AT_DSPECIAL, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("dspecial_proj"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_proj_mask"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, false);
//set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 5);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2); //Rapid spawn on top
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 180);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_frog_dspecial_hit"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_proj_mask"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTENDED_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2); //Explosion Gloop
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 900);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 900);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_orcane_dsmash"));
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, sprite_get("dspecial_proj_explosion"));
//set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("dspecial_proj_mask"));
//set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_FRICTION, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, 9);
