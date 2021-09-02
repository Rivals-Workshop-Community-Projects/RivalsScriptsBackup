set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

sword_attack_spr[0, AT_FTILT] = sprite_get("sword0_ftilt");
sword_attack_hurtbox_spr[0, AT_FTILT] = sprite_get("sword0_ftilt_hurt");
sword_attack_xoff[0, AT_FTILT] = 32;
sword_attack_yoff[0, AT_FTILT] = -48;
        
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
        
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Without Swords
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_GOTO, 2);

set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
        
sword_window_min[0, AT_FTILT] = 6;
sword_window_max[0, AT_FTILT] = 8;

set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_FTILT, 6, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 7, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FTILT, 7, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 96);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

sword_window_hitbox_min[0, AT_FTILT] = 2;
sword_window_hitbox_max[0, AT_FTILT] = 2;

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 128);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, fx_plasma1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
