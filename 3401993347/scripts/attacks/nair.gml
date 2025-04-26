set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 8);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_weak"));

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_weak"));

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_weak"));

set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_weak"));

set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_weak"));

set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 6);


set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, 0.1);


set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NAIR, 2, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 303);


set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 3, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NAIR, 3, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 0);


set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 4, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 4, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NAIR, 4, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 0);


set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 5, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 5, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, -2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 75);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NAIR, 5, HG_SDI_MULTIPLIER, 0.3);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 0);

// set_hitbox_value(AT_BAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 6, HG_EXTRA_HITPAUSE, -2);
set_hitbox_value(AT_NAIR, 6, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, -2);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 75);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 75);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 7);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
