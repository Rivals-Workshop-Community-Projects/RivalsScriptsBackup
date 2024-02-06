set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

// Start
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -1);

// Spin 1
set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// Spin 2
set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Pause
set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

// Final Hit
set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);

// Endlag
set_window_value(AT_UAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_UAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_num_hitboxes(AT_UAIR,5);

// Multihit 1
set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 53);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 77); // was that the bite
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(AT_UAIR, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_UAIR, 1, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, -1);

// Multihit 2
set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(AT_UAIR, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, -1);

// Multihit 3
set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(AT_UAIR, 3, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);

// Multihit 4
set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -57);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 2);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(AT_UAIR, 4, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, -1);

// Final Hit
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -67);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 82);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 87);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 5, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_UAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, -1);