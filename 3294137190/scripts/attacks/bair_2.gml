set_attack_value(AT_BAIR_2, AG_CATEGORY, 1);
set_attack_value(AT_BAIR_2, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR_2, AG_LANDING_LAG, 10);
set_attack_value(AT_BAIR_2, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR_2, 1, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_BAIR_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR_2, 1, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko2"));
set_window_value(AT_BAIR_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_BAIR_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR_2, 2, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_BAIR_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR_2, 2, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko1"));
set_window_value(AT_BAIR_2, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_BAIR_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR_2, 3, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_BAIR_2, 4, AG_WINDOW_LENGTH, 19);
set_window_value(AT_BAIR_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR_2, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_BAIR_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR_2, 9);

set_hitbox_value(AT_BAIR_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR_2, 1, HG_HITBOX_X, -54);
set_hitbox_value(AT_BAIR_2, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_BAIR_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_BAIR_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_BAIR_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_BAIR_2, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_BAIR_2, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_BAIR_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR_2, 2, HG_HITBOX_X, -94);
set_hitbox_value(AT_BAIR_2, 2, HG_HITBOX_Y, 25);
set_hitbox_value(AT_BAIR_2, 2, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_BAIR_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR_2, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR_2, 3, HG_HITBOX_X, -134);
set_hitbox_value(AT_BAIR_2, 3, HG_HITBOX_Y, 65);
set_hitbox_value(AT_BAIR_2, 3, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_BAIR_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR_2, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR_2, 4, HG_HITBOX_X, -54);
set_hitbox_value(AT_BAIR_2, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_BAIR_2, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR_2, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR_2, 5, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR_2, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR_2, 5, HG_HITBOX_X, -94);
set_hitbox_value(AT_BAIR_2, 5, HG_HITBOX_Y, 25);
set_hitbox_value(AT_BAIR_2, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR_2, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR_2, 6, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR_2, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR_2, 6, HG_HITBOX_X, -134);
set_hitbox_value(AT_BAIR_2, 6, HG_HITBOX_Y, 65);
set_hitbox_value(AT_BAIR_2, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_BAIR_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR_2, 7, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR_2, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR_2, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR_2, 7, HG_HITBOX_X, -54);
set_hitbox_value(AT_BAIR_2, 7, HG_HITBOX_Y, -15);
set_hitbox_value(AT_BAIR_2, 7, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR_2, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR_2, 7, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR_2, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR_2, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR_2, 7, HG_ANGLE, 90);
set_hitbox_value(AT_BAIR_2, 7, HG_ANGLE, 80);
set_hitbox_value(AT_BAIR_2, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR_2, 7, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR_2, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR_2, 7, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_BAIR_2, 7, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_BAIR_2, 7, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR_2, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR_2, 7, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_BAIR_2, 8, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_BAIR_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR_2, 8, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR_2, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR_2, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR_2, 8, HG_HITBOX_X, -94);
set_hitbox_value(AT_BAIR_2, 8, HG_HITBOX_Y, 25);
set_hitbox_value(AT_BAIR_2, 8, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_BAIR_2, 9, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_BAIR_2, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR_2, 9, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR_2, 9, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_BAIR_2, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR_2, 9, HG_HITBOX_X, -134);
set_hitbox_value(AT_BAIR_2, 9, HG_HITBOX_Y, 65);
set_hitbox_value(AT_BAIR_2, 9, HG_HITBOX_GROUP, 2);