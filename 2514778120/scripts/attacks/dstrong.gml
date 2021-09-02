set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);

sword_attack_spr[1, AT_DSTRONG] = sprite_get("sword1_dstrong");
sword_attack_hurtbox_spr[1, AT_DSTRONG] = sprite_get("sword1_dstrong_hurt");
sword_attack_xoff[1, AT_DSTRONG] = 16;
sword_attack_yoff[1, AT_DSTRONG] = -40;
sword_attack_charge_window[1, AT_DSTRONG] = 8;

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO, 14);

//With sword
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 46);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

sword_window_min[1, AT_DSTRONG] = 8;
sword_window_max[1, AT_DSTRONG] = 13;
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 9, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_DSTRONG, 9, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSTRONG, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 11, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 11, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_DSTRONG, 11, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSTRONG, 12, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSTRONG, 13, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSTRONG, 13, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 13, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 13, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 29);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 98);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

sword_window_hitbox_min[1, AT_DSTRONG] = 2;
sword_window_hitbox_max[1, AT_DSTRONG] = 3;

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 18);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 208);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, fx_plasmatip);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_fspecial_slash"));

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 12);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -48);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, 18);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 208);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 55);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, fx_plasmatip);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_fspecial_slash"));

