set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR,4);

// Umbrella Hits
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 58);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Umbrella 2
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 68);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 41);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Tipper Hits
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 63);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 54);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 77);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_FAIR, 3, HG_TIPPER, 1);

// Tipper 2
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 28);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -3);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 25);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_FAIR, 4, HG_TIPPER, 1);
