#region // USPECIAL
set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_orca_absorb"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -7);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_waterhit_heavy"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 2);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.05);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_num_hitboxes(AT_USPECIAL, 5);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -46);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -46);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 4, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 36);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, hfx_waves_big);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);
#endregion

#region // USPECIAL 2
set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

// Start-up 2
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_orca_absorb"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 7);

// Tether 4
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// Endlag 2
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_waterhit_heavy"));
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_GOTO, 5);

// Command Cancel
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
#endregion

#region // USPECIAL Empowered
set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecialex"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecialex_hurt"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_VSPEED, -6);

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_SFX, asset_get("sfx_waterhit_heavy"));
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.5);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_CUSTOM_GRAVITY, 2);

set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.05);

set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);


set_num_hitboxes(AT_USPECIAL_GROUND, 4);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 79);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 69);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_DRIFT_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_VISUAL_EFFECT, hfx_waves_small);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITPAUSE_SCALING, .95);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_VISUAL_EFFECT, hfx_waves_big);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_USPECIAL_GROUND, 4, HG_HITBOX_GROUP, -1);
#endregion