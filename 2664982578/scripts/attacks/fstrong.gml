set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 13); 
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("Transform"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//attack
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 15);

//endlag
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, sound_get("Transform2"));
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX_FRAME, 5);

set_num_hitboxes(AT_FSTRONG, 5);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 94);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSTRONG, 1, HG_DRIFT_MULTIPLIER, 0.1);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 94);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSTRONG, 2, HG_DRIFT_MULTIPLIER, 0.1);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 94);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSTRONG, 3, HG_DRIFT_MULTIPLIER, 0.1);

set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 100);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 94);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 110);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSTRONG, 4, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_HITPAUSE, 12);

set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 68);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 140);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 8); 
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_SDI_MULTIPLIER, 1);