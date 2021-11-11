set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

sword_attack_spr[0, AT_DTILT] = sprite_get("sword0_dtilt");
sword_attack_hurtbox_spr[0, AT_DTILT] = sprite_get("sword0_dtilt_hurt");
sword_attack_xoff[0, AT_DTILT] = 24;
sword_attack_yoff[0, AT_DTILT] = -40;

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Unsworded
set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX_FRAME,5);
set_window_value(AT_DTILT, 4, AG_WINDOW_GOTO, 2);

set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

sword_window_min[0, AT_DTILT] = 6;
sword_window_max[0, AT_DTILT] = 8;

set_window_value(AT_DTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_weak"));
set_window_value(AT_DTILT, 6, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT,1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 68);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

sword_window_hitbox_min[0, AT_DTILT] = 2;
sword_window_hitbox_max[0, AT_DTILT] = 2;

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 2, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 7);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, 34);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 108);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, fx_plasma1);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));