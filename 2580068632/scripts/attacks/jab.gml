set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 8);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sfx_krtd_sword_swipe1);

//Swipe 1
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sfx_krtd_sword_swipe1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, 3);

//Swipe 2
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sfx_krtd_sword_swipe1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX_FRAME, 3);

//Swipe 3
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sfx_krtd_sword_swipe1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 4);

//Swipe 4
set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sfx_krtd_sword_swipe1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, sfx_smash_ult_sword_swing_medium_2);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 5);

set_hitbox_value(AT_JAB, 1, HG_MUNO_HITBOX_NAME, "Rapid Jab Hitbox 1");
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 25);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 1.3);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 1.3);
set_hitbox_value(AT_JAB, 3, HG_SDI_MULTIPLIER, 1.3);
set_hitbox_value(AT_JAB, 4, HG_SDI_MULTIPLIER, 1.3);

set_hitbox_value(AT_JAB, 2, HG_MUNO_HITBOX_NAME, "Rapid Jab Hitbox 2");
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 25);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 3, HG_MUNO_HITBOX_NAME, "Rapid Jab Hitbox 3");
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 41);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 78);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 25);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 4, HG_MUNO_HITBOX_NAME, "Rapid Jab Hitbox 3");
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 25);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
set_hitbox_value(AT_JAB, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 5, HG_MUNO_HITBOX_NAME, "Finishing Hitbox");
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -43);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 78);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 98);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 65);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sfx_smash_ult_sword_hit_medium);
set_hitbox_value(AT_JAB, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, -1);