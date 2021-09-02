set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);

sword_attack_spr[0, AT_DAIR] = sprite_get("sword0_dair");
sword_attack_hurtbox_spr[0, AT_DAIR] = sprite_get("sword0_dair");
sword_attack_xoff[0, AT_DAIR] = 4;
sword_attack_yoff[0, AT_DAIR] = 16;

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_uptilt_single"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_GOTO, 13);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_ori_uptilt_single"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

sword_window_min[0, AT_DAIR] = 7;
sword_window_max[0, AT_DAIR] = 12;

set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_DAIR, 7, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 10, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 10, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 11, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DAIR, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 12, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 12, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_DAIR, 5);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 56);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 26);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 26);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 26);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 64);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 5);

sword_window_hitbox_min[0, AT_DAIR] = 6;
sword_window_hitbox_max[0, AT_DAIR] = 8;

//Sour
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 6, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 9);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 56);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 96);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 60);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, fx_plasma2);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 6);

//Sweet
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 7, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 9);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, 24);
set_hitbox_value(AT_DAIR, 7, HG_WIDTH, 48);
set_hitbox_value(AT_DAIR, 7, HG_HEIGHT, 64);
set_hitbox_value(AT_DAIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 12);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 7, HG_VISUAL_EFFECT, fx_plasmatip);
set_hitbox_value(AT_DAIR, 7, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

//Sour
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 8, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 10);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DAIR, 8, HG_WIDTH, 48);
set_hitbox_value(AT_DAIR, 8, HG_HEIGHT, 96);
set_hitbox_value(AT_DAIR, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 8, HG_ANGLE, 75);
set_hitbox_value(AT_DAIR, 8, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 8, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_DAIR, 8, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 8, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 8, HG_VISUAL_EFFECT, fx_plasma2);
set_hitbox_value(AT_DAIR, 8, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_DAIR, 8, HG_ANGLE_FLIPPER, 6);