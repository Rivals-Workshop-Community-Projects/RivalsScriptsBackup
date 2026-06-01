set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

// startup
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 6);

// active multihit 1
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// active multihit 2
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);

// active multihit 3
set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);

// endlag
set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

// 1st hit
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -48);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 68);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, vfx_thunder_small);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -22);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);

// 2nd hit
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -48);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 68);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, vfx_thunder_small);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -22);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_absa_cloud_pop"));
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 2);

// final hit
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_MUNO_HITBOX_NAME, "Finishing Hitbox");
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -48);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 68);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 76);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, vfx_thunder_big);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 3);