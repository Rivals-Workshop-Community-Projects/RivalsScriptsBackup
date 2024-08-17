set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_crackle"));

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_FTILT, 2,  AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, sound_get("swing1"));
set_window_value(AT_FTILT, 3,  AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, sound_get("swing1"));
set_window_value(AT_FTILT, 4,  AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, sound_get("swing1"));
set_window_value(AT_FTILT, 5,  AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_SFX, sound_get("swing1"));
set_window_value(AT_FTILT, 6,  AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTILT, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_SFX, asset_get("sfx_frog_nspecial_shove"));
set_window_value(AT_FTILT, 8, AG_WINDOW_HAS_WHIFFLAG, 5);

set_window_value(AT_FTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FTILT, 9, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FTILT,5);

//Multihit 1
set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 86);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);

//Multihit 1 (Inner Hit)
set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 35);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);

//Multihit 2
set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 90);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 2);

//Multihit 3
set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 96);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 3);

//Finisher hit
set_hitbox_value(AT_FTILT, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 7);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 94);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 100);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 4);