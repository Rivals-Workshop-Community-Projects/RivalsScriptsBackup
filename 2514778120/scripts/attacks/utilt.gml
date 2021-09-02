set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

sword_attack_spr[0, AT_UTILT] = sprite_get("sword0_utilt");
sword_attack_hurtbox_spr[0, AT_UTILT] = sprite_get("sword0_utilt_hurt");
sword_attack_can_move[0, AT_UTILT] = false

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ori_uptilt_single"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_GOTO, 13);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, asset_get("sfx_ori_uptilt_single"));
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

sword_window_min[0, AT_UTILT] = 7;
sword_window_max[0, AT_UTILT] = 12;

set_window_value(AT_UTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 7, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_UTILT, 7, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_UTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 9, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UTILT, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 10, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 10, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 11, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UTILT, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 12, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 12, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_UTILT,3);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 56);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 56);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 36);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 3);

sword_window_hitbox_min[0, AT_UTILT] = 4;
sword_window_hitbox_max[0, AT_UTILT] = 4;

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 4, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 9);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 160);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, fx_plasma2);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_UTILT, 4, HG_ANGLE_FLIPPER, 6);