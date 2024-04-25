set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("fspec"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_SFX, sound_get("fspec_nine"));
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_FSPECIAL, 15);

// ONE
set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

// TWO
set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.8);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1.4);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// THREE
set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 155);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_birdclap"));

// FOUR
set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 48);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, sound_get("fspec_four"));

// FIVE
set_hitbox_value(AT_FSPECIAL, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 48);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));

set_hitbox_value(AT_FSPECIAL, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 60);

set_hitbox_value(AT_FSPECIAL, 8, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 8, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 8, HG_HEIGHT, 60);

set_hitbox_value(AT_FSPECIAL, 9, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 9, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 9, HG_HEIGHT, 60);

set_hitbox_value(AT_FSPECIAL, 10, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 10, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 10, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 10, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 10, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 10, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 10, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 10, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 10, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_FSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));

// SIX
set_hitbox_value(AT_FSPECIAL, 11, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 11, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 11, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 11, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 11, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 11, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 11, HG_ANGLE, 39);
set_hitbox_value(AT_FSPECIAL, 11, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 11, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 11, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_FSPECIAL, 11, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));

// SEVEN
set_hitbox_value(AT_FSPECIAL, 12, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 12, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 12, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 12, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 12, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 12, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 12, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 12, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 12, HG_ANGLE, 77);
set_hitbox_value(AT_FSPECIAL, 12, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSPECIAL, 12, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 12, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 12, HG_VISUAL_EFFECT, 310);
set_hitbox_value(AT_FSPECIAL, 12, HG_HIT_SFX, asset_get("sfx_gem_collect"));

// EIGHT
set_hitbox_value(AT_FSPECIAL, 13, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 13, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 13, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 13, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 13, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 13, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 13, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 13, HG_EFFECT, 5);
set_hitbox_value(AT_FSPECIAL, 13, HG_ANGLE, 77);
set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSPECIAL, 13, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 13, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_FSPECIAL, 13, HG_HIT_SFX, asset_get("sfx_war_horn"));

set_hitbox_value(AT_FSPECIAL, 14, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 14, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 14, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 14, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 14, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 14, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 14, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 14, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSPECIAL, 14, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 14, HG_EFFECT, 5);
set_hitbox_value(AT_FSPECIAL, 14, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 14, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, 14, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 14, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 14, HG_EXTRA_HITPAUSE, 50);
set_hitbox_value(AT_FSPECIAL, 14, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_FSPECIAL, 14, HG_HIT_SFX, asset_get("sfx_war_horn"));

// NINE
set_hitbox_value(AT_FSPECIAL, 15, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 15, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 15, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 15, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 15, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 15, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 15, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 15, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 15, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 15, HG_DAMAGE, 32);
set_hitbox_value(AT_FSPECIAL, 15, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 15, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSPECIAL, 15, HG_KNOCKBACK_SCALING, 1.9);
set_hitbox_value(AT_FSPECIAL, 15, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 15, HG_HITPAUSE_SCALING, 5);
set_hitbox_value(AT_FSPECIAL, 15, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_FSPECIAL, 15, HG_HIT_SFX, sound_get("home_run"));