//zap gun

set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));

//startup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

//scanning
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//whiff endlag
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 31);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_GOTO, 9);

//scan success
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 14);

//zap
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 27);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 16);

//final hit startup
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 25);

//final hit active
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 26);

//endlag
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 27);

set_num_hitboxes(AT_FSPECIAL_2, 23);

//scan early
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 97);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Scan Detection");
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, true);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 61);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -47);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Scan Detection");
set_hitbox_value(AT_FSPECIAL_2, 2, HG_IGNORES_PROJECTILES, true);

//scan late
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 92);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 34);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Scan Detection");
set_hitbox_value(AT_FSPECIAL_2, 3, HG_IGNORES_PROJECTILES, true);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 92);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 34);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_MUNO_HITBOX_NAME, "Scan Detection");
set_hitbox_value(AT_FSPECIAL_2, 4, HG_IGNORES_PROJECTILES, true);

//initial zap
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_WIDTH, 98);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HEIGHT, 66);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_KNOCKBACK_SCALING,  0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSPECIAL_2, 5, HG_VISUAL_EFFECT, zapgun_small);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_2, 5, HG_OVERTIME_CREDIT, 5);

set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_WIDTH, 52);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_ANGLE, 290);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_KNOCKBACK_SCALING,  0);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSPECIAL_2, 6, HG_VISUAL_EFFECT, zapgun_small);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL_2, 6, HG_OVERTIME_CREDIT, 5);

//zap multihits
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 3)
set_hitbox_value(AT_FSPECIAL_2, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_WIDTH, 98);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HEIGHT, 66);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_KNOCKBACK_SCALING,  0);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSPECIAL_2, 7, HG_VISUAL_EFFECT, zapgun_small);
set_hitbox_value(AT_FSPECIAL_2, 7, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_FSPECIAL_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_WIDTH, 52);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_ANGLE, 290);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_KNOCKBACK_SCALING,  0);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FSPECIAL_2, 8, HG_VISUAL_EFFECT, zapgun_small);
set_hitbox_value(AT_FSPECIAL_2, 8, HG_HITBOX_GROUP, 3);

//2
set_hitbox_value(AT_FSPECIAL_2, 9, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_WINDOW_CREATION_FRAME, 6)
set_hitbox_value(AT_FSPECIAL_2, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_2, 9, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_FSPECIAL_2, 10, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSPECIAL_2, 10, HG_HITBOX_GROUP, 4);

//3
set_hitbox_value(AT_FSPECIAL_2, 11, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSPECIAL_2, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 11, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 11, HG_WINDOW_CREATION_FRAME, 9)
set_hitbox_value(AT_FSPECIAL_2, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 11, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSPECIAL_2, 11, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_2, 11, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_FSPECIAL_2, 12, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FSPECIAL_2, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 12, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 12, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL_2, 12, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 12, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL_2, 12, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSPECIAL_2, 12, HG_HITBOX_GROUP, 5);

//4
set_hitbox_value(AT_FSPECIAL_2, 13, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSPECIAL_2, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 13, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 13, HG_WINDOW_CREATION_FRAME, 12)
set_hitbox_value(AT_FSPECIAL_2, 13, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 13, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSPECIAL_2, 13, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_2, 13, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_FSPECIAL_2, 14, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FSPECIAL_2, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 14, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 14, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL_2, 14, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 14, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL_2, 14, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSPECIAL_2, 14, HG_HITBOX_GROUP, 6);

//5
set_hitbox_value(AT_FSPECIAL_2, 15, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSPECIAL_2, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 15, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 15, HG_WINDOW_CREATION_FRAME, 15)
set_hitbox_value(AT_FSPECIAL_2, 15, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 15, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSPECIAL_2, 15, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_2, 15, HG_HITBOX_GROUP, 7);

set_hitbox_value(AT_FSPECIAL_2, 16, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FSPECIAL_2, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 16, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 16, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL_2, 16, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 16, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL_2, 16, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSPECIAL_2, 16, HG_HITBOX_GROUP, 7);

//6
set_hitbox_value(AT_FSPECIAL_2, 17, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSPECIAL_2, 17, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 17, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 17, HG_WINDOW_CREATION_FRAME, 18)
set_hitbox_value(AT_FSPECIAL_2, 17, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 17, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSPECIAL_2, 17, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_2, 17, HG_HITBOX_GROUP, 8);

set_hitbox_value(AT_FSPECIAL_2, 18, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FSPECIAL_2, 18, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 18, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 18, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_FSPECIAL_2, 18, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 18, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL_2, 18, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSPECIAL_2, 18, HG_HITBOX_GROUP, 8);

//7
set_hitbox_value(AT_FSPECIAL_2, 19, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSPECIAL_2, 19, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 19, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 19, HG_WINDOW_CREATION_FRAME, 21)
set_hitbox_value(AT_FSPECIAL_2, 19, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 19, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSPECIAL_2, 19, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_2, 19, HG_HITBOX_GROUP, 9);

set_hitbox_value(AT_FSPECIAL_2, 20, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FSPECIAL_2, 20, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 20, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 20, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_FSPECIAL_2, 20, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 20, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL_2, 20, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSPECIAL_2, 20, HG_HITBOX_GROUP, 9);

//8
set_hitbox_value(AT_FSPECIAL_2, 21, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSPECIAL_2, 21, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 21, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 21, HG_WINDOW_CREATION_FRAME, 24)
set_hitbox_value(AT_FSPECIAL_2, 21, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 21, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSPECIAL_2, 21, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_2, 21, HG_HITBOX_GROUP, 10);

set_hitbox_value(AT_FSPECIAL_2, 22, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FSPECIAL_2, 22, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 22, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 22, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_FSPECIAL_2, 22, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 22, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL_2, 22, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSPECIAL_2, 22, HG_HITBOX_GROUP, 10);

//final hit
set_hitbox_value(AT_FSPECIAL_2, 23, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_HITBOX_X, 72);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_WIDTH, 108);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_HEIGHT, 88);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_KNOCKBACK_SCALING,  0.6);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_EXTRA_HITPAUSE, 36);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_VISUAL_EFFECT, zapgun_big);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_FSPECIAL_2, 23, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 23, HG_OVERTIME_CREDIT, 5);
