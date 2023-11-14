set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//Startup
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_syl_fstrong"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 6);

//Hit 1
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_syl_dstrong"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 3);

//Hit 2
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX, asset_get("sfx_may_root"));
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX_FRAME, 3);

//Hit 3
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);

//Endlag
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT,6);

//Hit 1 Initial Active
set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 120);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 160);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 1, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

//Hit 1 Late Active
set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 104);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 150);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 2, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);

//Hit 2 Initial Active
set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 90);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 90);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 150);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 3, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DTILT, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 2);

//Hit 2 Late Active
set_hitbox_value(AT_DTILT, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 70);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 80);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 56);
set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 150);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 4, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DTILT, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, 2);

//Hit 3 Close
set_hitbox_value(AT_DTILT, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 74);
set_hitbox_value(AT_DTILT, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 85);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_GROUP, 3);

//Hit 3 Far
set_hitbox_value(AT_DTILT, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 6, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_X, 54);
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 6, HG_WIDTH, 80);
set_hitbox_value(AT_DTILT, 6, HG_HEIGHT, 56);
set_hitbox_value(AT_DTILT, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 6, HG_ANGLE, 85);
set_hitbox_value(AT_DTILT, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DTILT, 6, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 6, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DTILT, 6, HG_HITBOX_GROUP, 3);