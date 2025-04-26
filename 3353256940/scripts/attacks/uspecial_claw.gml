set_attack_value(AT_EXTRA_3, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("uspecial_claw"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 7);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("uspecial_claw"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);

// Startup
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_ell"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

// Claw out
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

// Zip downward
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);

// Footstool: startup
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 6);

// Footstool: Pummel 1
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 8);

// Footstool: Pummel 2
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 8);

// Footstool: Hop away
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

// Claw whiff endlag
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 30, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_3, 10, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

set_num_hitboxes(AT_EXTRA_3, 4);

// claw
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 999);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 32);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, sprite_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, HFX_GEN_SWEET);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, HFX_GEN_SPIN);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_TECHABLE, 1);

// footstool
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 45); 
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 3); 
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.2); 
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 5); 
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .5); 
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, splatter);
set_hitbox_value(AT_EXTRA_3, 2, HG_TECHABLE, 1);

// footstool
set_hitbox_value(AT_EXTRA_3, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 6);
set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -20);

// footstool launcher
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_3, 4, HG_WINDOW, 7);
set_hitbox_value(AT_EXTRA_3, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_3, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_3, 4, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_3, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_3, 4, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_3, 4, HG_ANGLE, 90); 
set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_KNOCKBACK, 8); 
set_hitbox_value(AT_EXTRA_3, 4, HG_KNOCKBACK_SCALING, 0.9); 
set_hitbox_value(AT_EXTRA_3, 4, HG_BASE_HITPAUSE, 15); 
set_hitbox_value(AT_EXTRA_3, 4, HG_HITPAUSE_SCALING, .5); 
set_hitbox_value(AT_EXTRA_3, 4, HG_VISUAL_EFFECT, splatter);
set_hitbox_value(AT_EXTRA_3, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));