set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);

sword_attack_spr[0, AT_BAIR] = sprite_get("sword0_bair");
sword_attack_hurtbox_spr[0, AT_BAIR] = sprite_get("sword0_bair_hurt");
sword_attack_xoff[0, AT_BAIR] = -32;
sword_attack_yoff[0, AT_BAIR] = -16;
        
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
        
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 19);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_GOTO, 8);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_BAIR, 4, AG_WINDOW_GOTO, 2);
        
sword_window_min[0, AT_BAIR] = 5;
sword_window_max[0, AT_BAIR] = 7;

set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 6, AG_WINDOW_HSPEED, 8);
set_window_value(AT_BAIR, 6, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_BAIR, 7, AG_WINDOW_LENGTH, 19);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2);

//Sweet
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -28);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 47);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Sour
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -12);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

sword_window_hitbox_min[0, AT_BAIR] = 3;
sword_window_hitbox_max[0, AT_BAIR] = 4;

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -64);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 116);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, fx_plasma2);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 4, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -32);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 110);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 70);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, fx_plasma1 );
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
