set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);

sword_attack_spr[0, AT_FAIR] = sprite_get("sword0_ftilt");
sword_attack_hurtbox_spr[0, AT_FAIR] = sprite_get("sword0_ftilt_hurt");
sword_attack_xoff[0, AT_FAIR] = 32;
sword_attack_yoff[0, AT_FAIR] = -8;
        
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
        
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_GOTO, 8);

//Without Sword
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_GOTO, 2);
        
sword_window_min[0, AT_FAIR] = 5;
sword_window_max[0, AT_FAIR] = 7;

set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FAIR, 6, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 96);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

sword_window_hitbox_min[0, AT_FAIR] = 2;
sword_window_hitbox_max[0, AT_FAIR] = 2;

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 2, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 144);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, fx_plasma1);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
