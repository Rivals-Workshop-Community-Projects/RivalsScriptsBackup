set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, 14, 1);   // AG_HAS_COOLDOWN
set_attack_value(AT_FSPECIAL, 15, 90);  // Cooldown
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

// Start-up into hold
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .04);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_pen_fspec"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

// Attack - 7 - Auto Cancel
// Hold frame
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HITPAUSE_FRAME, 0);

// Initial burst from arm
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

// Fired Projectile
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_FSPECIAL, 4, 27, .1);   // HSP on hit
set_window_value(AT_FSPECIAL, 4, 28, 0);    // VSP on hit

// recovery
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 47);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 56);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 39);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, vfx_fspecialhit);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 35);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, vfx_fspecialhit);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, vfx_fspecialhit);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 60);