set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL, AG_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_FAF, "33 - 53 [104]");
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC, "Dependent on Blackjack meter, which is split by increments of 3. Value in brcakets for Blackjack meter 21");

set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 26);

//0-2
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_GOTO, 27);

//3-5
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_diamond_small_collect"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_GOTO, 27);

//6-8
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_diamond_small_collect"));
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_GOTO, 27);

//9-11
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX, asset_get("sfx_coin_collect"));
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_GOTO, 27);

//12-14
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_SFX, asset_get("sfx_coin_collect"));
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL, 14, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_DSPECIAL, 15, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_GOTO, 27);

//15-17
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_SFX, asset_get("sfx_diamond_collect"));
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL, 17, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_ANIM_FRAME_START, 27);

set_window_value(AT_DSPECIAL, 18, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_GOTO, 27);

//18-20
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_SFX, asset_get("sfx_diamond_collect"));
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL, 20, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_ANIM_FRAME_START, 27);

set_window_value(AT_DSPECIAL, 21, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 21, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 21, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_DSPECIAL, 21, AG_WINDOW_GOTO, 27);

//21
set_window_value(AT_DSPECIAL, 22, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 22, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 22, AG_WINDOW_ANIM_FRAME_START, 33);

set_window_value(AT_DSPECIAL, 23, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 23, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 23, AG_WINDOW_ANIM_FRAME_START, 38);
set_window_value(AT_DSPECIAL, 23, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 23, AG_WINDOW_SFX, asset_get("sfx_ell_arc_taunt_collide"));
set_window_value(AT_DSPECIAL, 23, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSPECIAL, 24, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 24, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 24, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 24, AG_WINDOW_ANIM_FRAME_START, 39);

set_window_value(AT_DSPECIAL, 25, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 25, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 25, AG_WINDOW_ANIM_FRAME_START, 39);

set_window_value(AT_DSPECIAL, 26, AG_WINDOW_LENGTH, 45);
set_window_value(AT_DSPECIAL, 26, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 26, AG_WINDOW_ANIM_FRAME_START, 39);


set_num_hitboxes(AT_DSPECIAL, 15);
//0-2
set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_NAME,  "0 - 2");
set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_ACTIVE,  "11 - 14");
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX,  asset_get("sfx_bubblepop"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 3); //6

//3-5
set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_NAME, "3 - 5");
set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_ACTIVE,  "11 - 14");
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX,  asset_get("sfx_may_arc_hit"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 3); //6

//6-8
set_hitbox_value(AT_DSPECIAL, 3, HG_MUNO_HITBOX_NAME, "6 - 8");
set_hitbox_value(AT_DSPECIAL, 3, HG_MUNO_HITBOX_ACTIVE,  "14 - 17");
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX,  asset_get("sfx_may_arc_hit"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 3); //6

//9-11
set_hitbox_value(AT_DSPECIAL, 4, HG_MUNO_HITBOX_NAME, "9 - 11");
set_hitbox_value(AT_DSPECIAL, 4, HG_MUNO_HITBOX_ACTIVE,  "15 - 18");
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 128);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 128);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX,  asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 3); //6

//12-14
set_hitbox_value(AT_DSPECIAL, 5, HG_MUNO_HITBOX_NAME, "12 - 14");
set_hitbox_value(AT_DSPECIAL, 5, HG_MUNO_HITBOX_ACTIVE,  "20 - 23");
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 14);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 140);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX,  asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 3); //6

//15-17
set_hitbox_value(AT_DSPECIAL, 6, HG_MUNO_HITBOX_NAME, "15 - 17 (Hit 1)");
set_hitbox_value(AT_DSPECIAL, 6, HG_MUNO_HITBOX_ACTIVE,  "14 - 17");
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 16);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 160);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 160);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX,  asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 6, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 7, HG_MUNO_HITBOX_NAME, "15 - 17 (Hit 2)");
set_hitbox_value(AT_DSPECIAL, 7, HG_MUNO_HITBOX_ACTIVE,  "18 - 21");
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 18);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 160);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 160);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX,  asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE_FLIPPER, 3); //6
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, 1);

//18-20
set_hitbox_value(AT_DSPECIAL, 8, HG_MUNO_HITBOX_NAME, "18 - 20 (Hit 1)");
set_hitbox_value(AT_DSPECIAL, 8, HG_MUNO_HITBOX_ACTIVE,  "18 - 21");
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 19);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 180);
set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 180);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX,  asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 8, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL, 9, HG_MUNO_HITBOX_NAME, "18 - 20 (Hit 2)");
set_hitbox_value(AT_DSPECIAL, 9, HG_MUNO_HITBOX_ACTIVE,  "22 - 27");
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 21);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 180);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 180);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX,  asset_get("sfx_absa_uair"));
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE_FLIPPER, 3); //6
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_GROUP, 1);

//21
set_hitbox_value(AT_DSPECIAL, 10, HG_MUNO_HITBOX_NAME, "21 (Multi)");
set_hitbox_value(AT_DSPECIAL, 10, HG_MUNO_HITBOX_ACTIVE, "29 - 57");
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 10, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 10, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 10, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 10, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 10, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_HIT_SFX,  asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 10, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSPECIAL, 10, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 10, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(AT_DSPECIAL, 11, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 11, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL, 11, HG_HEIGHT, 140);
set_hitbox_value(AT_DSPECIAL, 11, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 11, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 11, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 11, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_HIT_SFX,  asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL, 11, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 11, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSPECIAL, 11, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 11, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(AT_DSPECIAL, 12, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 12, HG_WIDTH, 180);
set_hitbox_value(AT_DSPECIAL, 12, HG_HEIGHT, 180);
set_hitbox_value(AT_DSPECIAL, 12, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 12, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 12, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 12, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 12, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_HIT_SFX,  asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL, 12, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 12, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSPECIAL, 12, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 12, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(AT_DSPECIAL, 13, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_DSPECIAL, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 13, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 13, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 13, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 13, HG_WIDTH, 240);
set_hitbox_value(AT_DSPECIAL, 13, HG_HEIGHT, 240);
set_hitbox_value(AT_DSPECIAL, 13, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 13, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 13, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 13, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 13, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 13, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 13, HG_HIT_SFX,  asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL, 13, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSPECIAL, 13, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 13, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 13, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSPECIAL, 13, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 13, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 13, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(AT_DSPECIAL, 14, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_DSPECIAL, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 14, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 14, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 14, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 14, HG_WIDTH, 310);
set_hitbox_value(AT_DSPECIAL, 14, HG_HEIGHT, 310);
set_hitbox_value(AT_DSPECIAL, 14, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 14, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 14, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 14, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 14, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 14, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 14, HG_HIT_SFX,  asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_DSPECIAL, 14, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_DSPECIAL, 14, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 14, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 14, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 14, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSPECIAL, 14, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_DSPECIAL, 14, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(AT_DSPECIAL, 15, HG_MUNO_HITBOX_NAME, "21 (Final)");
set_hitbox_value(AT_DSPECIAL, 15, HG_MUNO_HITBOX_ACTIVE, "58 - 63");
set_hitbox_value(AT_DSPECIAL, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 15, HG_WINDOW, 25);
set_hitbox_value(AT_DSPECIAL, 15, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 15, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 15, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL, 15, HG_WIDTH, 340);
set_hitbox_value(AT_DSPECIAL, 15, HG_HEIGHT, 340);
set_hitbox_value(AT_DSPECIAL, 15, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 15, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 15, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 15, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 15, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 15, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 15, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 15, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 15, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 15, HG_HIT_SFX,  asset_get("sfx_fish_collect"));
set_hitbox_value(AT_DSPECIAL, 15, HG_ANGLE_FLIPPER, 3); //6
set_hitbox_value(AT_DSPECIAL, 15, HG_HITBOX_GROUP, -1);