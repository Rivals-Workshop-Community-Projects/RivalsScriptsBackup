set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//charge
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 2);

//startup 1
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("pistol"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

//active 1
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//startup 2
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, sound_get("bamf"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 2);

//active 2
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);

//startup 3
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, sound_get("bamf"));
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX_FRAME, 2);

//active 3
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 11);

//end
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 21);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 5);

//launcher right
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 13);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 49);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 47);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 0);

//launcher left
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 49);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 47);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USTRONG, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 2, HG_DRIFT_MULTIPLIER, 0);

//pistol1
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -93);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 55);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 85);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 12);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 3, HG_DRIFT_MULTIPLIER, 0);

//pistol2
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 16);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -93);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 55);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 85);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 4, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 4, HG_DRIFT_MULTIPLIER, 0);

//pistol3
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 16);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -93);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 55);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 85);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 3);


