set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("hatch"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 5); 
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("hatch_hurt"));
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 18); 
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, hatch_startup);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 6); 
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, sound_get("hatch_hyperbeam"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

//attack
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 24); 
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 24); 
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 24); 
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_SFX_FRAME, 23);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

//endlag
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 40); 
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

set_num_hitboxes(AT_EXTRA_1, 8);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -10); 
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 46); 
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 46); 
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2); 
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 1, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 4); 
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -10); 
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 76); 
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 76); 
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 2); 
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 2, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME, 8); 
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -10); 
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 116); 
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 116); 
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 2); 
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 3, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 4, HG_WINDOW_CREATION_FRAME, 12); 
set_hitbox_value(AT_EXTRA_1, 4, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_Y, -10); 
set_hitbox_value(AT_EXTRA_1, 4, HG_WIDTH, 160); 
set_hitbox_value(AT_EXTRA_1, 4, HG_HEIGHT, 160); 
set_hitbox_value(AT_EXTRA_1, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_DAMAGE, 2); 
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 4, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_EXTRA_1, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_EXTRA_1, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_EXTRA_1, 4, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 4, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 4, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 5, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 5, HG_WINDOW_CREATION_FRAME, 16); 
set_hitbox_value(AT_EXTRA_1, 5, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_Y, -10); 
set_hitbox_value(AT_EXTRA_1, 5, HG_WIDTH, 230); 
set_hitbox_value(AT_EXTRA_1, 5, HG_HEIGHT, 230); 
set_hitbox_value(AT_EXTRA_1, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_DAMAGE, 2); 
set_hitbox_value(AT_EXTRA_1, 5, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 5, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_EXTRA_1, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_EXTRA_1, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_EXTRA_1, 5, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 5, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 5, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 6, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 6, HG_WINDOW_CREATION_FRAME, 20); 
set_hitbox_value(AT_EXTRA_1, 6, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_Y, -10); 
set_hitbox_value(AT_EXTRA_1, 6, HG_WIDTH, 300); 
set_hitbox_value(AT_EXTRA_1, 6, HG_HEIGHT, 300); 
set_hitbox_value(AT_EXTRA_1, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_DAMAGE, 2); 
set_hitbox_value(AT_EXTRA_1, 6, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_1, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 6, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_EXTRA_1, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_EXTRA_1, 6, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_EXTRA_1, 6, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 6, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 6, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_EXTRA_1, 7, HG_MUNO_HITBOX_NAME, "Max Growth");
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 7, HG_WINDOW, 0);
set_hitbox_value(AT_EXTRA_1, 7, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_EXTRA_1, 7, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_Y, -10); 
set_hitbox_value(AT_EXTRA_1, 7, HG_WIDTH, 390); 
set_hitbox_value(AT_EXTRA_1, 7, HG_HEIGHT, 390); 
set_hitbox_value(AT_EXTRA_1, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_DAMAGE, 1); 
set_hitbox_value(AT_EXTRA_1, 7, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_1, 7, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_EXTRA_1, 7, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_EXTRA_1, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 7, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_EXTRA_1, 7, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 7, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_EXTRA_1, 7, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_EXTRA_1, 8, HG_MUNO_HITBOX_NAME, "Launcher");
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_WINDOW, 6);
set_hitbox_value(AT_EXTRA_1, 8, HG_WINDOW_CREATION_FRAME, 2); 
set_hitbox_value(AT_EXTRA_1, 8, HG_LIFETIME, 4); 
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_Y, -10); 
set_hitbox_value(AT_EXTRA_1, 8, HG_WIDTH, 390); 
set_hitbox_value(AT_EXTRA_1, 8, HG_HEIGHT, 390); 
set_hitbox_value(AT_EXTRA_1, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_1, 8, HG_DAMAGE, 6); 
set_hitbox_value(AT_EXTRA_1, 8, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 8, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_1, 8, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_EXTRA_1, 8, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_VISUAL_EFFECT, 130);
set_hitbox_value(AT_EXTRA_1, 8, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_EXTRA_1, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 8, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_EXTRA_1, 8, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_EXTRA_1, 8, HG_SDI_MULTIPLIER, 1);

