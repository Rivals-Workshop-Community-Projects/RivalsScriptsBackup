set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("smrpg_geno_stargun"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO, 5);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_GOTO, 7);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_GOTO, 7);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 8);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 130);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 3);

set_hitbox_value(AT_DSTRONG, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_TECHABLE, 3);



set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 130);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 30);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_TECHABLE, 3);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 15);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_TECHABLE, 3);

set_hitbox_value(AT_DSTRONG, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 45);
set_hitbox_value(AT_DSTRONG, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_TECHABLE, 3);



set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 140);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, sound_get("smrpg_geno_stargunfinish"));
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 3);



set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 150);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, sound_get("smrpg_geno_stargunfinish"));
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 3);