set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 0);


set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_nspecial_grab_miss"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .3);

// Inital Grab
// On hit, jumps to window 4.
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .3);


set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);    // 6 frames
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

// Fancy Grab Code
// Holding in place
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);    // 5 frames (reuse window 3)
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);

// Turn around
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);   // 4 frames
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

// Back throw
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

// Endlag
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 3);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 20);   // 4 frames
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

// Forward Throw Start-Up
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 9);    // 2 frames
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

// Forward Throw Hit
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 2);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 2);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 12);   // 3 frames
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);


set_num_hitboxes(AT_NSPECIAL, 3);
// Grab
set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -59);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);

// Back Throw
set_hitbox_value(AT_NSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, -22);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -47);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 106);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 106);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, -7);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -14);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.2);

// Forward Throw
set_hitbox_value(AT_NSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 47);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -59);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 106);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 106);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -14);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1.2);